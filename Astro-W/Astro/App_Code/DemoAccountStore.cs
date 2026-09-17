using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text.RegularExpressions;
using System.Web;

/// <summary>
/// Local, single-server demo storage. Replace this adapter with a configured account
/// service before production. No legacy CustomerInfo rows or plaintext passwords are used.
/// </summary>
public sealed class DemoAccountStore
{
    private static readonly object Sync = new object();
    private const int Iterations = 600000;
    private readonly string path;

    public DemoAccountStore(string filePath) { path = filePath; }

    public static DemoAccountStore Current
    {
        get
        {
            string configured = Environment.GetEnvironmentVariable("ASTRO_DEMO_ACCOUNTS_PATH");
            return new DemoAccountStore(string.IsNullOrWhiteSpace(configured)
                ? HttpContext.Current.Server.MapPath("~/App_Data/demo-accounts.json") : configured);
        }
    }

    public static bool ValidEmail(string email)
    {
        return !string.IsNullOrWhiteSpace(email) && email.Trim().Length <= 254
            && Regex.IsMatch(email.Trim(), @"\A[^\s@<>]+@[^\s@<>.]+(?:\.[^\s@<>.]+)+\z");
    }

    public static string PasswordError(string password)
    {
        if (string.IsNullOrWhiteSpace(password)) return "Please enter your password.";
        return password.Length < 12 || password.Length > 128 ? "Use a password between 12 and 128 characters." : "";
    }

    public string Register(string email, string password)
    {
        if (!ValidEmail(email) || PasswordError(password) != "") throw new ArgumentException("Invalid account details.");
        email = email.Trim().ToLowerInvariant();
        byte[] salt = new byte[16];
        using (var rng = RandomNumberGenerator.Create()) rng.GetBytes(salt);
        var account = new Account
        {
            Id = Guid.NewGuid().ToString("N"), Email = email, Provider = "email",
            Salt = Convert.ToBase64String(salt), PasswordHash = Hash(password, salt, Iterations),
            Iterations = Iterations
        };
        lock (Sync)
        {
            var accounts = Read();
            if (accounts.Any(a => a.Provider == "email" && a.Email == email))
                throw new AccountExistsException();
            accounts.Add(account);
            Write(accounts);
        }
        return "account:" + account.Id;
    }

    public string Authenticate(string email, string password)
    {
        if (!ValidEmail(email) || string.IsNullOrEmpty(password) || password.Length > 128) return null;
        Account account;
        lock (Sync) account = Read().FirstOrDefault(a => a.Provider == "email" && a.Email == email.Trim().ToLowerInvariant());
        // Do the expensive hash even for an unknown email.
        string computed = Hash(password, account == null ? new byte[16] : Convert.FromBase64String(account.Salt),
            account == null ? Iterations : account.Iterations);
        return account != null && FixedEquals(computed, account.PasswordHash) ? "account:" + account.Id : null;
    }

    public string GetOrCreateGoogle(string subject, string email)
    {
        if (string.IsNullOrWhiteSpace(subject) || subject.Length > 255 || !ValidEmail(email))
            throw new ArgumentException("Invalid Google identity.");
        lock (Sync)
        {
            var accounts = Read();
            // Google's stable subject is the identity. Never auto-link by matching email.
            var account = accounts.FirstOrDefault(a => a.Provider == "google" && a.Subject == subject);
            if (account == null)
            {
                account = new Account { Id = Guid.NewGuid().ToString("N"), Provider = "google", Subject = subject, Email = email.Trim().ToLowerInvariant() };
                accounts.Add(account);
                Write(accounts);
            }
            return "account:" + account.Id;
        }
    }

    private List<Account> Read()
    {
        if (!File.Exists(path)) return new List<Account>();
        var accounts = JsonConvert.DeserializeObject<List<Account>>(File.ReadAllText(path));
        if (accounts == null) throw new IOException("Account store is invalid.");
        return accounts;
    }

    private void Write(List<Account> accounts)
    {
        Directory.CreateDirectory(Path.GetDirectoryName(Path.GetFullPath(path)));
        string temporary = path + "." + Guid.NewGuid().ToString("N") + ".tmp";
        try
        {
            File.WriteAllText(temporary, JsonConvert.SerializeObject(accounts, Formatting.Indented));
            if (File.Exists(path)) File.Replace(temporary, path, null);
            else File.Move(temporary, path);
        }
        finally { if (File.Exists(temporary)) File.Delete(temporary); }
    }

    private static string Hash(string password, byte[] salt, int iterations)
    {
        using (var derive = new Rfc2898DeriveBytes(password, salt, iterations, HashAlgorithmName.SHA256))
            return Convert.ToBase64String(derive.GetBytes(32));
    }

    private static bool FixedEquals(string left, string right)
    {
        int difference = left.Length ^ right.Length;
        for (int i = 0; i < Math.Min(left.Length, right.Length); i++) difference |= left[i] ^ right[i];
        return difference == 0;
    }

    private sealed class Account
    {
        public string Id { get; set; }
        public string Email { get; set; }
        public string Provider { get; set; }
        public string Subject { get; set; }
        public string Salt { get; set; }
        public string PasswordHash { get; set; }
        public int Iterations { get; set; }
    }
}

public sealed class AccountExistsException : Exception { }
