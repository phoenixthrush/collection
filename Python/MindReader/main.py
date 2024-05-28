import tkinter as tk
from tkinter import ttk

def update_progress_bar():
    root.title('Reading Mind')
    current_value = progress_var.get()
    if current_value < 100:
        messages = [
            "Analyzing brainwaves...",
            "Scanning memories...",
            "Calculating probabilities...",
            "Decoding thoughts..."
        ]
        result_label.config(text=messages[current_value // 25])
        
        progress_var.set(current_value + 1)
        root.after(100, update_progress_bar)
    else:
        result_label.config(text=f"You're thinking of the number {user_input.get()}.")
        progress_var.set(0)
        root.title('Mind Reader')

root = tk.Tk()
root.title('Mind Reader')
root.geometry('400x200')

main_frame = tk.Frame(root)
main_frame.pack(padx=10, pady=10, fill='x', expand=True)

user_input = tk.StringVar()

tk.Label(main_frame, text="Think about a number between 1 and 10: ").pack(fill='x', expand=True)
tk.Entry(main_frame, textvariable=user_input).pack(fill='x', expand=True)
tk.Button(main_frame, text="Read my mind", command=update_progress_bar).pack(fill='x', expand=True, pady=10)

result_label = tk.Label(main_frame, text="")
result_label.pack(fill='x', expand=True)

progress_var = tk.IntVar()
ttk.Progressbar(main_frame, orient='horizontal', length=200, mode='determinate', variable=progress_var, maximum=100).pack(fill='x', expand=True, pady=10)

root.mainloop()
