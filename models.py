from extensions import db, admin, login_manager
from flask_login import UserMixin
from flask_admin.contrib.sqla import ModelView
from datetime import datetime


@login_manager.user_loader
def load_user(user_id):
    return User.query.get(user_id)


# Deposit page
class Deposit(db.Model):
    __tablename__ = "Deposit"

    def __init__(
        self,
        d_name,
        time,
        interest,
        currency,
        img_url,
        deatil_slug,
        deposit_type,
        first_info,
    ):
        self.d_name = d_name
        self.time = time
        self.interest = interest
        self.currency = currency
        self.img_url = img_url
        self.detail_slug = deatil_slug
        self.deposit_type = deposit_type
        self.first_info = first_info

    id = db.Column(db.Integer, primary_key=True)
    d_name = db.Column(db.String(40))
    time = db.Column(db.Integer)
    interest = db.Column(db.Float)
    currency = db.Column(db.String(30))
    img_url = db.Column(db.String(1000))
    detail_slug = db.Column(db.String(100))
    deposit_type = db.Column(db.String(20))
    first_info = db.Column(db.String(500))

    def __repr__(self):
        return self.d_name

    def save(self):
        db.session.add(self)
        db.session.commit()


class D_menu(db.Model):
    __tablename__ = "D_menu"

    def __init__(self, menu_name, menu_header, menu_content, deposit_id):
        self.menu_name = menu_name
        self.menu_header = menu_header
        self.menu_content = menu_content
        self.deposit_id = deposit_id

    id = db.Column(db.Integer, primary_key=True)
    menu_name = db.Column(db.String(50))
    menu_header = db.Column(db.String(200))
    menu_content = db.Column(db.String(1000))
    deposit_id = db.Column(db.Integer, db.ForeignKey("Deposit.id"))
    Deposit = db.relationship("Deposit", backref=db.backref("D_menu", lazy="dynamic"))

    def __repr__(self):
        return self.menu_name

    def save(self):
        db.session.add(self)
        db.session.commit()


class D_xitam(db.Model):
    __tablename__ = "D_xitam"

    def __init__(self, time, azn, usd, euro, deposit_id):
        self.time = time
        self.azn = azn
        self.usd = usd
        self.euro = euro
        self.deposit_id = deposit_id

    id = db.Column(db.Integer, primary_key=True)
    time = db.Column(db.String(50))
    azn = db.Column(db.String(10), default="-")
    usd = db.Column(db.String(10), default="-")
    euro = db.Column(db.String(10), default="-")
    deposit_id = db.Column(db.Integer, db.ForeignKey("Deposit.id"))
    Deposit = db.relationship("Deposit", backref=db.backref("D_xitam", lazy="dynamic"))

    def __repr__(self):
        return self.time

    def save(self):
        db.session.add(self)
        db.session.commit()


class Interest_monthly(db.Model):
    __tablename__ = "Interest_monthly"

    def __init__(self, time, azn, usd, euro, deposit_id):
        self.time = time
        self.azn = azn
        self.usd = usd
        self.euro = euro
        self.deposit_id = deposit_id

    id = db.Column(db.Integer, primary_key=True)
    time = db.Column(db.String(50))
    azn = db.Column(db.String(10), default="-")
    usd = db.Column(db.String(10), default="-")
    euro = db.Column(db.String(10), default="-")
    deposit_id = db.Column(db.Integer, db.ForeignKey("Deposit.id"))
    Deposit = db.relationship(
        "Deposit", backref=db.backref("Interest_monthly", lazy="dynamic")
    )

    def __repr__(self):
        return self.time

    def save(self):
        db.session.add(self)
        db.session.commit()


class Interest_quarterly(db.Model):
    __tablename__ = "Interest_quarterly"

    def __init__(self, time, azn, usd, euro, deposit_id):
        self.time = time
        self.azn = azn
        self.usd = usd
        self.euro = euro
        self.deposit_id = deposit_id

    id = db.Column(db.Integer, primary_key=True)
    time = db.Column(db.String(50))
    azn = db.Column(db.String(10), default="-")
    usd = db.Column(db.String(10), default="-")
    euro = db.Column(db.String(10), default="-")
    deposit_id = db.Column(db.Integer, db.ForeignKey("Deposit.id"))
    Deposit = db.relationship(
        "Deposit", backref=db.backref("Interest_quarterly", lazy="dynamic")
    )

    def __repr__(self):
        return self.time

    def save(self):
        db.session.add(self)
        db.session.commit()


