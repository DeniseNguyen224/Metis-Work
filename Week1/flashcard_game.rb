class FlashcardGame

	def initialize (decks)
		@decks = decks
	end

	def play
		loop do
			list_out_deck
			deck = ask_user_what_deck
			if deck
				puts "would play #{deck.name}"
				deck.play
			else 
				puts "exiting"
				break
			end
		end
	end


private

	def list_out_deck
	 	@decks.each {|decks| puts decks.name}
	end

	def ask_user_what_deck
		print "What deck would you like (enter if exiting)>"
		requested_deck_name = gets.chomp 
		# @deck.find {|deck| deck.name == requested_deck_name}
		#Finds the deck and split it out
		
		deck = @decks.find do |deck| 
			deck.name == requested_deck_name 
		end
	end
end
