def stock_picker(arr)

i = 0
best = 0
v1 = 0
v2 = 0
arr.each do |item|
	j = i + 1

		while(j < arr.length)
			if (arr[j] - arr[i] > best)
				best = arr[j] - arr[i]
				v1 = i
				v2 = j			
			end
			j = j + 1
		end	

	i = i + 1
	end
	return [v1, v2]
end

print stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
puts

