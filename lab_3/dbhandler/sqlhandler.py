import json
import mysql.connector
cnx = mysql.connector.connect(user='root', password='asdf123', host='localhost', database='UserDB')
cursor = cnx.cursor()
class Mysqlhandler:
    def add_user(value):
        sql="insert into user_data values(%s,%s,%s)"
        cursor.execute(sql,value)
        cnx.commit()
    def update_user(value):
        sql="update user_data set name=%s, dob=%s where phno=%s"
        cursor.execute(sql,value)
        cnx.commit()
    def delete_user(value):
        sql="delete from user_data where name = %s"
        cursor.execute(sql, value)
        cnx.commit()
    def display_users():
        b=[]
        cursor.execute("select * from user_data")
        result=cursor.fetchall()
        for x in result:
            a = json.dumps(x, default=str)
            b.append(a)
        c=json.dumps(b, indent=1)
        return c
