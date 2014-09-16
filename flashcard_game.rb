class FlashcardGame

	def play
		loop do
			deck = ask_user_what_deck
			if deck == ""
				puts "exiting"
				break
			else 
				puts "playing"
			end
		end
	end

	private

	def ask_user_what_deck
		print "What deck would you like (enter if exiting)>"
		deck = gets.chomp 
		puts deck
		deck
	end
end

flashcard_game = FlashcardGame.new
flashcard_game.play