def caesar_cipher(msg, shift)
	i = 0
	while(i < msg.length)
		if (msg[i] >= 'a' and msg[i] <= 'z')
        msg[i] = (msg[i].ord + shift).chr
    if (msg[i] > 'z')
      msg[i] = (msg[i].ord - 26).chr
    end
    end	
    
    if (msg[i] >= 'A' and msg[i] <= 'Z')
        msg[i] = (msg[i].ord + shift).chr
    if (msg[i] > 'Z')
      msg[i] = (msg[i].ord - 26).chr
    end
    end
    
    i = i + 1
	end
  return msg
end

caesar_cipher("What a string!", 5)
