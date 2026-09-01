# Import modules
from tkinter import *
import ttkbootstrap as tb
from ttkbootstrap.constants import *
from ttkbootstrap.dialogs import Messagebox
from PIL import Image, ImageTk
# Custom imports
from utils.footer import create_footer
from forms.vistor.vistor_survey import open_vistor_survey
from controller.graph import open_graph_window

# Create a new Toplevel window for the control panel
def open_vistor_control_panel(vistor_data):
    vistor_control_panel_window = tb.Toplevel()
    vistor_control_panel_window.title("Vistor Menu")
    vistor_control_panel_window.geometry("700x500")
    vistor_control_panel_window.resizable(False, False)

    # ------- customize sytling -----------
    style = tb.Style(theme='solar')
    style.configure('.', font=('Helvetica, 14')) # Global font size
    style.configure('TLabel', font=('Helvetica, 14')) # Label widget size
    style.configure('TButton', font=('Helvetica, 14')) # Button widget size
    style.configure('TEntry', font=('Helvetica, 14')) # entry widget size
        
    # Unpack the Vistor data tuple passed from login
    vistor_id, firstname, lastname, email = vistor_data

    # Logout button handler with confirmation
    def log_out():
        ans = Messagebox.yesno(
        "Do you want to proceed?",
        title="Confirm Action",
        alert=True  # shows the dialog with a warning icon
    )
        if ans == "Yes":  # only close if they clicked Yes
            vistor_control_panel_window.quit()

    # Function to open up the survey with the vistor id
    def survey_open(): 
        open_vistor_survey(vistor_id)
    
    
    # Frame to hold navigation buttons at the top
    top_frame = tb.Frame(vistor_control_panel_window)
    top_frame.pack(fill="x", padx=10, pady=10)

    # Left-aligned frame for buttons
    button_frame = tb.Frame(top_frame)
    button_frame.pack(side="left")

    # Survey button 
    button1 = tb.Button(button_frame,text="Survey",command=survey_open)
    button1.pack(side="right",padx=5, fill ="x")
    
    # Graph button
    button2 = tb.Button(button_frame, text="Graph", command=open_graph_window)
    button2.pack(side="right", padx=5, fill="x")
    
    # Logout button with confirmation dialog
    button3 = tb.Button(button_frame,text="Logout",bootstyle="danger",command=log_out)
    button3.pack(side="right", padx=5, fill="x")

    # Frame for the welcome message and user info
    msg_frame = tb.Frame(vistor_control_panel_window, padding=20)
    msg_frame.pack(fill="x", anchor='n', padx=10, pady=10)

    # Show vistor ID at top-right
    label1 = tb.Label(msg_frame,text=f"Log in as user: {vistor_id}",font=("Helvetica", 14),)
    label1.pack(anchor='ne')

    # Frame for detailed user info below
    detail_frame = tb.Frame(vistor_control_panel_window, padding=20)
    detail_frame.pack(fill="both", expand=True)

    # Welcome header
    header = tb.Label(detail_frame,text=f"Welcome, {firstname}",font=("Helvetica", 16, "bold"),)
    header.pack(pady=20)

    # Show full name
    tb.Label(detail_frame,text=f"Name: {firstname} {lastname}",font=("Helvetica", 12)).pack(pady=5)

    # Show email address
    tb.Label(detail_frame,text=f"Email: {email}",font=("Helvetica", 12)).pack(pady=5)

    # Add footer to the window
    create_footer(vistor_control_panel_window)