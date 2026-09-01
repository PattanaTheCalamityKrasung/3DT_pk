import re
import hashlib

from utils.connection import init_db

conn = init_db() # Connects to the database

# ----------- Validation --------------

# Email validation
def is_valid_email(email): # Checks if it has the information to be a vaild email
    return re.match(r"[^@]+@[^@]+\.[^@]+", email)


def hash_password(password): # Encodes the password into a unique letters
    return hashlib.sha256(password.encode()).hexdigest()


