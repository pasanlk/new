import main
import demo

user_input = input("please enter required method(email or show_now); ")
if user_input == "show_now":
    main.print_df()
elif user_input == "email":
    demo.send_mail()
