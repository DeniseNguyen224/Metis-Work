class Deck 
	attr_reader :name
	#def name
	#	@name

	def initialize(name)
		@name = name
	end 
end 


class FlashcardGame

	def initialize (decks)
		@decks = decks
	end

	def play

		loop do
			list_out_deck
			which_deck = ask_user_what_deck
			if which_deck == ""
				puts "exiting"
				break
			else 
				puts "playing"
			end
		end
	end


private

	def list_out_deck
	 	@decks.each {|decks| puts decks.name}
	end

	def ask_user_what_deck
		print "What deck would you like (enter if exiting)>"
		which_deck = gets.chomp 
		puts which_deck
		which_deck
	end
end

decks = []
decks << Deck.new("Spanish")
decks << Deck.new("Japanese")

flashcard_game = FlashcardGame.new(decks)
flashcard_game.play
