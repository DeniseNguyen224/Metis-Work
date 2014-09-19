#Write a program that takes a series of names, and returns a random name from that list. 
#The program should stop collecting names when you enter a blank name.

#takes a series of names
#stop collecting when you end a blank name
#spit out random name

class Lottery

	def initialize 
		@collect_names = []
	end 


	def pick_random
		loop do
			print "Add a name>"
			name = gets
			if name != ""
				@collect_names << name
			else name == ""
				break
			end
		end
		print @collect_names
	end
end

lottery = Lottery.new
lottery.pick_random