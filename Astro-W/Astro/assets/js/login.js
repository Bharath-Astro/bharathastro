(function () {
    'use strict';
    var form = document.querySelector('[data-auth-form]');
    if (!form) return;
    var buttons = Array.prototype.slice.call(form.querySelectorAll('button[type="submit"]'));
    var fields = Array.prototype.slice.call(form.querySelectorAll('[data-required]'));
    var submitting = false;
    buttons.forEach(function (button) { button.dataset.idle = button.textContent; });

    form.addEventListener('submit', function (event) {
        if (submitting) { event.preventDefault(); return; }
        var google = event.submitter && event.submitter.value === 'google';
        document.getElementById('authAction').value = google ? 'google' : 'password';
        document.getElementById('loginError').textContent = '';
        var firstInvalid = null;
        fields.forEach(function (field) {
            var message = '';
            if (!google) {
                if (!field.value.trim()) message = field.dataset.required;
                else if (field.dataset.email && (!/^[^\s@<>]+@[^\s@<>.]+(?:\.[^\s@<>.]+)+$/.test(field.value.trim()) || field.value.trim().length > 254))
                    message = 'Please enter a valid email address.';
                else if (field.dataset.password && (field.value.length < 12 || field.value.length > 128))
                    message = 'Use a password between 12 and 128 characters.';
                else if (field.dataset.confirm && field.value !== document.getElementById(field.dataset.confirm).value)
                    message = 'Passwords do not match.';
            }
            document.getElementById(field.dataset.error).textContent = message;
            field.setAttribute('aria-invalid', String(!!message));
            if (message && !firstInvalid) firstInvalid = field;
        });
        if (firstInvalid) { event.preventDefault(); firstInvalid.focus(); return; }
        submitting = true;
        buttons.forEach(function (button) {
            button.disabled = true;
            if (button === event.submitter) button.textContent = button.dataset.busy;
        });
        form.setAttribute('aria-busy', 'true');
    });

    window.addEventListener('pageshow', function () {
        submitting = false;
        buttons.forEach(function (button) { button.disabled = false; button.textContent = button.dataset.idle; });
        form.removeAttribute('aria-busy');
        document.getElementById('authAction').value = 'password';
    });
}());
