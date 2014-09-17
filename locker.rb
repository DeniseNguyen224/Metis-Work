#Imagine a school that has 100 closed lockers 
#and 100 students standing in line. 
#The 1st student goes through and opens every locker, 
#the 2nd student closes every 2nd locker, 
#and the 3rd student toggles every 3rd locker. 
#If the remaining students go through, likewise, 
#and toggle the state of any locker that is a multiple of their number in line, 
#what lockers are open at the end?

#Make locker 1 loop thru all 100 students
#if the locker 1 is divisible by the student number print open

#do the above to all 100 lockers

class Locker
	Locker_range_array = (1..100).to_a
	
	def toggle
		Locker_range_array.each do |locker|
			Locker_range_array.each do |student|
					if locker % student == 0
						puts "#{locker}. opened"	
					elsif 
						puts "#{locker}. closed"
					end
			end	
		end
	end

end

locker = Locker.new
locker.toggle