class Interest_end(db.Model):
    __tablename__ = "Interest_end"

    def __init__(self, time, azn, usd, euro, deposit_id):
        self.time = time
        self.azn = azn
        self.usd = usd
        self.euro = euro
        self.deposit_id = deposit_id

    id = db.Column(db.Integer, primary_key=True)
    time = db.Column(db.String(50))
    azn = db.Column(db.String(10), default="-")
    usd = db.Column(db.String(10), default="-")
    euro = db.Column(db.String(10), default="-")
    deposit_id = db.Column(db.Integer, db.ForeignKey("Deposit.id"))
    Deposit = db.relationship(
        "Deposit", backref=db.backref("Interest_end", lazy="dynamic")
    )

    def __repr__(self):
        return self.time

    def save(self):
        db.session.add(self)
        db.session.commit()


class Requier(db.Model):
    __tablename__ = "Requier"

    def __init__(self, condition_, deposit_id):
        self.condition_ = condition_
        self.deposit_id = deposit_id

    id = db.Column(db.Integer, primary_key=True)
    condition_ = db.Column(db.String(500))
    deposit_id = db.Column(db.Integer, db.ForeignKey("Deposit.id"))
    Deposit = db.relationship("Deposit", backref=db.backref("Requier", lazy="dynamic"))

    def save(self):
        db.session.add(self)
        db.session.commit()


class D_conditions(db.Model):
    __tablename__ = "D_conditions"

    def __init__(self, conditions_name, conditions_answer, deposit_id):
        self.conditions_name = conditions_name
        self.conditions_answer = conditions_answer
        self.deposit_id = deposit_id

    id = db.Column(db.Integer, primary_key=True)
    conditions_name = db.Column(db.String(100))
    conditions_answer = db.Column(db.String(500))
    deposit_id = db.Column(db.Integer, db.ForeignKey("Deposit.id"))
    Deposit = db.relationship(
        "Deposit", backref=db.backref("D_conditions", lazy="dynamic")
    )

    def __repr__(self):
        return self.conditions_name

    def save(self):
        db.session.add(self)
        db.session.commit()


class Main_office(db.Model):
    __tablename__ = "Main_office"

    def __init__(self, box_size, payment_month, payment_year, deposit_id):
        self.box_size = box_size
        self.payment_month = payment_month
        self.payment_year = payment_year
        self.deposit_id = deposit_id

    id = db.Column(db.Integer, primary_key=True)
    box_size = db.Column(db.String(100))
    payment_month = db.Column(db.Integer)
    payment_year = db.Column(db.Integer)
    deposit_id = db.Column(db.Integer, db.ForeignKey("Deposit.id"))
    Deposit = db.relationship(
        "Deposit", backref=db.backref("Main_office", lazy="dynamic")
    )

    def save(self):
        db.session.add(self)
        db.session.commit()


class Main_branch(db.Model):
    __tablename__ = "Main_branch"

    def __init__(self, box_size, payment_month, payment_year, deposit_id):
        self.box_size = box_size
        self.payment_month = payment_month
        self.payment_year = payment_year
        self.deposit_id = deposit_id

    id = db.Column(db.Integer, primary_key=True)
    box_size = db.Column(db.String(100))
    payment_month = db.Column(db.Integer)
    payment_year = db.Column(db.Integer)
    deposit_id = db.Column(db.Integer, db.ForeignKey("Deposit.id"))
    Deposit = db.relationship(
        "Deposit", backref=db.backref("Main_branch", lazy="dynamic")
    )

    def save(self):
        db.session.add(self)
        db.session.commit()


class Nesimi_branch(db.Model):
    __tablename__ = "Nesimi_branch"

    def __init__(self, box_size, payment_month, payment_year, deposit_id):
        self.box_size = box_size
        self.payment_month = payment_month
        self.payment_year = payment_year
        self.deposit_id = deposit_id

    id = db.Column(db.Integer, primary_key=True)
    box_size = db.Column(db.String(100))
    payment_month = db.Column(db.Integer)
    payment_year = db.Column(db.Integer)
    deposit_id = db.Column(db.Integer, db.ForeignKey("Deposit.id"))
    Deposit = db.relationship(
        "Deposit", backref=db.backref("Nesimi_branch", lazy="dynamic")
    )

    def save(self):
        db.session.add(self)
        db.session.commit()


