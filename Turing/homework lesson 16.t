var rainbow : string
var number1 : real
var number2 : real
var operation : string
var haha : real

put "Please insert a colour in the rainbow. "..
get rainbow
case rainbow of
label "Red", "red" : colour (12) put "That's the first colour in the rainbow."
label "Orange", "orange" : colour (42) put "That's the second colour in the rainbow."
label "Yellow", "yellow" : colour (43) put "That's the third colour in the rainbow."
label "Green", "green" : colour (10) put "That's the fourth colour in the rainbow."
label "Blue", "blue" : colour (11) put "That's the fifth colour in the rainbow."
label "Indigo", "indigo" : colour (105) put "That's the sixth colour in the rainbow."
label "Violet", "violet", "purple", "Purple" : colour (purple) put "That's the seventh colour in the rainbow."
end case

colour (black) put "Insert a number. "..
get number1 
put "Insert another number. "..
get number2
put "Insert one of the following operations : +, -, /, or *. "..
get operation
if operation = "+" then
haha := number1 + number2
put "The sum of your two numbers is ", haha
get operation
if operation = "-" then
haha :=
end if
