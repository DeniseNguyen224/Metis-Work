require "./deck"
require "./card"

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

decks = []

spanish_cards = []
spanish_cards << Card.new({front: "Gato", back: "Cat"})
spanish_cards << Card.new(front: "Perro", back: "Dog")
decks << Deck.new({name: "Spanish", cards: spanish_cards})

japanese_cards = []
japanese_cards << Card.new({front: "Neku", back: "Cat"})
japanese_cards << Card.new({front: "Inu", back: "Dog"})
decks << Deck.new({name: "Japanese", cards: japanese_cards})

flashcard_game = FlashcardGame.new(decks)
flashcard_game.play
