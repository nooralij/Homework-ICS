var startTime, finishTime : real
var distanceTraveled : real
var averageSpeed : real
var timeTraveled : real

put "Enter the starting time of the trip in hours : "
get startTime
put "Enter the finishing time of the trip in hours : "
get finishTime
put "Enter the distance traveled in km : "
get distanceTraveled
timeTraveled := finishTime - startTime
put "The average speed of the trip is ", distanceTraveled / timeTraveled, " km per hour."
