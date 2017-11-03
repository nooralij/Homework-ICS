var word : string := ""

put "Please enter done when you're done. "
loop
    put "Please enter a word with more than 2 letters. " ..
    get word
    exit when word = "done"
    if strintok (word) then
	put "Enter a word not a number. "
    elsif length (word) > 2 then
	put word (1) ..
	put word (*)
    else
	put "That word does not have more than 2 letters. "
    end if
end loop
put word (1) ..
put word (*)
