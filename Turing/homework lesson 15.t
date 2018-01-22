var number : real
var lala : real
var students : real
var group : real
var leftover : real

put "Please insert a number. "..
get number
lala := number mod 7
if lala = 0 then
put "This number is divisible by 7"
elsif lala not = 0 then
put "This number is not divisible by 7"
end if

put "How many students are in your class? "..
get students
group := students div 4
leftover := students mod 4
if leftover = 0 then 
put "You can form exactly " , group put " groups of 4. "
elsif leftover not = 0 then
put "You can form " , group put "groups of 4, with " , leftover put "extra students without a group. "
end if
