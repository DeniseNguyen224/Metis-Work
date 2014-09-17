#Imagine a school that has 100 closed lockers 
#and 100 students standing in line. 
#The 1st student goes through and opens every locker, 
#the 2nd student closes every 2nd locker, 
#and the 3rd student toggles every 3rd locker. 
#If the remaining students go through, likewise, 
#and toggle the state of any locker that is a multiple of their number in line, 
#what lockers are open at the end?

class Locker

	def toggle
		(1..100).each do |locker_number|
			if locker_number % 100 == 0
				puts "opened"
		 	elsif locker_number % 99 == 0 
		 		puts "open"
			else
				puts locker_number
			end
		end
	end

end

locker = Locker.new
locker.toggle