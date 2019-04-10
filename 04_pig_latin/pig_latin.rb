#write your code here
#quiet
#ietquay
def get word

vowels = ['a', 'e', 'i', 'o', 'u']
	if (word.include?("qu"))
		word = word.sub("qu", "~")
	end
	if (vowels.include?(word[0]))
		
	elsif ((not vowels.include?(word[1])) and (not vowels.include?(word[0])) and (not vowels.include?(word[2])))
		word = word + word[0]
		word = word[1..word.length-1]
		word = word + word[0]
		word = word[1..word.length-1]
		word = word + word[0]
		word = word[1..word.length-1]		
		
	elsif ((not vowels.include?(word[1])) and (not vowels.include?(word[0])))
		word = word + word[0]
		word = word[1..word.length-1]
		word = word + word[0]
		word = word[1..word.length-1]		
		
	elsif(not vowels.include?(word[0]))
		word = word + word[0]
		word = word[1..word.length-1]
		
	end
	word = word.sub("~", "qu")
	return word + "ay"
end

def translate(word)
	arr = word.split(" ")
	if (arr.length == 1)
		return word = get(word)

	end
	word.split(" ").map {|match| match = get(match)}.join(" ")
end
