import mysql.connector 
from mysql.connector import errorcode
def create_database(cursor):
    try:
        cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
        print(f"Database alx_book_store created successfully")

    except mysql.connector.Error as err:
        if err.errno == errorcode.ER_DB_CREATE_EXISTS:
            print(f"Database already exisits")
        else:
            print("failed creating database: {err}")
    try:
        mydb = mysql.connector.connect(
                host="localhost",
                user="yourusername",
            password="yourpassword",
            database="alx_book_store"
    )

    except mysql.connector.Error as err:
        if err.errno == errorcode.ER_BAD_DB_ERROR:
            print(f"Failed to connect to Database")
        elif err.errno == errorcode.ER_PASSWORD_NO_MATCH:
            print(f"Password is wrong")
        
        
