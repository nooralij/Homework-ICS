var integer1 : int
var integer2 : int
var blah : int

put "Please insert an integer. "..
get integer1
put "Please insert a second integer. "..
get integer2

put "I failed this question but I don't get it and Michael isn't here so I'll just move on. "

var even1 : real
var even2 : real
var lala : real
var haha : real
var heh : real
var omg : real

put "Please enter an even number. "..
get even1
lala := even1 mod 2
if lala not = 0 then
put "Go back to preschool and learn what an even number is. "
elsif lala = 0 then
put "Please enter another even number larger than the last one. "
end if

get even2
heh := even2 - even1

haha := even2 mod 2
if haha not = 0 then
put "Go back to preschool and learn what an even number is. "
elsif haha = 0 then
put "yay. "
end if

loop
omg = even1 + 2
put omg
end loop
