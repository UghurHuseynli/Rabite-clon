from flask_login import UserMixin
from flask_wtf import FlaskForm
from wtforms import StringField, SelectField, IntegerField, FileField, PasswordField
from wtforms.validators import DataRequired, Length, email,EqualTo

class Card_offer_form(FlaskForm):
    card_name = SelectField('Kartı seçin', choices = [], validators=[DataRequired(message='Bu bölmə doldurulmalıdır')])
    card_type = SelectField('Mastercard', choices = [], validators=[DataRequired(message='Bu bölmə doldurulmalıdır')])
    card_currency = SelectField('Valyuta', choices=[], validators=[DataRequired(message='Bu bölmə doldurulmalıdır')])
    card_use_time = SelectField('Kartın müddəti', choices = [], validators=[DataRequired(message='Bu bölmə doldurulmalıdır')])
    card_office = SelectField('Filial', choices=[], validators=[DataRequired(message='Bu bölmə doldurulmalıdır')])
    user_name = StringField('Ad', validators=[DataRequired(message='Bu bölmə doldurulmalıdır'), Length(min=3, max=25, message='Minimum 3 simvoldan maksimum 25 simvoldan istifadə edə bilərsiniz')])
    user_lastname = StringField('Soyad', validators=[DataRequired(message='Bu bölmə doldurulmalıdır'), Length(min=5, max=35, message='Minimum 5 simvoldan maksimum 35 simvoldan istifadə edə bilərsiniz')])
    user_email = StringField('Email', validators=[email(message='Düzgün email forması daxil edin'), DataRequired(message='Bu bölmə doldurulmalıdır')])
    user_phone = StringField('Mobil nömrə', validators=[DataRequired(message='Bu bölmə doldurulmalıdır'), Length(min=15, max=15)])
    front_img = FileField('Şəxsiyyət vəsiqənizin ön üzü', validators=[DataRequired(message='Bu bölmə doldurulmalıdır')])
    back_img = FileField('Şəxsiyyət vəsiqənizin arxa üzü', validators=[DataRequired(message='Bu bölmə doldurulmalıdır')])

class Deposit_offer_form(FlaskForm):
    user_name = StringField('Adınız', validators=[DataRequired(message='Bu bölmə doldurulmalıdır'), Length(min=3, max=25, message='Minimum 3 simvoldan maksimum 25 simvoldan istifadə edə bilərsiniz')])
    user_lastname = StringField('Soyadınız', validators=[DataRequired(message='Bu bölmə doldurulmalıdır'), Length(min=5, max=35, message='Minimum 5 simvoldan maksimum 35 simvoldan istifadə edə bilərsiniz')])
    deposit_type = SelectField('Əmanət növünü seçin', choices = [], validators=[DataRequired(message='Bu bölmə doldurulmalıdır')])
    user_phone = StringField('Mobil nömrə', validators=[DataRequired(message='Bu bölmə doldurulmalıdır'), Length(min=15, max=15)])

class Credit_offer_form(FlaskForm):
    time = StringField('Müddət(ay)')
    credit_money = StringField('Kredit məbləği')
    credit_interest = StringField('Faiz dərəcəsi (illik)')


class Register_Form(FlaskForm, UserMixin):
    name = StringField('Adınız', validators=[DataRequired(message='Adınızı daxil edin'), Length(min=3, max=30)], render_kw={'placeholder': 'Adınız'})
    surname = StringField('Soyadınız', validators=[DataRequired(message='Soyadınızı daxil edin'), Length(min=5, max=30)], render_kw={'placeholder': 'Soyadınız'})
    email = StringField('Email', validators=[DataRequired(message='Emailinizi daxil edin'), email(message='Düzgün email adresi daxil edin')], render_kw={'placeholder': 'example@gmail.com'})
    username = StringField('Istifadəçi adı', validators=[DataRequired(message='Istifadəçi adınızı daxil edin'), Length(min=3, max=30)], render_kw={'placeholder' : 'Istifadəçi adınız'})
    password = PasswordField('Şifrə', validators=[DataRequired(message='Güclü bir şifrə yaradın'), EqualTo('password_confirm', message='Daxil etdiyiniz şifrələr uyğun deyil'), Length(min=8, max=30)])
    password_confirm = PasswordField('Şifrə təsdiq', validators=[Length(min=8, max=30)])

