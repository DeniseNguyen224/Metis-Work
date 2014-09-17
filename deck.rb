#Deck Template

class Deck 

	attr_reader :name #gives other classes access to the name variable
	#def name
	#	@name

	def initialize(name_and_cards) #deck NEEDS names and cards
		@name = name_and_cards[:name]
		@cards = name_and_cards[:cards]
	end 

	def play
		@cards.each do |card|
			card.play
		end
	end

end 