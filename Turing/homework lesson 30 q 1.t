var random_integer1 : int
var random_integer2 : int
var random_integer3 : int
var smallest : int

randint (random_integer1, 100, 200)
randint (random_integer2, 100, 200)
randint (random_integer3, 100, 200)

smallest := random_integer1
if random_integer3 < smallest then
    smallest := random_integer3
end if
if random_integer2 < smallest then
    smallest := random_integer2
end if
put smallest