class LoginForm(FlaskForm, UserMixin):
    username = StringField('Istifadəçi adınız', validators=[DataRequired(message='Istifadəçi adınızı daxil edin')], render_kw={'placeholder' : 'Istifadəçi adınız'})
    password = PasswordField('Şifrə', validators=[DataRequired(message='Şifrənizi daxil edin')])



all_filial = [(1,"Baş Ofis (Piramida plazanın 1-ci mərtəbəsi)"),(2,"Nəsimi filialı (Heydər Əliyev sarayının yanı)"),(3,"Buta filialı (Amerika səfirliyinin yanı)"),(4,"Kaspian filialı (Kaspian plazanın 1-ci mərtəbəsi)"),(5,"Masallı filialı"),(6,"Naxçıvan şöbəsi"),(7,"Ağsu filialı"),(8,"Nərimanov filialı (Funda klinikasının yanı)"),(9,"Xətai filialı (Dəmirçi plazanın 1-ci mərtəbəsi)"),(10,"Ağcabədi filialı"),(11,"Şirvan filialı"),(12,"Şəmkir filialı"),(13,"Mərkəz filialı (İran səfirliyinin yanı)"),(14,"Xaçmaz filialı"),(15,"Qusar filialı"),(16,"Səbail filialı (3-cü mkr dairəsinin yanı)"),(17,"Şamaxı filialı"),(18,"Gəncə filialı"),(19,"Sahil filialı (Nərimanov m-nun yanı)"),(20,"Şəki filialı"),(21,"Quba filialı"),(22,"Kürdəmir filialı"),(23,"Nizami filialı (Bakı kinoteatrının yanı)"),(24,"Lənkəran filialı"),(25,"Sumqayıt filialı"),(26,"Yasamal filialı (Davinçi klinikasının yanı)")]
all_xidmet = [("","Sürətli pul köçürmələri"),(1,"Western Union"),(2,"Barat"),(3,"Zolotoya Korona"),(4,"Digər əməliyyatlar"),("","Kredit müraciəti"),(7,"Onlayn kreditlər"),(8,"İstehlak kreditləri"),(9,"Lombard Krediti"),("","Plastik kart"),(10,"Onlayn kartın təhvil alınması"),(11,"Kart sifarişi"),(12,"Kartın təhvil alınması"),(13,"Kredit ödənişi"),("","Əmanət"),(14,"Yeni əmanət"),(15,"Digər əməliyyatlar"),("Valyuta mübadiləsi","Satış"),(16,"Alışı"),("","Hüquqi şəxs və sahibkarlar"),(17,"Hüquqi şəxslər"),(18,"Fərdi sahibkarlar"),("","Hesab üzrə əməliyyatlar"),(19,"Mədaxil"),(20,"Məxaric"),(21,"Hesab üzrə çıxarışın alınması"),(22,"Digər əməliyyatlar"),("","Kommunal və digər ödənişlər"),(23,"Smart kart"),(24,"Digər əməliyyatlar"),(25,"Kassa əməliyyatları")]
all_vaxt=[("10:00:00","10:00:00"),("11:00:00","11:00:00"),("12:00:00","12:00:00"),("13:00:00","13:00:00"),("14:00:00","14:00:00"),("15:00:00","15:00:00"),("16:00:00","16:00:00")]
class RegisterForm(FlaskForm):
    tarix = StringField(label='tarix', name="tarix", validators=[
                        DataRequired(), Length(min=3, max=30)], render_kw={'placeholder': 'tarix'})
    vaxt = SelectField(label='vaxt', name='vaxt', choices=all_vaxt,render_kw={'placeholder': 'Vaxt'})
    filial = SelectField(label='filial', name='filial', choices=all_filial,render_kw={'placeholder': 'Filial'})
    xidmet_novu = SelectField(
        label='xidmet_novu', name='xidmet_novu', choices=all_xidmet,render_kw={'placeholder': 'Xidmət növü'})
    mobil_nomre = IntegerField(label='mobil_nomre', name="Mobil_nomre", validators=[DataRequired()], render_kw={'placeholder': 'Mobil nömrə'})
