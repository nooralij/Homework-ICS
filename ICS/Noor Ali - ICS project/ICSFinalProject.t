import GUI

%home screen
var educationButton, quitButton, homeButton, backButton, citationsButton : int
var labelMainTitle, labelQuit : int
%universities
var labelEducation : int
var waterlooUniButton, uniOfSeattleButton, senecaCollegeButton : int
var educationPic : int := Pic.FileNew ("education.jpg")
var universityOfSeattle : int := Pic.FileNew ("universityOfSeattle.jpg")
var senecaPic : int := Pic.FileNew ("senecaPic.jpg")
var universityOfWaterloo : int := Pic.FileNew ("universityOfWaterloo.jpg")
%about
var aboutButton, dutiesButton, salaryButton : int
var aboutPic : int := Pic.FileNew ("computerBrain.jpg")
var salaryPic : int := Pic.FileNew ("salary.jpg")
var dutiesPic : int := Pic.FileNew ("dutiesPic.jpg")
var citationsPic : int := Pic.FileNew ("citations.jpg")
var labelAbout : int
%file opening
var fileNumber : int
var line : string
%fonts
var font1 : int := Font.New ("mono:40")
var font2 : int := Font.New ("serif:35")
var font3 : int := Font.New ("serif:15")

%setting the screen
setscreen ("graphics:max;max,nobuttonbar")
setscreen ("title:Noor Ali - Computer Hardware Engineering!")
colorback (42)
procedure background
    Pic.ScreenLoad ("background.jpg", 350, 200, picMerge)
end background
%hiding and showing procedures
procedure hideUniversities
    GUI.Hide (waterlooUniButton)
    GUI.Hide (senecaCollegeButton)
    GUI.Hide (uniOfSeattleButton)
    GUI.Hide (labelEducation)
end hideUniversities

procedure showUniversities
    GUI.Show (waterlooUniButton)
    GUI.Show (senecaCollegeButton)
    GUI.Show (uniOfSeattleButton)
end showUniversities

procedure hideAbout
    GUI.Hide (dutiesButton)
    GUI.Hide (salaryButton)
    GUI.Hide (labelAbout)
end hideAbout

procedure showAbout
    GUI.Show (dutiesButton)
    GUI.Show (salaryButton)
    GUI.Hide (labelMainTitle)
    GUI.Hide (labelQuit)
    GUI.Hide (labelAbout)
end showAbout

procedure hideAll
    GUI.Hide (citationsButton)
    GUI.Hide (educationButton)
    GUI.Hide (aboutButton)
    GUI.Hide (labelQuit)
    GUI.Show (homeButton)
    GUI.Hide (labelMainTitle)
    GUI.Show (quitButton)
    GUI.Hide (labelEducation)
    GUI.Hide (labelAbout)
end hideAll

%general button procedures
procedure home
    hideUniversities
    hideAbout
    GUI.Hide (labelQuit)
    cls
    GUI.Refresh
    GUI.Show (citationsButton)
    GUI.Show (quitButton)
    GUI.Show (educationButton)
    GUI.Show (aboutButton)
    GUI.Show (labelMainTitle)
    background
end home

procedure quitProject
    GUI.Hide (homeButton)
    GUI.Hide (quitButton)
    hideAll
    GUI.Hide (labelMainTitle)
    cls
    GUI.Refresh
    Font.Draw ("(Turn volume up)", 50, 100, font3, red)
    play (">e-d-c-d-e-e-e-e-d-d-d-d-e-e-e-e")
    GUI.Show (labelQuit)
    GUI.Quit
end quitProject

procedure education
    hideAll
    hideAbout
    cls
    GUI.Refresh
    showUniversities
    GUI.Show (labelEducation)
    Pic.Draw (educationPic, 570, maxy div 2, picCopy)
end education

