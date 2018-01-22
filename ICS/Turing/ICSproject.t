import GUI
var homeButton, citationsButton, infoButton, salaryButton, educationButton : int
var nextButton, backButton : int
var quitButton : int
var fileNumber : int := 0
var line : string
var page : int := 1
var font1 : int
font1 := Font.New ("Palatino:24:bold")

%setting the screen size
setscreen ("graphics:1000;900;nobuttonbar")
Window.Set (defWinId, "title:Computer Hardware Engineering!!! - Noor Ali")

%procedures for buttons
procedure home
    cls
    GUI.Refresh
    Font.Draw ("Computer Hardware Engineering!!!", 300, 700, font1, red)
end home

procedure salary
    cls
    GUI.Refresh
    open : fileNumber, "ICSprojectSalary.txt", get
    if fileNumber > 0 then
	loop
	    exit when eof (fileNumber)
	    get : fileNumber, line : *
	    put line
	end loop
    end if
end salary

procedure information
    cls
    GUI.Refresh
    open : fileNumber, "ICSprojectInfo.txt", get
    if fileNumber > 0 then
	loop
	    exit when eof (fileNumber)
	    get : fileNumber, line : *
	    put line
	end loop
    end if
end information

procedure citations
    cls
    GUI.Refresh
    open : fileNumber, "ICSprojectBibliography.txt", get
    if fileNumber > 0 then
	loop
	    exit when eof (fileNumber)
	    get : fileNumber, line : *
	    put line
	end loop
    end if
end citations

procedure exitProject
    cls
    GUI.Refresh
    Font.Draw ("Thank you for using my program! :)", 50, 180, font1, red)
    GUI.Quit
end exitProject

procedure education
    cls
    GUI.Refresh
    open : fileNumber, "ICSprojectEducation.txt", get
    if fileNumber > 0 then
	loop
	    exit when eof (fileNumber)
	    get : fileNumber, line : *
	    put line
	end loop
    end if
end education

%creating buttons
homeButton := GUI.CreateButton (400, 0, 10, "Home", home)
citationsButton := GUI.CreateButton (470, 0, 10, "Citations", citations)
quitButton := GUI.CreateButton (635, 0, 10, "Exit", exitProject)
infoButton := GUI.CreateButton (300, 0, 10, "Information", information)
salaryButton := GUI.CreateButton (560, 0, 10, "Salary", salary)
educationButton := GUI.CreateButton (210, 0, 10, "Education", education)

loop
    exit when GUI.ProcessEvent
end loop
