import GUI

procedure HelloWorld
    put "Hello Daniel! :)"
end HelloWorld

procedure AmazingDaniel
    put "Isn't Daniel the best?!"
end AmazingDaniel

procedure Yes
    put "Ahlie he's such a good friend I'm so grateful :D"
end Yes

procedure No
    put "HE IS THE BEST DON'T EVEN LIEEEEEEE >:("
end No

var HelloWorldButton : int
HelloWorldButton := GUI.CreateButton (100, 50, 80, "Hello Daniel :)", HelloWorld)

var AmazingDanielButton : int
AmazingDanielButton := GUI.CreateButton (100, 100, 80, "AmAzInG dAnIeL", AmazingDaniel)

var QuitButton : int
QuitButton := GUI.CreateButton (200, 50, 80, "Quit", GUI.Quit)

var YesButton : int
YesButton := GUI.CreateButton (150, 200, 80, "Yes", Yes)

var NoButton : int
NoButton := GUI.CreateButton (150, 150, 80, "No", No)

loop
    exit when GUI.ProcessEvent
end loop
