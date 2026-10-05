// FAQ accordion
function toggleFaq(button) {
    const content = button.nextElementSibling;
    const icon = button.querySelector('.material-symbols-outlined');
    const wasHidden = content.classList.contains('hidden');
    document.querySelectorAll('#faq-container .faq-body').forEach(el => el.classList.add('hidden'));
    document.querySelectorAll('#faq-container .faq-icon').forEach(el => el.style.transform = 'rotate(0deg)');
    if (wasHidden) { content.classList.remove('hidden'); icon.style.transform = 'rotate(180deg)'; }
}

// Toast (used for flash messages from the server)
function showToast(message) {
    const toast = document.getElementById('booking-toast');
    if (!toast) return;
    document.getElementById('toast-message').innerText = message;
    toast.classList.remove('translate-y-24', 'opacity-0', 'pointer-events-none');
    setTimeout(() => toast.classList.add('translate-y-24', 'opacity-0', 'pointer-events-none'), 3500);
}
