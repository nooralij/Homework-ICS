import GUI

procedure Joy
    put "JOY IS A GORILLAAAAAAAAAA!!! >:)"
end Joy

procedure amazing
    put "She's so smart and kind and beautiful inside out and SUCH A GOOD FRIEND TOO!"
end amazing

var JoyButton : int
JoyButton := GUI.CreateButton (200, 50, 80, "GORILLA", Joy)

var amazingbutton : int
amazingbutton := GUI.CreateButton (300, 50, 80, "Amazing", amazing)

var QuitButton : int
QuitButton := GUI.CreateButton (300, 50, 80, "Quit", GUI.Quit)

loop
    exit when GUI.ProcessEvent
end loop
