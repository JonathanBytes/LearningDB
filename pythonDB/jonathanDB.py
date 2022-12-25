# Module Imports
import mariadb
import sys
from getpass import getpass

def start_connection():
    # Connect to MariaDB Platform
    password = getpass()
    try:
        conn = mariadb.connect(
            user="root",
            password=password,
            host="localhost",
            port=3306,
            database="learningDB"
        )
        print(f"Connection succesfully")
        # Get Cursor
        cur = conn.cursor()
        return(conn,cur)
    except mariadb.Error as e:
        print(f"Error connecting to MariaDB Platform: {e}")
        sys.exit(1)

def new_register(cur, name, gender, grade, cuteness, verbose=False):
    # Send SQL INSERT Query 
    cur.execute(
        "INSERT INTO estudiantes (name,gender,grade,cuteness) VALUES (?, ?, ?, ?)", 
        (name, gender, grade, cuteness))
    # If true, then prints the previus register
    if verbose:
        query(cur,name)
 
def query(cur,name):
        cur.execute(
            "SELECT * FROM estudiantes WHERE name=?", 
            (name,))
        for (id_student, name, gender, grade, cuteness) in cur:
            print(f"ID Student: {id_student}, Name: {name}, Gender: {gender}, Grade:  {grade}, Cuteness: {cuteness}")

def close_conn(conn):
    conn.commit()
    conn.close()
