using System;

/// <summary>Temporary sample credentials, using the site's built-in Forms Authentication.</summary>
public static class SampleAuthentication
{
    private const string PhoneNumber = "0123456789";
    private const string Password = "astrotalk123$";

    public static bool ValidateCredentials(string phoneNumber, string password)
    {
        return string.Equals(phoneNumber, PhoneNumber, StringComparison.Ordinal)
            && string.Equals(password, Password, StringComparison.Ordinal);
    }

}
