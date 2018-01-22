funtion reverse(word : string) : string
	var new_word : string := ""     
	for decreasing i : length(word) .. 1
		new_word += word(i)
	end for
	result new_word
end reverse

function palindrome(word : string) : boolean
	if reverse(word) = word then
		result true
	else
		result false
	end if
end palindrome

% main program

var word : string
put "Enter a word : "..
get word 
if palindrome(word) then
	put "Your word is a palindrome. "..
else 
	put "Your word is not a palindrome. "
end if
