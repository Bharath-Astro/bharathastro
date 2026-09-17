'use strict';
const fs = require('node:fs');
const vm = require('node:vm');
const assert = require('node:assert/strict');
const path = require('node:path');

function element(id, dataset = {}) {
    return { id, dataset, value: '', textContent: '', disabled: false, attributes: {},
        setAttribute(name, value) { this.attributes[name] = value; },
        removeAttribute(name) { delete this.attributes[name]; },
        focus() { this.focused = true; } };
}
const fields = [
    element('email', { required: 'Email required', email: 'true', error: 'emailError' }),
    element('password', { required: 'Password required', password: 'true', error: 'passwordError' }),
    element('confirmPassword', { required: 'Confirmation required', confirm: 'password', error: 'confirmError' })
];
const buttons = [element('create', { busy: 'Creating...' }), element('google', { busy: 'Connecting...' })];
buttons[0].textContent = 'Create Account'; buttons[1].textContent = 'Continue with Google'; buttons[1].value = 'google';
const elements = Object.fromEntries(fields.map(field => [field.id, field]));
for (const id of ['authAction', 'emailError', 'passwordError', 'confirmError', 'loginError']) elements[id] = element(id);
const listeners = {};
const form = element('form');
form.querySelectorAll = selector => selector.includes('button') ? buttons : fields;
form.addEventListener = (event, callback) => { listeners[event] = callback; };
vm.runInNewContext(fs.readFileSync(path.join(__dirname, '../Astro-W/Astro/assets/js/login.js'), 'utf8'), {
    document: { querySelector: () => form, getElementById: id => elements[id] },
    window: { addEventListener: (event, callback) => { listeners[event] = callback; } }
});
function submit(button = buttons[0]) {
    let prevented = false;
    listeners.submit({ submitter: button, preventDefault() { prevented = true; } });
    return prevented;
}
assert.equal(submit(), true);
assert.equal(fields[0].attributes['aria-invalid'], 'true');
fields[0].value = 'not-an-email'; fields[1].value = 'long-enough-password'; fields[2].value = 'different-password';
assert.equal(submit(), true);
assert.match(elements.emailError.textContent, /valid email/);
assert.match(elements.confirmError.textContent, /do not match/);
fields[0].value = 'test@example.invalid'; fields[2].value = fields[1].value;
assert.equal(submit(), false);
assert.ok(buttons.every(button => button.disabled));
assert.equal(form.attributes['aria-busy'], 'true');
assert.equal(submit(), true);
listeners.pageshow();
assert.ok(buttons.every(button => !button.disabled));
fields.forEach(field => { field.value = ''; });
assert.equal(submit(buttons[1]), false, 'Google must not require email/password fields');
assert.equal(elements.authAction.value, 'google');
assert.equal(submit(buttons[1]), true, 'Duplicate Google submissions must be blocked');
console.log('PASS: client validation, password confirmation, busy states, duplicate submissions, Google action, and history reset.');
