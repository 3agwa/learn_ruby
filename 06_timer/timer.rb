class Timer
  #write your code here
	attr_accessor :seconds

	def initialize
		@seconds = 0
	end
	
	def time_string
		@hours = seconds / (60*60)
		@minutes = (seconds%(60*60)) / 60
		@seconds = (seconds % 60 )
		ret = fix(@hours).to_s + ":" + fix(@minutes).to_s + ":" + fix(@seconds).to_s
 		#return @seconds
	return ret
	end
private
	def fix(num)
		if (num < 10)
			return "0" + num.to_s
		end
	return num
	end
end