class Nerimanov_branch(db.Model):
    __tablename__ = "Nerimanov_branch"

    def __init__(self, box_size, payment_month, payment_year, deposit_id):
        self.box_size = box_size
        self.payment_month = payment_month
        self.payment_year = payment_year
        self.deposit_id = deposit_id

    id = db.Column(db.Integer, primary_key=True)
    box_size = db.Column(db.String(100))
    payment_month = db.Column(db.Integer)
    payment_year = db.Column(db.Integer)
    deposit_id = db.Column(db.Integer, db.ForeignKey("Deposit.id"))
    Deposit = db.relationship(
        "Deposit", backref=db.backref("Nerimanov_branch", lazy="dynamic")
    )

    def save(self):
        db.session.add(self)
        db.session.commit()


# credit offer


class Credit_offer(db.Model):
    __tablename__ = "Credit_offer"

    def __init__(self, username, time, money, interest):
        self.username = username
        self.time = time
        self.money = money
        self.interest = interest

    id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(50), nullable=False)
    time = db.Column(db.String(40), nullable=False)
    money = db.Column(db.String(40), nullable=False)
    interest = db.Column(db.String(20), nullable=False)

    def save(self):
        db.session.add(self)
        db.session.commit()


# deposit offer model


class Deposit_offer(db.Model):
    __tablename__ = "Deposit_offer"

    def __init__(self, name, surname, phone, deposit_type):
        self.name = name
        self.surname = surname
        self.phone = phone
        self.deposit_type = deposit_type

    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(40), nullable=False)
    surname = db.Column(db.String(40), nullable=False)
    phone = db.Column(db.String(20), nullable=False)
    deposit_type = db.Column(db.String(40), nullable=False)

    def __repr__(self):
        return self.name

    def save(self):
        db.session.add(self)
        db.session.commit()


# Campaigns
class Campaigns(db.Model):
    __tablename__ = "Campaigns"

    def __init__(self, img, more_url, title, category, filter_category_card):
        self.img = img
        self.more_url = more_url
        self.title = title
        self.category = category
        self.filter_category_card = filter_category_card

    id = db.Column(db.Integer, primary_key=True)
    img = db.Column(db.String(255), nullable=False)
    more_url = db.Column(db.String(1000), default="#")
    title = db.Column(db.String(1000))
    category = db.Column(db.String(30))
    filter_category_card = db.Column(db.String(30))

    def __repr__(self):
        return self.title


# Card offer page
class Card_offer(db.Model):
    __tablename__ = "Card_offer"

    def __init__(
        self,
        card_name,
        card_type,
        card_currency,
        card_use_time,
        card_office,
        user_name,
        user_lastname,
        user_email,
        user_phone,
        front_img,
        back_img,
    ):
        self.card_name = card_name
        self.card_type = card_type
        self.card_currency = card_currency
        self.card_use_time = card_use_time
        self.card_office = card_office
        self.user_name = user_name
        self.user_lastname = user_lastname
        self.user_email = user_email
        self.user_phone = user_phone
        self.front_img = front_img
        self.back_img = back_img

    id = db.Column(db.Integer, primary_key=True)
    card_name = db.Column(db.String(100), nullable=False)
    card_type = db.Column(db.String(100), nullable=False)
    card_currency = db.Column(db.String(100), nullable=False)
    card_use_time = db.Column(db.String(100), nullable=False)
    card_office = db.Column(db.String(500), nullable=False)
    user_name = db.Column(db.String(30), nullable=False)
    user_lastname = db.Column(db.String(50), nullable=False)
    user_email = db.Column(db.String(100), nullable=False)
    user_phone = db.Column(db.String(20), nullable=False)
    front_img = db.Column(db.String(500), nullable=False)
    back_img = db.Column(db.String(500), nullable=False)

    def __repr__(self):
        return self.user_name

    def save(self):
        db.session.add(self)
        db.session.commit()


class Card_name(db.Model):
    __tablename__ = "Card_name"

    def __init__(self, name):
        self.name = name

    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(100))

    def __repr__(self):
        return self.name

    def save(self):
        db.session.add(self)
        db.session.commit()


class Card_type(db.Model):
    __tablename__ = "Card_type"

    def __init__(self, type_name):
        self.type_name = type_name

    id = db.Column(db.Integer, primary_key=True)
    type_name = db.Column(db.String(20))

    def __repr__(self):
        return self.type_name

    def save(self):
        db.session.add(self)
        db.session.commit()


