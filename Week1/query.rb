class Query 

	def query
		puts "Enter an artist to get all songs:"
		artist_wanted = gets.chomp
		@artist == artist_wanted
		puts library["artist"]
	end
end