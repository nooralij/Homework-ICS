%Initializing variables
var radius : int
var circumference : real
var area : real
var loan : real
var interest : real
var total_interest : real

%Getting input from user
put "Input radius: "..
get radius

%Proccessing input
circumference := radius * 2 * 3.14
area := radius * radius * 3.14

%Outputting data
put "Circumference: " , circumference , " Area: ", area

%Getting input from user
put "Input loan: ".. 
get loan
put "Input interest rate: "..
get interest
total_interest:= loan * interest
put "Your total interest rate is " , total_interest
