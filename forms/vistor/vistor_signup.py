#import modules
from tkinter import *
import ttkbootstrap as tb
from ttkbootstrap.constants import *
from ttkbootstrap.dialogs import Messagebox

from utils.connection import init_db
from utils.helper import is_valid_email, hash_password
from controller.vistor_control_panel import open_vistor_control_panel
from utils.footer import create_footer
import mysql.connector as mysql



# init_db() # Run this at app startup
conn = init_db()
def open_vistor_signup(main_window):
    vistor_signup_window = tb.Toplevel()
    vistor_signup_window.title("Vistor Sign Up")
    vistor_signup_window.geometry("600x800")
    vistor_signup_window.resizable(False,False)


    # ------- customize sytling -----------
    style = tb.Style(theme='solar')
    style.configure('.', font=('Helvetica, 14')) # Global font size
    style.configure('TLabel', font=('Helvetica, 14')) # Label widget size
    style.configure('TButton', font=('Helvetica, 14')) # Button widget size
    style.configure('TEntry', font=('Helvetica, 14')) # entry widget size

    # -------UI Elements--------------
    register_frame = tb.Frame(vistor_signup_window, padding=20)
    register_frame.pack(fill="both", expand=True)

    # --- Header ---
    header = tb.Label(register_frame, text="Vistor Registration", font=("Helvetica", 20, "bold"), bootstyle="info")
    header.pack(pady=20)


    # function for vistor registration
    def vistor_register():
        # collects and cleans user informaion
        firstname = first_name_entry.get().strip()
        lastname = last_name_entry.get().strip()
        email = email_entry.get().strip()
        password = password_entry.get().strip()
        confrim_password = confirm_password_entry.get().strip()

        #password minimum and maximum length
        MIN_PASSWORD_LENGTH = 8
        MAX_PASSWORD_LENGTH = 20

         # make sure all fields filled are filled out
        if not all([firstname, lastname, password, email, confrim_password]):
            Messagebox.show_error("All fields are required!","Error")
            return
        # Make sure the email is vaild
        if not is_valid_email(email):
            Messagebox.show_error( "Invaild E-MAIL", "Error")
            return
             # Combined password length check
        if not (MIN_PASSWORD_LENGTH <= len(password) <= MAX_PASSWORD_LENGTH):
            Messagebox.show_error(
                f"Password must be between {MIN_PASSWORD_LENGTH} and {MAX_PASSWORD_LENGTH} characters long.",
                "Error")
            return
        # To confirm if the password match
        if password != confrim_password:
            Messagebox.show_error("Password do not match", "Error",)
            return # All fields have been filled
        hash_pw = hash_password(password)
    # Capture errors. eg database server is down
        try:
            cursor = conn.cursor()
            # Create an insert query
            cursor.execute("""
                    INSERT INTO vistor_table (firstname, lastname, email, password)
                    VALUES (%s, %s, %s, %s)
                """, (firstname, lastname, email, hash_pw))

            conn.commit()
            # Selects user information from database
            cursor.execute("SELECT vistor_id, firstname, lastname, email FROM vistor_table WHERE email = %s AND password = %s", (email, hash_pw))
            result = cursor.fetchone()

            conn.close() # close DB connection
            

            vistor_signup_window.destroy()  # Close the signup window
            open_vistor_control_panel(result)  # Open the control panel after successful signup

            # successful/error messagebox
            Messagebox.show_info( "User signed up.", "Success")
        except mysql.IntegrityError:
            Messagebox.show_error("Email already exists.","Error")
        except Exception as e:
            Messagebox.show_error(str(e), "Error")

    # --- Labels & Entry widgets ---
    tb.Label(register_frame, text="First Name").pack(anchor="w")
    first_name_entry = tb.Entry(register_frame)
    first_name_entry.pack(fill="x", pady=(0, 10))

    tb.Label(register_frame, text="Last Name").pack(anchor="w")
    last_name_entry = tb.Entry(register_frame)
    last_name_entry.pack(fill="x", pady=(0, 10))

    tb.Label(register_frame, text="Email").pack(anchor="w")
    email_entry = tb.Entry(register_frame)
    email_entry.pack(fill="x", pady=(0, 10))

    tb.Label(register_frame, text="Password").pack(anchor="w")
    password_entry = tb.Entry(register_frame, show="*")
    password_entry.pack(fill="x", pady=(0, 5))

    # --- Show Password Checkbox ---
    show_var = tb.BooleanVar()  # checkbox state
    def toggle_password():  # makes the password visible
        if show_var.get():
            password_entry.config(show="")  # show password
        else:
            password_entry.config(show="*")  # hide password with *

    show_pw_checkbox = tb.Checkbutton(
        register_frame,
        text="Show Password",  # Show password label
        variable=show_var,     # linked to checkbox
        command=toggle_password  # toggle show password
    )
    #show password pack (align to the left)
    show_pw_checkbox.pack(anchor="w", pady=(0, 15))

    # confirm passowrd
    tb.Label(register_frame, text="Confirm Password").pack(anchor="w")
    confirm_password_entry = tb.Entry(register_frame, show="*")
    confirm_password_entry.pack(fill="x", pady=(0, 20))

    def cancel_signup():
        vistor_signup_window.destroy()
        main_window.deiconify()  # Show the main window again

    # --------Button--------
    # signup button
    tb.Button(register_frame, text="Sign Up",
    command=vistor_register, bootstyle="primary").pack(fill="x",
    pady=40, padx=100)
    # cancel button
    tb.Button(register_frame, text="Cancel",
    command=cancel_signup,
    bootstyle="danger").pack(fill="x", padx=100)
    
    # create footer
    create_footer(vistor_signup_window)
