from app import app
from flask_sqlalchemy import SQLAlchemy
from flask_migrate import Migrate
from flask_admin import Admin
from flask_login import LoginManager

db = SQLAlchemy(app)
migrate = Migrate(app, db, compare_type=True)
admin = Admin(app, name="RabiteBank", template_mode="bootstrap3")
login_manager = LoginManager(app)
