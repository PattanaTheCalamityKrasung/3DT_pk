from tkinter import *
import ttkbootstrap as tb
from ttkbootstrap import Tableview
from ttkbootstrap.dialogs import Messagebox
from utils.connection import init_db
from utils.footer import create_footer

def open_user_list():

    window = tb.Toplevel()
    window.title("User Management")
    window.geometry("1000x750")
    window.resizable(False,False)
    # ------ Title ------
    title = tb.Label(window,text="User Management",font=("Helvetica",25,"bold"),bootstyle="info")
    title.pack(pady=20)
    # ------ Frame ------
    frame = tb.Frame(window,padding=20)
    frame.pack(fill="both",expand=True)

    columns = [
        {"text":"ID","width":60},
        {"text":"First Name","width":150},
        {"text":"Last Name","width":150},
        {"text":"Email","width":300},
        {"text":"Type","width":120}
    ]
    # Collects the data of vistors and counsellors from the database
    def load_users():
        try:
            conn = init_db()
            cursor = conn.cursor()

            cursor.execute("""
                SELECT vistor_id AS user_id,firstname,lastname,email,'Visitor' AS user_type
                FROM vistor_table
                UNION ALL
                SELECT counsellor_id AS user_id,firstname,lastname,email,'Counsellor' AS user_type
                FROM counsellors_table
            """)

            data = cursor.fetchall()

            cursor.close()
            conn.close()

            return data

        except Exception as e:
            Messagebox.show_error(str(e),"Database Error")
            return []

    table = Tableview(
        master=frame,
        coldata=columns,
        rowdata=load_users(),
        paginated=True,
        pagesize=10,
        searchable=True,
        bootstyle="info"
    )

    table.pack(fill="both",expand=True)
    # ----- Frame ------
    edit_frame = tb.LabelFrame(
        window,
        text="Edit Selected User",
        padding=15,
        bootstyle="info"
    )

    edit_frame.pack(fill="x",padx=20,pady=10)

    id_entry = tb.Entry(edit_frame,width=8,state="readonly")
    firstname_entry = tb.Entry(edit_frame,width=15)
    lastname_entry = tb.Entry(edit_frame,width=15)
    email_entry = tb.Entry(edit_frame,width=25)
    type_entry = tb.Entry(edit_frame,width=12,state="readonly")

    tb.Label(edit_frame,text="ID").grid(row=0,column=0,padx=5)
    id_entry.grid(row=0,column=1,padx=5)

    tb.Label(edit_frame,text="First Name").grid(row=0,column=2,padx=5)
    firstname_entry.grid(row=0,column=3,padx=5)

    tb.Label(edit_frame,text="Last Name").grid(row=0,column=4,padx=5)
    lastname_entry.grid(row=0,column=5,padx=5)

    tb.Label(edit_frame,text="Email").grid(row=0,column=6,padx=5)
    email_entry.grid(row=0,column=7,padx=5)

    tb.Label(edit_frame,text="Type").grid(row=0,column=8,padx=5)
    type_entry.grid(row=0,column=9,padx=5)

    def on_select(event):
        selected = table.view.selection()

        if not selected:
            return

        values = table.view.item(selected[0],"values")

        id_entry.config(state="normal")
        id_entry.delete(0,END)
        id_entry.insert(0,values[0])
        id_entry.config(state="readonly")

        firstname_entry.delete(0,END)
        firstname_entry.insert(0,values[1])

        lastname_entry.delete(0,END)
        lastname_entry.insert(0,values[2])

        email_entry.delete(0,END)
        email_entry.insert(0,values[3])

        type_entry.config(state="normal")
        type_entry.delete(0,END)
        type_entry.insert(0,values[4])
        type_entry.config(state="readonly")

    table.view.bind("<<TreeviewSelect>>",on_select)

    def clear_entries():
        id_entry.config(state="normal")
        id_entry.delete(0,END)
        id_entry.config(state="readonly")

        firstname_entry.delete(0,END)
        lastname_entry.delete(0,END)
        email_entry.delete(0,END)

        type_entry.config(state="normal")
        type_entry.delete(0,END)
        type_entry.config(state="readonly")

    def refresh_table():
        table.build_table_data(
            rowdata=load_users(),
            coldata=columns
        )
        clear_entries()

    # Function to update user infomation
    def update_user():
        user_id = id_entry.get()
        firstname = firstname_entry.get().strip()
        lastname = lastname_entry.get().strip()
        email = email_entry.get().strip()
        user_type = type_entry.get()

        if not user_id:
            Messagebox.show_error("Please select a user.","Error")
            return

        if not firstname or not lastname or not email:
            Messagebox.show_error("All fields are required.","Error")
            return

        try:
            conn = init_db()
            cursor = conn.cursor()

            if user_type == "Visitor":

                cursor.execute("""
                    UPDATE vistor_table
                    SET firstname=%s,lastname=%s,email=%s
                    WHERE vistor_id=%s
                """,(firstname,lastname,email,user_id))

            elif user_type == "Counsellor":

                cursor.execute("""
                    UPDATE counsellors_table
                    SET firstname=%s,lastname=%s,email=%s
                    WHERE counsellor_id=%s
                """,(firstname,lastname,email,user_id))

            conn.commit()

            cursor.close()
            conn.close()

            Messagebox.show_info(
                "User updated successfully.",
                "Success"
            )

            refresh_table()

        except Exception as e:
            Messagebox.show_error(str(e),"Database Error")

    # Function to delete users
    def delete_user():
        user_id = id_entry.get()
        user_type = type_entry.get()

        if not user_id:
            Messagebox.show_error(
                "Please select a user.",
                "Error"
            )
            return

        answer = Messagebox.yesno(
            "Are you sure you want to delete this user?",
            "Confirm Delete"
        )

        if answer != "Yes":
            return

        try:
            conn = init_db()
            cursor = conn.cursor()

            if user_type == "Visitor":

                cursor.execute(
                    "DELETE FROM vistor_table WHERE vistor_id=%s",
                    (user_id,)
                )

            elif user_type == "Counsellor":

                cursor.execute(
                    "DELETE FROM counsellors_table WHERE counsellor_id=%s",
                    (user_id,)
                )

            conn.commit()

            cursor.close()
            conn.close()

            Messagebox.show_info(
                "User deleted successfully.",
                "Success"
            )

            refresh_table()

        except Exception as e:
            Messagebox.show_error(
                str(e),
                "Database Error"
            )

    button_frame = tb.Frame(window)
    button_frame.pack(pady=10)

    tb.Button(
        button_frame,
        text="Update User",
        bootstyle="success",
        command=update_user
    ).pack(side="left",padx=10)

    tb.Button(
        button_frame,
        text="Delete User",
        bootstyle="danger",
        command=delete_user
    ).pack(side="left",padx=10)

    tb.Button(
        button_frame,
        text="Refresh",
        bootstyle="info",
        command=refresh_table
    ).pack(side="left",padx=10)

    tb.Button(
        button_frame,
        text="Back",
        bootstyle="secondary",
        command=window.destroy
    ).pack(side="left",padx=10)

    create_footer(window)