(function () {
    'use strict';

    var form = document.getElementById('loginForm');
    var button = document.getElementById('loginButton');
    var phone = document.getElementById('phoneNumber');
    var password = document.getElementById('password');
    var submitting = false;

    form.addEventListener('submit', function (event) {
        if (submitting) {
            event.preventDefault();
            return;
        }

        var phoneMissing = !phone.value.trim();
        var passwordMissing = !password.value.trim();
        document.getElementById('phoneError').textContent = phoneMissing ? 'Please enter your phone number.' : '';
        document.getElementById('passwordError').textContent = passwordMissing ? 'Please enter your password.' : '';
        document.getElementById('loginError').textContent = '';
        phone.setAttribute('aria-invalid', String(phoneMissing));
        password.setAttribute('aria-invalid', String(passwordMissing));

        if (phoneMissing || passwordMissing) {
            event.preventDefault();
            (phoneMissing ? phone : password).focus();
            return;
        }

        submitting = true;
        button.disabled = true;
        button.textContent = 'Logging in\u2026';
        form.setAttribute('aria-busy', 'true');
    });

    window.addEventListener('pageshow', function () {
        submitting = false;
        button.disabled = false;
        button.textContent = 'Login';
        form.removeAttribute('aria-busy');
    });
}());
