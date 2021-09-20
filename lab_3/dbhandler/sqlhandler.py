import mysql.connector

cnx = mysql.connector.connect(
    user='root', password='Ilovemyson35', database='UserDB')
cursor = cnx.cursor()


class mysqlhandler:
    def __init__(self):
        pass

    def add_user(name, phno, dob):
        query = "insert into user_data(name, phno, dob) values(" + \
            name+","+phno+","+dob+");"
        cursor.execute(query)
        cnx.commit()

    def update_user(name, phno, dob):
        query = "update user_data set name="+name+", dob="+dob+" where phno="+phno+";"
        cursor.execute(query)
        cnx.commit()

    def delete_user(name, phno):
        query = "delete from user_data where phno="+phno+";"
        cursor.execute(query)
        cnx.commit()

    def display_users(name):
        query = "select * from user_data;"
        cursor.execute(query)
        cnx.commit()
