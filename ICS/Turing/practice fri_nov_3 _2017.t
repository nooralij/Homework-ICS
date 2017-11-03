var word : string := ""
var count : int := 0

for i : 1 .. 5
    put "Please enter a word(s). " ..
    get word
    if index (word, 'st') not= 0 then
	count += 1
    end if
end for
put "You entered a word with the phrase 'st' ", count, " number of time(s). "
