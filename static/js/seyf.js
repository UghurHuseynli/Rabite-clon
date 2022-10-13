let seyfTableAdd = document.querySelectorAll('#seyf-section >tr');
let seyfButton = document.querySelectorAll('.seyf-button');

seyfTableAdd.forEach(row =>{
    if(row.dataset.typeSeyf == 'Baş ofis'){
        row.classList.remove('d-none');
    } else{
        row.classList.add('d-none');
    }
})


seyfButton.forEach(btn =>{
    btn.addEventListener('click', (e)=>{
        let interestButtonActive = document.querySelector('.faiz-button-active');
        interestButtonActive.classList.remove('faiz-button-active');
        btn.classList.add('faiz-button-active');
        seyfTableAdd.forEach(row =>{
            if(row.dataset.typeSeyf == btn.textContent){
                row.classList.remove('d-none');
            } else{
                row.classList.add('d-none');
            }
        })
    })
});