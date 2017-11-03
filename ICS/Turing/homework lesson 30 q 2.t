var random : int
var count : int := 0

loop
    randint (random, 1, 100)
    put random, ", " ..
    exit when random >= 90 and random < 100
    count += 1
end loop
put skip
put "You entered ", count, " amount of numbers before getting a number in the 90's. "
