var fileNumber : int
var lineNumber : int
var line : string
var inputtedFileName : string := ""


put "Please enter text file name : " ..
get inputtedFileName
open : fileNumber, inputtedFileName, get
if fileNumber > 0 then
    loop
	lineNumber += 1
	exit when eof (fileNumber)
	get : fileNumber, line : *
	put lineNumber, ": ", line
    end loop
else
    put "File not found. "
end if
