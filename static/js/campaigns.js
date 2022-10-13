allButton = document.getElementById('all-button');
credit = document.getElementById('loan');
deposit = document.getElementById('deposits');
d_emlak = document.getElementById('d_emlak');
bisness = document.getElementById('bisness');
tikinti = document.getElementById('tikinti');
vehicle = document.getElementById('vehicle');
card = document.getElementById('card');

pushingSection = document.getElementById('pushing-div');
noContent = document.querySelector('.no-content');

buttonList = [allButton, credit, deposit, d_emlak, bisness, tikinti, vehicle, card];

allButton.style.backgroundColor = '#6ebb20';
allButton.style.color = '#fff';

allButton.addEventListener('click', (e) => {
    noContent.className = 'no-content d-none';
    buttonList.forEach(element => {
        element.style = '';
    });
    allButton.style.backgroundColor = '#6ebb20';
    allButton.style.color = '#fff';

    let num = 0;
    [...pushingSection.children].forEach(element => {
        element.className = 'card-eleement bg-color-card p-2rem hover-ele d-flex w--48';
        num += 1;
    });
    if (num == 0) {
        noContent.className = 'no-content';
    }
});

credit.addEventListener('click', (e) => {
    noContent.className = 'no-content d-none';

    buttonList.forEach(element => {
        element.style = '';
    });
    credit.style.backgroundColor = '#6ebb20';
    credit.style.color = '#fff';

    let num = 0;
    [...pushingSection.children].forEach(element => {
        element.className = 'd-none';
        if (element.dataset.type == 'kredit') {
            element.className = 'card-eleement bg-color-card p-2rem hover-ele d-flex w--48';
            num += 1;
        }
    })
    if (num == 0) {
        noContent.className = 'no-content';
    }
});



deposit.addEventListener('click', (e) => {
    noContent.className = 'no-content d-none';

    buttonList.forEach(element => {
        element.style = '';
    });
    deposit.style.backgroundColor = '#6ebb20';
    deposit.style.color = '#fff';

    let num = 0;
    [...pushingSection.children].forEach(element => {
        element.className = 'd-none';
        if (element.dataset.type == 'emanet') {
            element.className = 'card-eleement bg-color-card p-2rem hover-ele d-flex w--48';
            num += 1;
        }
    })
    if (num == 0) {
        noContent.classList = 'no-content';
    }
});

d_emlak.addEventListener('click', (e) => {
    noContent.className = 'no-content d-none';

    buttonList.forEach(element => {
        element.style = '';
    });
    d_emlak.style.backgroundColor = '#6ebb20';
    d_emlak.style.color = '#fff';

    let num = 0;
    [...pushingSection.children].forEach(element => {
        element.className = 'd-none';
        if (element.dataset.type == 'd-emlak') {
            element.className = 'card-eleement bg-color-card p-2rem hover-ele d-flex w--48';
            num += 1;
        }
    })
    if (num == 0) {
        noContent.className = 'no-content';
    }
});

bisness.addEventListener('click', (e) => {
    noContent.className = 'no-content d-none';

    buttonList.forEach(element => {
        element.style = '';
    });
    bisness.style.backgroundColor = '#6ebb20';
    bisness.style.color = '#fff';

    let num = 0;
    [...pushingSection.children].forEach(element => {
        element.className = 'd-none';
        if (element.dataset.type == 'b-inkisaf') {
            element.className = 'card-eleement bg-color-card p-2rem hover-ele d-flex w--48';
            num += 1;
        }
    })
    if (num == 0) {
        noContent.className = 'no-content';
    }
});

tikinti.addEventListener('click', (e) => {
    noContent.className = 'no-content d-none';

    buttonList.forEach(element => {
        element.style = '';
    });
    tikinti.style.backgroundColor = '#6ebb20';
    tikinti.style.color = '#fff';

    let num = 0;
    [...pushingSection.children].forEach(element => {
        element.className = 'd-none';
        if (element.dataset.type == 'tikinti') {
            element.className = 'card-eleement bg-color-card p-2rem hover-ele d-flex w--48';
            num += 1;
        }
    })
    if (num == 0) {
        noContent.className = 'no-content';
    }
});

vehicle.addEventListener('click', (e) => {
    noContent.className = 'no-content d-none';

    buttonList.forEach(element => {
        element.style = '';
    });
    vehicle.style.backgroundColor = '#6ebb20';
    vehicle.style.color = '#fff';

    let num = 0;
    [...pushingSection.children].forEach(element => {
        element.className = 'd-none';
        if (element.dataset.type == 'neqliyyat') {
            element.className = 'card-eleement bg-color-card p-2rem hover-ele d-flex w--48';
            num += 1;
        }
    })
    if (num == 0) {
        noContent.className = 'no-content';
    }
});

card.addEventListener('click', (e) => {
    noContent.className = 'no-content d-none';

    buttonList.forEach(element => {
        element.style = '';
    });
    card.style.backgroundColor = '#6ebb20';
    card.style.color = '#fff';

    let num = 0;
    [...pushingSection.children].forEach(element => {
        element.className = 'd-none';
        if (element.dataset.type == 'kart') {
            element.className = 'card-eleement bg-color-card p-2rem hover-ele d-flex w--48';
            num += 1;
        }
    })
    if (num == 0) {
        noContent.className = 'no-content';
    }
});