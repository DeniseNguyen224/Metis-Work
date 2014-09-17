class Card 
	
	def initialize (front_and_back) #NEEDS a front & back (which are strings)
		@front = front_and_back[:front]
		@back = front_and_back[:back]
	end

	def play 
		puts "front is #{@front}; back is #{@back}"
	end

end