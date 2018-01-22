
var base : string
var height : string
var base_int : int

loop
    put "Please enter the length of the base of your triangle. "
    get base
    exit when strintok (base)
    put "Enter a number. "
end loop

loop
    put "Please enter the length of the height of your triangle. "
    get height
    exit when strintok (height)
    put "Enter a number. "
end loop
area := base * height / 2
put "The area of your triangle is " area " ."
