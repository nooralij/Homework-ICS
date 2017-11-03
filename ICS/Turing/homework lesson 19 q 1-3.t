var integer : int
var name : string
var howmany : real
var number : real

for i : 0 .. 13
    put i, ", " ..
end for
put "Please enter a integer. "..
get integer
for i : 1 .. 13
put integer * i, " "
end for

howmany := 0
loop
put "Please insert your full name. "..
get name : *
put "Yo nice to meet you ", name, ". "
put "Enter a negative number when you want the program to stop. "
put "Enter a positive number if you wish to continue. " ..
get number
howmany += 1
exit when number < 0
end loop
put "You entered your name", howmany, "time(s)."
