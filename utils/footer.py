from tkinter import *
import ttkbootstrap as tb
from ttkbootstrap.constants import *

def create_footer(master): # Creates a footer that is applied to each web
    footer_frame = tb.Frame(master)
    footer_frame.pack(side='bottom', fill='x', pady=5)

    # Create a separator
    separator = tb.Separator(footer_frame, orient='horizontal')
    separator.pack(fill=X, pady=20)

    footer_label = tb.Label(  # The acutal footer and all the infomration about it
        footer_frame,
        text="© 2026 JK LTD - All Rights Reserved",
        anchor="center",
        font=("Helvetica", 10),
        bootstyle="secondary"
    )
    footer_label.pack()