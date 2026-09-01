# Import modules
from tkinter import *
import ttkbootstrap as tb
from tkinter import font
from ttkbootstrap.constants import *
from ttkbootstrap.dialogs import Messagebox

# Custom imports 
from utils.connection import init_db
from utils.footer import create_footer


# ------- survey questions ------

questions = [
    "How many hours of sleep do you get.",
    
    "How many hour per week do you spend time do you with friends and family.",
    
    "How many times per week do you spend doing physical actvity.",
    
    "How many hour per weeks do you spend working or studying.",
    
    "How many times per week do you interact with new people.",
    
    "How do you rate your stress level from 1-10.",
    
    "How do you rate your anxiety level from 1-10.",
    
    "How many hours per week do you spend rexlaing, e.g. reading, playing video games.",
    
    "How would rate your abllity to take on challenges from 1-10.",
    
    "How would you rate your personal wellbeing from 1-10.",
]

# This sets the limations on what the value of user puts into the answer box
questions_limit = [
    (0, 24),       # Question 1
    (0, 168),      # Question 2
    (0, 7),        # Question 3
    (0, 168),      # Question 4
    (0, 1000),     # Question 5
    (1, 10),       # Question 6
    (1, 10),       # Question 7
    (0, 168),      # Question 8
    (1, 10),       # Question 9
    (1, 10)        # Question 10
]




def open_vistor_survey(vistor_id):
    survey_window = tb.Toplevel()
    survey_window.title("Mental Health Survey")
    survey_window.geometry("600x600")
    survey_window.resizable(False, False)

    # Title
    title = tb.Label(
        survey_window,
        text="Mental Health Assessment",
        font=("Arial", 40)
    )
    title.pack(pady=20)

    # Current question
    question_number = 0

    # Store answers
    answers = []

    # Question label
    question_label = tb.Label(
        survey_window,
        text=questions[question_number],
        font=("Arial", 18),
        wraplength=500
    )
    question_label.pack(pady=40)

    # Answer box
    answer_entry = tb.Entry(
        survey_window,
        width=30
    )
    answer_entry.pack(pady=20)

    # Save answers to database
    def save_answers():
        try:
            conn = init_db()
            cursor = conn.cursor()

            # Create response
            cursor.execute(
                """
                INSERT INTO responses_table
                (vistor_id, survey_id)
                VALUES (%s, %s)
                """,
                (vistor_id, 1)
            )

            # Get response ID
            response_id = cursor.lastrowid

            # save each answer
            for question_id, answer in enumerate(answers, start=1):
                cursor.execute(
                    """
                    INSERT INTO answers_table
                    (response_id, question_id, answer_value)
                    VALUES (%s, %s, %s)
                    """,
                    (response_id, question_id, answer)
                )

            conn.commit()

            cursor.close()
            conn.close()

            return True

        except Exception as e:
            Messagebox.show_error(
                str(e),
                "Database Error"
            )
            return False

    # Next question
    def next_question():
        nonlocal question_number

        # grabs answer
        answer = answer_entry.get().strip()

        # Check if there is an answer
        if answer == "":
            Messagebox.show_error(
                "Please enter an answer.",
                "Error"
            )
            return

        # Check number
        try:
            answer = float(answer)
        except ValueError:
            Messagebox.show_error(
                "Please enter a number.",
                "Error"
            )
            return

        # Get limits
        minimum, maximum = questions_limit[question_number]

        # Check limits
        if answer < minimum or answer > maximum:
            Messagebox.show_error(
                f"Please enter a number between {minimum} and {maximum}.",
                "Invalid Answer"
            )
            return

        # Save valid answer
        answers.append(answer)

        # Check if this is the last question
        if question_number == len(questions) - 1:

            if save_answers():

                Messagebox.show_info(
                    "Your survey has been saved.",
                    "Survey Complete"
                )

                survey_window.destroy()

            return

        # Move to next question
        question_number += 1

        # Change question
        question_label.config(
            text=questions[question_number]
        )

        # Clear answer box
        answer_entry.delete(0, END)

    # Next button
    next_button = tb.Button(
        survey_window,
        text="NEXT",
        command=next_question
    )
    next_button.pack(pady=20)