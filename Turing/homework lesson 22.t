const NUMBER_OF_LINES := 5
for decreasing row : NUMBER_OF_LINES .. 1
	% extra spaces
  for i : 1 .. NUMBER_OF_LINES - row
    end for
      % the repeating pattern * note the final one has only a star
    for i : 1.. row - 1
	put "*" ..
    end for
    put "*"
end for


const NUMBER_OF_LINE := 6
for decreasing ro : NUMBER_OF_LINE .. 2
	% extra spaces
  for i : 2 .. NUMBER_OF_LINE - ro
    end for
      % the repeating pattern * note the final one has only a star
    for i : 1.. ro - 1
	put "**" ..
    end for
    put ""
end for


const NUMBR_OF_LINE := 9
for decreasing ro : NUMBR_OF_LINE .. 2
	% extra spaces
  for i : 1 .. NUMBR_OF_LINE - ro
    end for
      % the repeating pattern * note the final one has only a star
    for i : 9.. ro - 1
	put "*" ..
    end for
    put "********"
end for
