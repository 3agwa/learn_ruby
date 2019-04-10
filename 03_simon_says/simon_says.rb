#write your code here

def echo name
	return name
end

def shout smth
	return smth.upcase
end

def repeat(smth, num = 2)
ret = String.new
	while(num > 0)
		ret = ret + smth		
		num = num - 1
		if (num > 0)
		ret = ret + " "
		end
	end
return ret
end


def start_of_word(string, num)

	ret = String.new
	i = 0
	while(i < num)
		ret << string[i]
		i = i + 1
	end
return ret
end

def first_word(string)

ret = String.new
i = 0
len = string.length
	while(i < len)
		if(string[i] == ' ')
			break
		end
		ret << string[i]
		i = i + 1
	end
return ret
end

def titleize(str)
    str.capitalize!
    words_no_cap = ["and", "or", "the", "over", "to", "the", "a", "but"]
    phrase = str.split(" ").map {|word| 
        if words_no_cap.include?(word) 
            word
        else
            word.capitalize
        end
    }.join(" ") 
  phrase
end