class Card_currency(db.Model):
    __tablename__ = "Card_currency"

    def __init__(self, currency_name):
        self.currency_name = currency_name

    id = db.Column(db.Integer, primary_key=True)
    currency_name = db.Column(db.String(10))

    def __repr__(self):
        return self.currency_name

    def save(self):
        db.session.add(self)
        db.session.commit()


class Card_use_time(db.Model):
    __tablename__ = "Card_use_time"

    def __init__(self, currency_time):
        self.currency_time = currency_time

    id = db.Column(db.Integer, primary_key=True)
    currency_time = db.Column(db.String(50))

    def __repr__(self):
        return self.currency_time

    def save(self):
        db.session.add(self)
        db.session.commit()


class Card_office(db.Model):
    __tablename__ = "Card_office"

    def __init__(self, card_office):
        self.card_office = card_office

    id = db.Column(db.Integer, primary_key=True)
    card_office = db.Column(db.String(500))

    def __repr__(self):
        return self.card_office

    def save(self):
        db.session.add(self)
        db.session.commit()


class User(db.Model, UserMixin):
    __tablename__ = "User"

    def __init__(
        self, name, surname, email, username, password, is_active, is_superuser
    ):
        self.name = name
        self.surname = surname
        self.email = email
        self.username = username
        self.password = password
        self.is_active = is_active
        self.is_superuser = is_superuser

    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(30), nullable=False)
    surname = db.Column(db.String(30), nullable=False)
    email = db.Column(db.String(50), nullable=False)
    username = db.Column(db.String(30), nullable=False)
    password = db.Column(db.String(255), nullable=False)
    created_at = db.Column(db.DateTime, default=datetime.utcnow)
    is_active = db.Column(db.Boolean, default=False)
    is_superuser = db.Column(db.Boolean, default=False)

    def __repr__(self):
        return self.username

    def save(self):
        db.session.add(self)
        db.session.commit()


# ----------------------------------------------------------------


class userque(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    tarix = db.Column(db.String(30), nullable=False)
    mobil_nomre = db.Column(db.String(30), nullable=False)
    xidmet_novu = db.Column(db.String(100), nullable=False)
    filial = db.Column(db.String(70), nullable=False)

    def __init__(self, tarix, mobil_nomre, xidmet_novu, filial):
        self.tarix = tarix
        self.mobil_nomre = mobil_nomre
        self.filial = filial
        self.xidmet_novu = xidmet_novu

    def save(self):
        db.session.add(self)
        db.session.commit()


class xeberler(db.Model):
    __tablename__ = "xeberler"
    id = db.Column(db.Integer, primary_key=True)
    xeber_basliq = db.Column(db.Text, nullable=False)
    xeber_etrafli = db.Column(db.Text, nullable=False)
    xeber_sekil = db.Column(db.Text, nullable=False)
    xeber_tarix = db.Column(db.Text, nullable=False)

    def __init__(self, xeber_basliq, xeber_etrafli, xeber_sekil, xeber_tarix):
        self.xeber_basliq = xeber_basliq
        self.xeber_etrafli = xeber_etrafli
        self.xeber_sekil = xeber_sekil
        self.xeber_tarix = xeber_tarix

    def save(self):
        db.session.add(self)
        db.session.commit()


admin.add_view(ModelView(Deposit, db.session))
admin.add_view(ModelView(D_menu, db.session))
admin.add_view(ModelView(D_xitam, db.session))
admin.add_view(ModelView(Interest_monthly, db.session))
admin.add_view(ModelView(Interest_quarterly, db.session))
admin.add_view(ModelView(Interest_end, db.session))
admin.add_view(ModelView(Requier, db.session))
admin.add_view(ModelView(D_conditions, db.session))
admin.add_view(ModelView(Main_office, db.session))
admin.add_view(ModelView(Main_branch, db.session))
admin.add_view(ModelView(Nesimi_branch, db.session))
admin.add_view(ModelView(Nerimanov_branch, db.session))
admin.add_view(ModelView(Campaigns, db.session))
admin.add_view(ModelView(userque, db.session))
admin.add_view(ModelView(xeberler, db.session))
admin.add_view(ModelView(Card_offer, db.session))
admin.add_view(ModelView(Card_name, db.session))
admin.add_view(ModelView(Card_type, db.session))
admin.add_view(ModelView(Card_currency, db.session))
admin.add_view(ModelView(Card_use_time, db.session))
admin.add_view(ModelView(Card_office, db.session))
admin.add_view(ModelView(Deposit_offer, db.session))
admin.add_view(ModelView(Credit_offer, db.session))
