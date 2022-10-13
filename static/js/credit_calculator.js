let month = document.getElementById('myRange1');
let money = document.getElementById('myRange2');
let interest = document.getElementById('myRange3');
let allMoney = document.getElementById('all-money-add');
let interestMoney = document.getElementById('interest-money-add');
let monthly_payment = document.getElementById('monthly-payment');
let x;
let monthly;


month_val = month.value;
money_val = money.value;
interest_val = interest.value / 1000;
x = parseFloat(Math.pow(1 + interest_val, parseFloat(month_val)));
monthly = (parseFloat(money_val) * x * interest_val) / (x-1);
monthly_payment.textContent = Math.floor(monthly)
interestMoney.textContent = Math.floor(monthly) * month_val - money_val;
allMoney.textContent = Math.floor(monthly) * month_val


month.addEventListener('input', (e)=>{
    month_val = month.value;
    x = parseFloat(Math.pow(1 + interest_val, parseFloat(month_val)));
    monthly = (parseFloat(money_val) * x * interest_val) / (x-1);
    monthly_payment.textContent = Math.floor(monthly)
    interestMoney.textContent = Math.floor(monthly) * month_val - money_val;
    allMoney.textContent = Math.floor(monthly) * month_val
});

money.addEventListener('input', (e)=>{
    money_val = money.value;
    x = parseFloat(Math.pow(1 + interest_val, parseFloat(month_val)));
    monthly = (parseFloat(money_val) * x * interest_val) / (x-1);
    x = parseFloat(Math.pow(1 + interest_val, parseFloat(month_val)));
    monthly = (parseFloat(money_val) * x * interest_val) / (x-1);
    monthly_payment.textContent = Math.floor(monthly)
    interestMoney.textContent = Math.floor(monthly) * month_val - money_val;
    allMoney.textContent = Math.floor(monthly) * month_val
});

interest.addEventListener('input', (e)=>{
    interest_val = interest.value / 1000;
    x = parseFloat(Math.pow(1 + interest_val, parseFloat(month_val)));
    monthly = (parseFloat(money_val) * x * interest_val) / (x-1);
    x = parseFloat(Math.pow(1 + interest_val, parseFloat(month_val)));
    monthly = (parseFloat(money_val) * x * interest_val) / (x-1);
    monthly_payment.textContent = Math.floor(monthly)
    interestMoney.textContent = Math.floor(monthly) * month_val - money_val;
    allMoney.textContent = Math.floor(monthly) * month_val
});


