# Import modules
from tkinter import *
import ttkbootstrap as tb
from ttkbootstrap import Tableview
from utils.connection import init_db
from utils.footer import create_footer

def open_vistor_answers():

    window = tb.Toplevel()
    window.title("Visitor Survey Answers")
    window.geometry("1000x700")
    window.resizable(False, False)

    conn = init_db()

    # Title
    title = tb.Label(window,text="Visitor Survey Answers",font=("Helvetica", 25, "bold"))
    title.pack(pady=20)

    # Frame
    frame = tb.Frame(window, padding=20)
    frame.pack(fill="both", expand=True)

    # Questions
    questions = {
        1: "Hours of sleep",
        2: "Hours with friends and family",
        3: "Days of physical activity",
        4: "Hours working or studying",
        5: "New people interacted with",
        6: "Stress level",
        7: "Anxiety level",
        8: "Hours relaxing",
        9: "Ability to take challenges",
        10: "Personal wellbeing"
    }

    # Get all answers
    cursor = conn.cursor()

    cursor.execute("""
        SELECT
            v.vistor_id,
            v.firstname,
            v.lastname,
            a.question_id,
            a.answer_value,
            r.date_submitted
        FROM vistor_table v
        JOIN responses_table r
            ON v.vistor_id = r.vistor_id
        JOIN answers_table a
            ON r.response_id = a.response_id
        ORDER BY v.vistor_id, a.question_id
    """)

    data = cursor.fetchall()

    cursor.close()
    conn.close()

    # Table columns
    columns = [
        {"text": "Visitor ID", "width": 80},
        {"text": "First Name", "width": 120},
        {"text": "Last Name", "width": 120},
        {"text": "Question", "width": 300},
        {"text": "Answer", "width": 100},
        {"text": "Date", "width": 150}
    ]

    # Convert database data
    table_data = []

    for row in data:

        visitor_id = row[0]
        firstname = row[1]
        lastname = row[2]
        question_id = row[3]
        answer = row[4]
        date = row[5]

        question = questions.get(
            question_id,
            "Unknown Question"
        )

        table_data.append((
            visitor_id,
            firstname,
            lastname,
            question,
            answer,
            date
        ))

    # Create table
    table = Tableview(
        master=frame,
        coldata=columns,
        rowdata=table_data,
        paginated=True,
        pagesize=15,
        searchable=True,
        bootstyle="info"
    )

    table.pack(fill="both", expand=True)

    # Back button
    tb.Button(
        window,
        text="Back",
        bootstyle="secondary",
        command=window.destroy
    ).pack(pady=10)

    create_footer(window)