var given_temperature : real
var height : real
var price_1 : real
var price_2 : real
var price_3 : real

put "Please insert a temperatue of degrees Celsius. "..
get given_temperature
if given_temperature >= 30 then
put "Damn it's hot just like me."
elsif given_temperature <= 30 then
put "Wow it's nearly as cold as your heart."
end if
put "State your height in cm "..
get height
if height > 175 then
put "Jheeeez you as tall as the CN tower."
end if
