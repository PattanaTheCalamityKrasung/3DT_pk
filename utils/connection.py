import mysql.connector as mysql
from mysql.connector import Error

# Function to inialitize the database
def init_db():
    
    # validation
    try:
        conn = mysql.connect( # Connects to the database which it has these values
            host ='localhost',
            user = 'root',
            password = '',
            database = 'mental_survey'
        )
        if conn.is_connected():
            print("Connected")
            return conn
    except Error as e: # If the database cannot be connect
        print(f"Database  connection error: {e}")
        return None
