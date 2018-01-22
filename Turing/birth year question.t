var userBirthYear : int
var currentYear : int
var age : int

put "Enter the year of your birth : "
get userBirthYear
put "What year is it now? "
get currentYear
age := currentYear - userBirthYear
put "You are now ", age, " years old. "
