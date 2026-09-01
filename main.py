# Import modules
from tkinter import *
import ttkbootstrap as tb
from tkinter import font
from ttkbootstrap.constants import *
from ttkbootstrap.dialogs import Messagebox
from PIL import Image, ImageTk

# Custom Imports
from forms.vistor.vistor_signup import open_vistor_signup
from forms.vistor.vistor_login import open_vistor_login
from forms.counsuller.counsellor_login import open_counsellor_login
from forms.admin.senior_admin_login import open_senior_admin_login
from utils.footer import create_footer

# ------ Button function ---------
# opens the new windows and deletes the main window

# Opens vistor sign up
def vistor_signup_main_withdrawn(current_window):
    open_vistor_signup(current_window)
    current_window.withdraw() # Withdraw the main window 

# Opens vistor login
def vistor_login_main_withdrawn(current_window):
    open_vistor_login(current_window)
    current_window.withdraw() # Withdraw the main window 

# Opens senior admin login
def senior_admin_login_main_withdrawn(current_window):
    open_senior_admin_login(current_window)
    current_window.withdraw() # Withdraw the main window 
# Open counsellor login   
def counsellor_login_main_withdrawn(current_window):
    open_counsellor_login(current_window)
    current_window.withdraw() # Withdraw the main window 


# Set up root window
def open_main_window():
    root = tb.Window(themename="solar") # Overall theme of the app
    root.title("Mental Health Hub") # Title of the main window
    root.geometry("800x800") # Size of the main window
    root.resizable(True, True) # Allow for rezising/fullscreen 
    root.minsize(width=800, height=800) # Minimum size of the window

    # ------- customize sytling -----------
    style = tb.Style(theme='solar')
    style.configure('.', font=('Helvetica, 14')) # Global font size
    style.configure('TLabel', font=('Helvetica, 14')) # Label widget size
    style.configure('TButton', font=('Helvetica, 14')) # Button widget size
    style.configure('TEntry', font=('Helvetica, 14')) # entry widget size
    

    #---- Title --------
    title = tb.Label(root, text="Mental Health Hub", font=('Arial, 50'), bootstyle="info")
    title.pack(pady=20)
    
    #------ Frame -----
    button_frame = tb.Frame(root) # A frame that holds all the buttons 
    button_frame.pack(pady=0)
    
    # Main page image
    
    image = Image.open("tree.png")
    image = image.resize((400,400))
    photo = ImageTk.PhotoImage(image)

    image_label = tb.Label(root,image=photo)
    image_label.pack(pady=60)
    
    # ---- Button functions ----
    
    # Vistor Sign up
    admin_sign_up_button = tb.Button(button_frame, text="Vistor sign up", command=lambda:vistor_signup_main_withdrawn(root))
    admin_sign_up_button.pack(pady=10, padx=10, side="left")
    
    # Vistor loginin 
    admin_lgoin_button = tb.Button(button_frame, text="Vistor login", command=lambda:vistor_login_main_withdrawn(root))
    admin_lgoin_button.pack(pady=10, padx=10, side="left")
    
    # Counsellor
    counsellor_lgoin_button = tb.Button(button_frame, text="Counsellor login", command=lambda:counsellor_login_main_withdrawn(root))
    counsellor_lgoin_button.pack(pady=10, padx=10, side="left")
    
    # Senior Admin Login (The admins who can look at everyones database)
    senior_admin_lgoin_button = tb.Button(button_frame, text="Seinor Admin login", command=lambda:senior_admin_login_main_withdrawn(root))
    senior_admin_lgoin_button.pack(pady=10, padx=10, side="left")
 
    # Create footer
    create_footer(root)

    # Main loop 
    root.mainloop()
    

    


if __name__ == "__main__":
    open_main_window()
    

    
