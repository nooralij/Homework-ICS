var word : string
var even : string
var newword : string := ""

put "Insert a word. " ..
get word
for i : 1 .. length (word)
    if i mod 2 = 0 then
	even := word (i)
	if even >= "a" or even <= "z" then
	    put chr (ord (even) - ord ("a") + ord ("A")) ..
	end if
    else
	put word (i) ..
    end if
    if i mod 2 not= 0 then
	even := word (i)
	if even >= "A" or even <= "Z" then
	    put chr (ord (even) - ord ("A") + ord ("a")) ..
	end if
    end if
end for
