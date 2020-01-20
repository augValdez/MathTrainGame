from tkinter import *
from tkinter import messagebox


'''
how to tkinter
https://pythonprogramming.net/python-3-tkinter-basics-tutorial/

'''

class Window(Frame):


    def __init__(self, master=None):
        Frame.__init__(self, master)                 
        self.master = master
        self.init_window()

    #Creation of init_window
    def init_window(self):

        # changing the title of our master widget      
        self.master.title("Mad River Math Train")

        # allowing the widget to take the full space of the root window
        self.pack(fill=BOTH, expand=1)

        # creating a button instance
        student = Button(self, text="Student")
        teacher = Button(self, text="Teacher")

        # placing the button on my window
        middleY = Window.winfo_height(self) * 0.5
        middleX = Window.winfo_width(self) * 0.5 
        print(middleX, middleY)
        student.place(x = middleX, y = middleY + 100)
        teacher.place(x = middleX, y = middleY - 100)

root = Tk()

#adding background
C = Canvas(root, bg="blue", height=250, width=300)
puzzle = PhotoImage(file = "C:\\Users\\augie\\OneDrive\\Documents\\2019-20semester\\spring2020\\SoftwareEngineering\\puzzle.png")
background_label = Label(root, image=puzzle)
background_label.place(x=0, y=0, relwidth=1, relheight=1)

C.pack()

#size of the window
root.geometry("400x300")

app = Window(root)
root.mainloop()
