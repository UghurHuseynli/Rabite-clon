from datetime import datetime
from app import app
from flask import flash, render_template, redirect, url_for, request
from flask_login import current_user, login_user, logout_user
from werkzeug.security import generate_password_hash, check_password_hash
from forms import *
from models import *
import requests
import xmltodict


@app.errorhandler(404)
def page_not_found(e):
    return render_template('404.html'), 404

@app.route('/fərdi-əmanət', methods = ['GET', 'POST'])
def individual_deposit():
    deposits = Deposit.query.all()
    form = Deposit_offer_form(request.form)
    form.deposit_type.choices =[(dep.d_name, dep.d_name) for dep in deposits]

    if request.method == "POST" and form.validate():
        offer = Deposit_offer(name = form.user_name.data, surname = form.user_lastname.data, phone = form.user_phone.data, deposit_type = form.deposit_type.data)
        offer.save()
        flash(message='Sifarişiniz qeydə alındı', category='success')
        return redirect(url_for('individual_deposit', form = form))
    
    return render_template('deposit.html', deposits = deposits, form = form)

@app.route('/əmanət/<string:name>', methods = ['GET', 'POST'])
def deposit_page(name):
    if name == 'universal-emanet':
        deposit_idd = Deposit.query.filter(Deposit.detail_slug == name).first_or_404().id;
        deposit = Deposit.query.filter(Deposit.id == deposit_idd).first()

        requier_ = Requier.query.filter(Requier.deposit_id == deposit_idd).all()
        menu = D_menu.query.filter(D_menu.deposit_id == deposit_idd).all()
        conditions = D_conditions.query.filter(D_conditions.deposit_id == deposit_idd).all()
        d_xitam = D_xitam.query.filter(D_xitam.deposit_id == deposit_idd).all()
        campaings = Campaigns.query.all()
        interest_time = ''
        if request.method == 'POST':
            if request.form['select_menu_button'] == 'end':
                interest_time = Interest_end.query.filter(Interest_end.deposit_id == deposit_idd).all()
            elif request.form['select_menu_button'] == 'monthly':
                interest_time = Interest_monthly.query.filter(Interest_monthly.deposit_id == deposit_idd).all()
            elif request.form['select_menu_button'] == 'quarterly':
                interest_time = Interest_quarterly.query.filter(Interest_quarterly.deposit_id == deposit_idd).all()
        else:
            interest_time = Interest_end.query.filter(Interest_end.deposit_id == deposit_idd).all()
        return render_template('deposit_page.html', deposit = deposit, menu = menu, conditions = conditions, interest_time = interest_time, d_xitam = d_xitam, requier_ = requier_, camp = campaings)

    elif name == 'saxlanc-seyfleri':
        deposit_idd = Deposit.query.filter(Deposit.detail_slug == name).first_or_404().id;
        deposit = Deposit.query.filter(Deposit.id == deposit_idd).first()

        main_office = Main_office.query.filter(Main_office.deposit_id == deposit_idd).all()
        main_branch = Main_branch.query.filter(Main_branch.deposit_id == deposit_idd).all()
        nesimi_branch = Nesimi_branch.query.filter(Nesimi_branch.deposit_id == deposit_idd).all()
        nerimanov_branch = Nerimanov_branch.query.filter(Nerimanov_branch.deposit_id == deposit_idd).all()

        return render_template('seyfler.html', deposit = deposit, main_office = main_office, main_branch = main_branch, nesimi_branch = nesimi_branch, nerimanov_branch = nerimanov_branch)

    else:
        deposit_idd = Deposit.query.filter(Deposit.detail_slug == name).first_or_404().id;
        deposit = Deposit.query.filter(Deposit.id == deposit_idd).first()

        requier_ = Requier.query.filter(Requier.deposit_id == deposit_idd).all()
        menu = D_menu.query.filter(D_menu.deposit_id == deposit_idd).all()
        conditions = D_conditions.query.filter(D_conditions.deposit_id == deposit_idd).all()
        d_xitam = D_xitam.query.filter(D_xitam.deposit_id == deposit_idd).all()
        campaings = Campaigns.query.all()
        return render_template('deposit_page.html', deposit = deposit, menu = menu, conditions = conditions, requier_ = requier_, camp = campaings)

@app.route('/kampaniyalar')
def campaigns():
    campaings = Campaigns.query.all()
    return render_template('campaigns.html', camp = campaings)

