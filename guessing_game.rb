require "./round" #evaluates the round.rb file, ./ means same directory

class GuessingGame #class is Camel Cases
	def initialize
		@total_guesses = 0
		@win_count = 0
	end

	NUMBER_OF_ROUNDS = 3 #constants are all CAPS

	def play
		puts "Hello, welcome to my game!"

		NUMBER_OF_ROUNDS.times do 
			round = Round.new
			round.play
			puts "You made #{round.number_of_guesses} guesses."
			add_guesses(round.number_of_guesses)
			if round.won?
				@win_count += 1
			end
		end
		puts "Your average number of guesses is #{average_guesses}."
		puts "Your total correct guess is #{@win_count}"
	
	end

	def add_guesses(number_of_guesses)
		@total_guesses += number_of_guesses
	end


	def average_guesses
		@total_guesses / NUMBER_OF_ROUNDS.to_f
	end


end

guessing_game = GuessingGame.new
guessing_game.play