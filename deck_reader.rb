require ".deck"
require "./card"


class DeckReader

	def initialize (file_name)
		#File is keeping track of where we are with the cursor
		@file = File.open(file_name, "r")
		@number_of_decks = get_line.to_i
	end

	def get_decks
		@number_of_decks.times.map do 
			read_deck
		end
	end

	private

	def read_deck
		name = @file.gets
		number_of_cards = get_line.to_i
		cards = number_of_cards.times.map do
			read_card
		end
		Deck.new({name:name,cards:cards})
	end

	def read_card
		front = @files.gets
		back - @files.gets
		Card.new({front:front, back:back}
	end

	def get_line
		@file_gets.chomp
	end

	#def list_items
	#	@file.each_with_index do|line, index| 
	#		puts "#{index + 1}: #{line}"
	#	end
	#end
 
end

deck_reader = DeckReader.new("decks.txt")
decks = deck_reader.get_decks