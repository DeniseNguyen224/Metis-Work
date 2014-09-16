class Round
	#Round.new calls this method
	MAXIMUM_GUESSES = 2
	
	def initialize 
		@answer = rand(1..10)
		@number_of_guesses = 0
		@won = false
		
	end

	attr_reader :number_of_guesses
	# def number_of_guesses
	#	@number_of_guesses
	# end

	def won?
		@won
	end

	def play
		puts "-------NEW ROUND!------"
		MAXIMUM_GUESSES.times do
	 		puts "The answer is #{@answer}"
			print "Enter a number> " #puts "Answer is #{answer}; guess was #{guess}."
			guess = gets.chomp 
			guess = guess.chomp.to_i #OR gets.chomp.to_i
			@number_of_guesses += 1 #@number_of_guesses = @number_of_guesses + 1
			
			if correct?(guess)
				tell_user_they_are_correct
				@won = true
				break #stops looping if correct
			else
				tell_user_they_are_incorrect
			end
		end
	end

	private 

	def correct?(guess) #delete "answer because @answer is global"
		guess == @answer
	end

	def tell_user_they_are_correct
		puts "Your guess is correct."
	end

	def tell_user_they_are_incorrect
		puts "Your guess is incorrect."
	end

end