def substrings(pattern, array)
	pattern.downcase!
	map = Hash.new(0)
	i = 0
	while(i < pattern.length)
		j = i
		sub = ""
		while(j < pattern.length)
			sub = sub + pattern[j]
			if (array.include?(sub))
				map[sub] += 1
			end
			j = j + 1
		end	
		i = i + 1
	end	

return map
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
