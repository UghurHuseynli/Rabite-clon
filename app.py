from extensions import *
from models import *
from url import *
from forms import *
from flask import Flask

app = Flask(__name__, template_folder='./templates', static_folder='./static')
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://root:12345@127.0.0.1:3306/rabite'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
app.config['SECRET_KEY'] = 'windwalker_key'
app.config['FLASK_ADMIN_SWATCH'] = 'Slate'


if __name__ == '__main__':
    app.run(debug=True)
