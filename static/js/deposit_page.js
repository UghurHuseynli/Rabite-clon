let slider = document.getElementById('rangeFloating');
let output = document.getElementById('floatingInput');
let menuButton = document.querySelectorAll('.menuButton');
let jsCheck = document.querySelectorAll('.js-data-check');
let interestButton = document.querySelectorAll('.faiz-button');
let calculatorType = document.getElementById('js-calculator-type');
let monthTime = document.getElementById('select-time');
let interestDegree = document.getElementById('interest-degree');
let interestPayment = document.getElementById('interest-payment-money');
let interestMoneyAll = document.getElementById('interest-money-all');

range_val = parseInt(slider.value);

interestMoneyAll.textContent =  calculateDeposit(interestDegree.value, monthTime.value, range_val);
interestPayment.textContent = calculateDeposit(interestDegree.value, monthTime.value, range_val) - range_val;

output.value = slider.value;

slider.oninput = function(){
    output.value = this.value;
    range_val = parseInt(this.value);
    interestMoneyAll.textContent =  Math.round(calculateDeposit(interestDegree.value, monthTime.value, range_val) * 100) / 100;
    interestPayment.textContent = Math.round((calculateDeposit(interestDegree.value, monthTime.value, range_val) - range_val) * 100) / 100;
}
function changeColor(){
    slider.addEventListener('mousemove', function(){
        let x = slider.value/10000;
        let color = 'linear-gradient(90deg, rgb(110, 187, 32)' + x + '%, rgb(214, 214, 214)' + x + '%)';
        slider.style.background = color;
    })
};

function changeNumber(){
    output.addEventListener('input', (e) => {
        let val = parseInt(output.value);
        if(val >= 1000000){
            val = 1000000
        }
        slider.value = val;
        let color = 'linear-gradient(90deg, rgb(110, 187, 32)' + val/10000 + '%, rgb(214, 214, 214)' + val/10000 + '%)';
        slider.style.background = color;
        interestMoneyAll.textContent =  Math.round(calculateDeposit(interestDegree.value, monthTime.value, val) * 100) / 100;
        interestPayment.textContent = Math.round((calculateDeposit(interestDegree.value, monthTime.value, val) - val) * 100) / 100;
    })
};

changeColor();
changeNumber();

jsCheck.forEach(data=>{
    if(data.dataset.menuCheck != 'Məhsul haqqında'){
        data.classList.add('d-none');
    } else{
        data.classList.remove('d-none');
    }
});

menuButton.forEach(buttons =>{
    buttons.addEventListener('click', (e)=>{
        let dataName = buttons.dataset.menuName;
        jsCheck.forEach(data =>{
            if(data.dataset.menuCheck != dataName){
                data.classList.add('d-none');
            } else{
                data.classList.remove('d-none');
            }
        });
    })
});


function calculateDeposit(int, month, money){
    let result = money + ((money * int) / 100) * (month / 12);
    return result
}

monthTime.addEventListener('change', (e) => {
    interestMoneyAll.textContent =  Math.round(calculateDeposit(interestDegree.value, monthTime.value, range_val) * 100) / 100;
    interestPayment.textContent = Math.round((calculateDeposit(interestDegree.value, monthTime.value, range_val) - range_val) * 100) / 100;
});

interestDegree.addEventListener('change', (e) => {
    interestMoneyAll.textContent =  Math.round(calculateDeposit(interestDegree.value, monthTime.value, range_val) * 100) / 100;
    interestPayment.textContent = Math.round((calculateDeposit(interestDegree.value, monthTime.value, range_val) - range_val) * 100) / 100;
})
