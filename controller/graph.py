from tkinter import *
import ttkbootstrap as tb
from ttkbootstrap.dialogs import Messagebox
from utils.connection import init_db
import matplotlib.pyplot as plt

questions = [
    "Hours of sleep",
    "Hours with friends and family",
    "Days of physical activity",
    "Hours working or studying",
    "New people interacted with",
    "Stress level 1-10",
    "Anxiety level 1-10",
    "Hours relaxing",
    "Ability to take on challenges",
    "Personal wellbeing 1-10"
]

def open_graph_window():

    window = tb.Toplevel()
    window.title("Graphs")
    window.geometry("600x600")

    # X axis
    tb.Label(window, text="X Axis").pack(pady=5)

    x_box = tb.Combobox(
        window,
        values=questions,
        state="readonly"
    )
    x_box.pack(pady=5)
    x_box.current(0)

    # Y axis
    tb.Label(window, text="Y Axis").pack(pady=5)

    y_box = tb.Combobox(
        window,
        values=questions,
        state="readonly"
    )
    y_box.pack(pady=5)
    y_box.current(5)

    def make_graph():

        x_question = x_box.current() + 1
        y_question = y_box.current() + 1

        try:
            conn = init_db()
            cursor = conn.cursor()
            # Grabs the infomation from the database to place into the graphs.
            cursor.execute(""" 
                SELECT x.answer_value, y.answer_value
                FROM answers_table x
                JOIN answers_table y
                ON x.response_id = y.response_id
                WHERE x.question_id = %s
                AND y.question_id = %s
            """, (x_question, y_question))

            data = cursor.fetchall()

            conn.close()
            # Checking if there is data 
            if not data:
                Messagebox.show_error(
                    "There is no data.",
                    "Error"
                )
                return

            x = []
            y = []

            for row in data:
                x.append(row[0])
                y.append(row[1])

            plt.scatter(x, y)

            plt.xlabel(questions[x_question - 1])
            plt.ylabel(questions[y_question - 1])
            plt.title("Mental Health Data")

            plt.show()

        except Exception as e:
            Messagebox.show_error(
                str(e),
                "Database Error"
            )
    # Creates the graph
    tb.Button(
        window,
        text="Generate Graph",
        command=make_graph
    ).pack(pady=20)