procedure citations
    hideAll
    hideAbout
    cls
    GUI.Refresh
    open : fileNumber, "Citations.txt", get
    if fileNumber > 0 then
	loop
	    exit when eof (fileNumber)
	    get : fileNumber, line : *
	    put line
	end loop
    end if
end citations

%university procedures
procedure waterlooUni
    cls
    GUI.Refresh
    open : fileNumber, "WaterlooUniversity.txt", get
    if fileNumber > 0 then
	loop
	    exit when eof (fileNumber)
	    get : fileNumber, line : *
	    put line
	end loop
    end if
    Pic.Draw (universityOfWaterloo, 550, 75, picCopy)
end waterlooUni

procedure uniOfSeattle
    cls
    GUI.Refresh
    open : fileNumber, "SeattleUniversity.txt", get
    if fileNumber > 0 then
	loop
	    exit when eof (fileNumber)
	    get : fileNumber, line : *
	    put line
	end loop
    end if
    Pic.Draw (universityOfSeattle, 570, 50, picCopy)
end uniOfSeattle

procedure senecaCollege
    cls
    GUI.Refresh
    open : fileNumber, "SenecaCollege.txt", get
    if fileNumber > 0 then
	loop
	    exit when eof (fileNumber)
	    get : fileNumber, line : *
	    put line
	end loop
    end if
    Pic.Draw (senecaPic, 570, 200, picCopy)
end senecaCollege

%info procedures
procedure about
    hideUniversities
    showAbout
    hideAll
    cls
    GUI.Refresh
    GUI.Show (labelAbout)
    Pic.Draw (aboutPic, 570, 200, picCopy)
end about

procedure duties
    cls
    GUI.Refresh
    open : fileNumber, "Duties.txt", get
    if fileNumber > 0 then
	loop
	    exit when eof (fileNumber)
	    get : fileNumber, line : *
	    put line
	end loop
    end if
    Pic.Draw (dutiesPic, 600, 100, picCopy)
end duties

procedure salary
    cls
    GUI.Refresh
    open : fileNumber, "Salary.txt", get
    if fileNumber > 0 then
	loop
	    exit when eof (fileNumber)
	    get : fileNumber, line : *
	    put line
	end loop
    end if
    Pic.Draw (salaryPic, 600, 100, picCopy)
end salary

%creating education buttons and labels
uniOfSeattleButton := GUI.CreateButton (100, 100, 100, "University of Seattle", uniOfSeattle)
waterlooUniButton := GUI.CreateButton (250, 100, 100, "Waterloo University", waterlooUni)
senecaCollegeButton := GUI.CreateButton (400, 100, 100, "Seneca College", senecaCollege)
%creating home buttons and labels
homeButton := GUI.CreateButton (10, 0, 100, "Home", home)
quitButton := GUI.CreateButton (1100, 0, 100, "Quit", quitProject)
educationButton := GUI.CreateButton (120, 0, 100, "Education", education)
labelEducation := GUI.CreateLabelFull (0, 0, "Education", maxx, maxy, GUI.CENTER + GUI.TOP, font1)
citationsButton := GUI.CreateButton (240, 0, 100, "Citations", citations)
labelMainTitle := GUI.CreateLabelFull (0, 0, "Computer Hardware Engineering", maxx, maxy, GUI.CENTER + GUI.TOP, font1)
labelQuit := GUI.CreateLabelFull (0, 0, "Thank you for using my program!", maxx, maxy, GUI.CENTER + GUI.TOP, font2)
%creating info buttons and labels
aboutButton := GUI.CreateButton (350, 0, 100, "About", about)
labelAbout := GUI.CreateLabelFull (0, 0, "About", maxx, maxy, GUI.CENTER + GUI.TOP, font1)
dutiesButton := GUI.CreateButton (100, 100, 100, "Duties", duties)
salaryButton := GUI.CreateButton (250, 100, 100, "Salary", salary)


hideUniversities
home
loop
    exit when GUI.ProcessEvent
end loop
