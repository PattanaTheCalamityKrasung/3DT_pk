# Import modules
from tkinter import *
import ttkbootstrap as tb
from ttkbootstrap.constants import *
from ttkbootstrap.dialogs import Messagebox

# Custom imports
from utils.connection import init_db
from utils.helper import is_valid_email, hash_password
from controller.vistor_control_panel import open_vistor_control_panel
from utils.footer import create_footer
import mysql.connector as mysql

# Function to open the Vistor login window
def open_vistor_login(main_window):
    vistor_login_window = tb.Toplevel()
    vistor_login_window.title("Vistor Login")
    vistor_login_window.geometry("600x700")
    vistor_login_window.resizable(False, False)


    # ------- customize sytling -----------
    style = tb.Style(theme='solar')
    style.configure('.', font=('Helvetica, 14')) # Global font size
    style.configure('TLabel', font=('Helvetica, 14')) # Label widget size
    style.configure('TButton', font=('Helvetica, 14')) # Button widget size
    style.configure('TEntry', font=('Helvetica, 14')) # entry widget size

    register_frame = tb.Frame(vistor_login_window, padding=20)
    register_frame.pack(fill="both", expand=True)

    # ---------Header----------
    header = tb.Label(register_frame, text="Vistor Login", font=("Helvetica", 20, "bold"), bootstyle="info")
    header.pack(pady=20)

    # Function for login
    def vistor_login():
        # collects and cleans user informaion
        email = email_entry.get().strip()
        password = password_entry.get().strip()
        confirm_password = confirm_password_entry.get().strip()

        # Validate all fields are filled
        if not all([email, password, confirm_password]):
            Messagebox.show_error("All fields are required!", "Error", parent=vistor_login_window)
            return

        # Validate email format
        if not is_valid_email(email):
            Messagebox.show_error("Invalid E-MAIL", "Error", parent=vistor_login_window)
            return

        # Confirm password match
        if password != confirm_password:
            Messagebox.show_error("Passwords do not match", "Error", parent=vistor_login_window)
            return

        hash_pw = hash_password(password)
        conn = None
        try:
            conn = init_db()
            cursor = conn.cursor()
            # Selects user information from database
            cursor.execute(
                "SELECT vistor_id, firstname, lastname, email FROM vistor_table WHERE email = %s AND password = %s",
                (email, hash_pw)
            )

            result = cursor.fetchone()
            #succesfull/error messageboxes
            if result:
                Messagebox.show_info("User Logged in.", "Success", parent=vistor_login_window)
                vistor_login_window.destroy() # Close the signup window
                open_vistor_control_panel(result)   # Open the control panel after successful login
            else:
                Messagebox.show_error("Incorrect email or password.", "Login Failed", parent=vistor_login_window) # parent window so the messagebox doens't pop up behind any other panel

        except mysql.IntegrityError:
            Messagebox.show_error("Database integrity error.", "Error", parent=vistor_login_window)

        except Exception as e:
            Messagebox.show_error(str(e), "Error", parent=vistor_login_window)
        finally:
            if conn:
                conn.close() # close connect to DB

    # --- Labels & Entry widgets ---
    tb.Label(register_frame, text="Email").pack(anchor="w")
    email_entry = tb.Entry(register_frame)
    email_entry.pack(fill="x", pady=(0, 10))

    tb.Label(register_frame, text="Password").pack(anchor="w")
    password_entry = tb.Entry(register_frame, show="*")
    password_entry.pack(fill="x", pady=(0, 5))

    # Show Password Checkbox
    show_var = tb.BooleanVar()
    def toggle_password():
        if show_var.get():
            password_entry.config(show="") # Show password
        else:
            password_entry.config(show="*") # hide password with *

    show_pw_checkbox = tb.Checkbutton(
        register_frame,
        text="Show Password", # show password label
        variable=show_var,  # link to checkbox
        command=toggle_password # toggle show password
    )
    show_pw_checkbox.pack(anchor="w", pady=(0, 15))

    # Confirm Password
    tb.Label(register_frame, text="Confirm Password").pack(anchor="w")
    confirm_password_entry = tb.Entry(register_frame, show="*")
    confirm_password_entry.pack(fill="x", pady=(0, 20))

    def cancel_login():
        vistor_login_window.destroy()
        main_window.deiconify() # Show the main window again

    # Login Button
    tb.Button(register_frame, text="Login", command=vistor_login, bootstyle="primary").pack(fill="x", pady=40, padx=100)
    # Cancel Button
    tb.Button(register_frame, text="Cancel", command=cancel_login, bootstyle="danger").pack(fill="x", padx=100)

    # create Footer
    create_footer(vistor_login_window)
