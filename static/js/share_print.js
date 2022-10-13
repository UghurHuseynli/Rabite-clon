let printButton = document.getElementById('print-button');
let shareButton = document.getElementById('share-button');
let shareModal = document.getElementById('share-modal');
let closeButton = document.getElementById('modal-close');

printButton.addEventListener('click', (e) => {
    window.print();
});

shareButton.addEventListener('click', (e) => {
    shareModal.classList.add('d-block');
});

closeButton.addEventListener('click', (e) => {
    shareModal.classList.remove('d-block');
});