@app.route('/card-offer', methods = ['GET', 'POST'])
def card_offer():
    form = Card_offer_form(request.form)
    form.card_name.choices = [(name_.name, name_.name) for name_ in Card_name.query.all()]
    form.card_type.choices = [(type_.type_name, type_.type_name) for type_ in Card_type.query.all()]
    form.card_currency.choices = [(currency_.currency_name, currency_.currency_name) for currency_ in Card_currency.query.all()]
    form.card_use_time.choices = [(time_.currency_time, time_.currency_time) for time_ in Card_use_time.query.all()]
    form.card_office.choices = [(office_.card_office, office_.card_office) for office_ in Card_office.query.all()]

    if request.method == 'POST' and form.validate():
        card = Card_offer(card_name = form.card_name.data, card_type =  form.card_type.data, card_currency =  form.card_currency.data, card_use_time = form.card_use_time.data, card_office = form.card_office.data, user_name = form.user_name.data, user_lastname = form.user_lastname.data, user_email = form.user_email.data, user_phone = form.user_phone.data, front_img = form.front_img.data, back_img = form.back_img.data)
        card.save()
        flash('Sifarişiniz qeydə alındı', 'success')
        return redirect(url_for('homepage'))
    
    return render_template('card-offer.html', form = form)
    
@app.route('/register', methods=['GET', 'POST'])
def register():
    form = Register_Form(request.form)
    if request.method == "POST" and form.validate():
        password_ = generate_password_hash(form.password.data)
        user = User(name = form.name.data, surname = form.surname.data, email = form.email.data, username = form.username.data, password = password_, is_active= True, is_superuser= False)
        user.save()
        flash('Qeydiyyatdan uğurla keçdiniz', 'success')
        return redirect(url_for('login'))
    else:
        return render_template('register.html', form = form)

@app.route('/login', methods=['GET', 'POST'])
def login():
    form = LoginForm(request.form)
    if request.method == "POST" and form.validate():
        user = User.query.filter(User.username == form.username.data).first_or_404()
        if user and check_password_hash(user.password, form.password.data):
            login_user(user)
            flash('Hesabınıza daxil oldunuz', 'success')
            return redirect(url_for('homepage'))
        else:
            flash('İstifadəçi adı və ya parol yanlışdır', 'danger')
    return render_template('login.html', form = form)

@app.route('/logout')
def logout():
    logout_user()
    flash('Hesabdan çıxış edildi', 'success')
    return redirect(url_for('homepage'))

# ---------------------------------------------------------

@app.route("/", methods = ["GET", 'POST'])
def homepage():
    form = Credit_offer_form(request.form)
    response = requests.get(f'https://www.cbar.az/currencies/{datetime.now().strftime("%d.%m.%Y")}.xml')
    dict_data = xmltodict.parse(response.content)
    USD = dict_data["ValCurs"]["ValType"][1]["Valute"][0]["Value"]
    EUR = dict_data["ValCurs"]["ValType"][1]["Valute"][1]["Value"]
    GBP = dict_data["ValCurs"]["ValType"][1]["Valute"][16]["Value"]
    r = xeberler.query.all()
# ---------------------------------------------------------------------------
    if request.method == 'POST' and form.validate():
        if current_user.is_authenticated:
            offer = Credit_offer(username=current_user.username, time = form.time.data, money = form.credit_money.data, interest = form.credit_interest.data)
            offer.save()
            flash('Sifarişiniz qeydə alındı', 'success')
            return redirect(url_for('homepage'))
        else:
            flash('Kredit əldə etmek üçün hesabınıza daxil olun', 'warning')
            return redirect(url_for('login'))
    return render_template("homepage.html", xeberlers=r,Individiual_active=True,  dollar=USD, euro=EUR,gbp=GBP, form = form)
#-------------------------------------------------------------------------------
@app.route('/onlayn_novbe', methods=['GET', 'POST'])
def onlayn_novbe():
    post_data = request.form
    print(post_data)
    form = RegisterForm()
    if request.method == "POST":
        form = RegisterForm(data=post_data)
        if form.validate_on_submit():
            record = userque(filial=form.filial.data, xidmet_novu=form.xidmet_novu.data,
                             tarix=form.tarix.data, mobil_nomre=form.mobil_nomre.data)
            record.save()
    return render_template('onlineque.html', form=form )

@app.route("/xeberler/<int:xeberler_id>")
def xeber_func(xeberler_id):
    r = xeberler.query.filter(xeberler.id == xeberler_id).first()
    return render_template('xeberler.html', xeberlers=r)
