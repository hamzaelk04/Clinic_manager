function togglePasswordVisibility(fieldId, iconId) {
    const input = document.getElementById(fieldId);
    const icon = document.getElementById(iconId);
    if (!input || !icon) return;

    if (input.type === 'password') {
        input.type = 'text';
        icon.innerText = 'visibility_off';
    } else {
        input.type = 'password';
        icon.innerText = 'visibility';
    }
}

function validatePassword(value) {
    const m1 = document.getElementById('meter1');
    const m2 = document.getElementById('meter2');
    const m3 = document.getElementById('meter3');
    const m4 = document.getElementById('meter4');
    const label = document.getElementById('strengthLabel');

    const reqLen = document.getElementById('req-len');
    const reqUpper = document.getElementById('req-upper');
    const reqNum = document.getElementById('req-num');
    const reqSym = document.getElementById('req-sym');

    const hasLen = value.length >= 8;
    const hasUpper = /[A-Z]/.test(value);
    const hasNum = /[0-9]/.test(value);
    const hasSym = /[^A-Za-z0-9]/.test(value);

    updateReqBadge(reqLen, hasLen);
    updateReqBadge(reqUpper, hasUpper);
    updateReqBadge(reqNum, hasNum);
    updateReqBadge(reqSym, hasSym);

    let score = 0;
    if (hasLen) score++;
    if (hasUpper) score++;
    if (hasNum) score++;
    if (hasSym) score++;

    const meters = [m1, m2, m3, m4];
    meters.forEach((meter) => {
        meter.className = 'h-full w-1/4 bg-surface-container-highest transition-all duration-300';
    });

    if (score === 0) {
        label.innerText = 'Enter password';
        label.className = 'font-label-sm text-label-sm font-semibold text-outline';
    } else if (score <= 1) {
        m1.className = 'h-full w-1/4 bg-error transition-all duration-300';
        label.innerText = 'Weak';
        label.className = 'font-label-sm text-label-sm font-semibold text-error';
    } else if (score <= 3) {
        m1.className = 'h-full w-1/4 bg-tertiary-container transition-all duration-300';
        m2.className = 'h-full w-1/4 bg-tertiary-container transition-all duration-300';
        if (score === 3) m3.className = 'h-full w-1/4 bg-tertiary-container transition-all duration-300';
        label.innerText = 'Moderate';
        label.className = 'font-label-sm text-label-sm font-semibold text-tertiary';
    } else {
        meters.forEach(m => m.className = 'h-full w-1/4 bg-secondary transition-all duration-300');
        label.innerText = 'Strong & Secure';
        label.className = 'font-label-sm text-label-sm font-semibold text-secondary';
    }

    checkPasswordMatch();
}

function updateReqBadge(element, isValid) {
    if (!element) return;
    const icon = element.querySelector('.material-symbols-outlined');
    if (isValid) {
        element.classList.remove('text-outline');
        element.classList.add('text-secondary', 'font-medium');
        if (icon) {
            icon.innerText = 'check_circle';
            icon.classList.add('text-secondary');
        }
    } else {
        element.classList.remove('text-secondary', 'font-medium');
        element.classList.add('text-outline');
        if (icon) {
            icon.innerText = 'radio_button_unchecked';
            icon.classList.remove('text-secondary');
        }
    }
}

function checkPasswordMatch() {
    const p1 = document.getElementById('patientPass').value;
    const p2 = document.getElementById('confirmPass').value;
    const matchStatus = document.getElementById('matchStatus');

    if (!matchStatus) return;

    if (p2.length > 0 && p1 === p2) {
        matchStatus.classList.remove('hidden', 'text-error');
        matchStatus.classList.add('text-secondary');
        matchStatus.innerText = 'Passwords match';
    } else if (p2.length > 0 && p1 !== p2) {
        matchStatus.classList.remove('hidden', 'text-secondary');
        matchStatus.classList.add('text-error');
        matchStatus.innerText = 'Passwords do not match';
    } else {
        matchStatus.classList.add('hidden');
    }
}

// Email format visual feedback
document.addEventListener('DOMContentLoaded', () => {
    const emailInput = document.getElementById('patientEmail');
    const emailCheck = document.getElementById('emailCheck');
    if (emailInput && emailCheck) {
        emailInput.addEventListener('input', (e) => {
            const val = e.target.value;
            if (val.includes('@') && val.includes('.') && val.length > 5) {
                emailCheck.classList.remove('hidden');
            } else {
                emailCheck.classList.add('hidden');
            }
        });
    }
});