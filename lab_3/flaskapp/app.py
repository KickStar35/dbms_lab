from werkzeug.wrappers import request
from dbhandler.sqlhandler import Mysqlhandler
import dbhandler
from flask import *
app = Flask(__name__)
@app.route("/user/view",methods=['GET'])
def view():
    return Mysqlhandler.display_users()

@app.route("/user/delete",methods=['POST','GET'])
def delete():
    value = request.get_json()
    x=json.dumps(value)
    y=json.loads(x)
    z=(y["name"], )
    return Mysqlhandler.delete_user(z)

@app.route("/user/register",methods=['POST','GET'])
def register():
    value=request.get_json()
    x=json.dumps(value)
    y=json.loads(x)
    z=(y["name"], int(y["phno"]), y["dob"])
    return Mysqlhandler.add_user(z)

@app.route("/user/update",methods=['POST','GET'])
def update():
    value=request.get_json()
    x=json.dumps(value)
    y=json.loads(x)
    z=(y["name"], y["dob"], int(y["phno"]))
    return Mysqlhandler.update_user(z)
