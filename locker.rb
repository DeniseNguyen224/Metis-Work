#Imagine a school that has 100 closed lockers 
#and 100 students standing in line. 
#The 1st student goes through and opens every locker, 
#the 2nd student closes every 2nd locker, 
#and the 3rd student toggles every 3rd locker. 
#If the remaining students go through, likewise, 
#and toggle the state of any locker that is a multiple of their number in line, 
#what lockers are open at the end?

class Locker
	
	def initialize 
		@range_array = (1..100).to_a

		@locker_condition =[]
		100.times do
			@locker_condition << "closed"
		end
	end

	
	def toggle
		@range_array.each do |student|
			@range_array.each do |locker|
				if locker % student == 0
					if @locker_condition[locker-1] == "opened"
						@locker_condition[locker-1] = "closed"
					else
						@locker_condition[locker-1] = "opened"
					end
				end
			end	
		end

		@locker_condition.each_with_index do |locker, index|
			puts "#{index+1}. #{@locker_condition[index]}"
		end
	end

end

locker = Locker.new
locker.toggle








