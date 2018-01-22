import GUI
var randomNumber : int
var inputtedNumber : real
var GuessingGame, QuitButton, GrowingButton : int
var count : int := 0
var thing : string := ""
var numberClicks : int := 0

procedure hide
    GUI.Hide (GuessingGame)
    GUI.Hide (GrowingButton)
end hide

procedure show
    GUI.Show (GuessingGame)
    GUI.Show (GrowingButton)
end show

procedure GameProcedure
    hide
    randint (randomNumber, 1, 10)
    loop
	put "Enter an integer number between 1 and 10. " ..
	GUI.Refresh
	get inputtedNumber
	exit when inputtedNumber = randomNumber
	put "HA TAKE THE L that's the wrong number! Try again. "
    end loop
    show
end GameProcedure

procedure grow
    numberClicks += 1
    GUI.SetLabel (GrowingButton, intstr (numberClicks))
end grow



GuessingGame := GUI.CreateButton (100, 100, 80, "Guessing Game", GameProcedure)
QuitButton := GUI.CreateButton (500, 100, 80, "Quit", GUI.Quit)
GrowingButton := GUI.CreateButton (300, 100, 80, "Growing Button", grow)

GUI.Hide (GrowingButton)
loop
    exit when GUI.ProcessEvent
end loop
