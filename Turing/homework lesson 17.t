%page 100 questions 13,14
var tickets : real
var food : real
var DJ : real
var hall : real
var decorations : real
var waiting_staff : real
var miscellaneous : real
var total : real
var cof : real

put "The Prom Committee at your school is selling tickets for $65. "
tickets := 65
put "Please insert the cost of the food. "..
get food
put "Please insert the cost for the DJ. "..
get DJ
put "Please insert the cost of the hall. "..
get hall
put "Please insert the cost of the decorations. "..
get decorations
put "Please insert the cost of the waiting staff. "..
get waiting_staff
put "The cost for miscellaneous expenditures is $100. "
miscellaneous := 100
total := food + DJ + hall + decorations + miscellaneous
put "The total cost of expenses is ", total
cof := total / tickets
put "The Prom Committee must sell ", cof put "tickets. "

var name : string
var test1 : real
var test2 : real
var test3 : real
var test4 : real
var test5 : real
var correct1 : real
var correct2 : real
var correct3 : real
var correct4 : real
var correct5 : real
var percent1 : real
var percent2 : real
var percent3 : real
var percent4 : real
var percent5 : real

put "Please insert your name. ".. 
get name
put "How much is the first test out of? "..
get test1
put "How much is the second test out of? "..
get test2
put "How much is the third test out of? "..
get test3
put "How much is the fourth test out of? "..
get test4
put "How much is the fifth test out of? "..
get test5
put "How many correct answers did you get on the first test? "..
get correct1
put "How many correct answers did you get on the second test? "..
get correct2
put "How many correct answers did you get on the third test? "..
get correct3
put "How many correct answers did you get on the fourth test? "..
get correct4
put "How many correct answers did you get on the fifth test? "..
get correct5
percent1 := correct1 / test1 * 100
put "You recieved ", percent1 .. put "% on your first test. "
percent2 := correct2 / test2 * 100
put "You recieved ", percent2 .. put "% on your second test. "
percent3 := correct3 / test3 * 100
put "You recieved ", percent3 .. put "% on your third test. "
percent4 := correct4 / test4 * 100
put "You recieved ", percent4 .. put "% on your fourth test. "
percent5 := correct5 / test5 * 100
put "You recieved ", percent5 .. put "% on your fifth test. "

%page 174 question 1,2,6,7,17


