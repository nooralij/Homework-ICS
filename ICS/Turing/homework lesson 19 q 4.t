for i : 1 .. 15
color (i + 40)
put i
end for

var word : string
var leave : real
var total : real
total := 0

loop
put "Please enter a word. "..
get word
put "Enter 2 if you wish to leave. "..
get leave
exit when leave = 2
total += 1
end loop

if total not= 0 then
put "You entered ", total, "word(s). "
end if
