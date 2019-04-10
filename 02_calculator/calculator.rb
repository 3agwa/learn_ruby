#write your code here

def add(a, b)
	return a + b
end

def subtract(a, b)
	return a - b
end

def sum arr
ret = 0
arr.each do |curr|
	ret = ret + curr
         end

return ret
end

def multiply a
mul = 1
a.each do |curr|
	mul = mul * curr
	end
return mul
end

def power(a, b)
	if (b == 1)
		return a;
	end
	return a * power(a, b - 1)
end
