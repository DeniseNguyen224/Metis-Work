require "csv"


class MusicLibrary

	def initialize(file_name)
		@file_name = file_name
		@database = {}
	end

	def getsong
		CSV.foreach(@file_name, {headers:true}) do |row|
			artist = row["Artist"] 
			name = row["Name"]
			populate_database(artist, name)
		end
	end

	def populate_database(artist,name)
		name = []
		if !@database[artist]
			@database[artist] = name
		elsif 
			@database[artist] << name
			puts @database
		end 

	end



end

musiclibrary = MusicLibrary.new("music.csv")
musiclibrary.getsong


# Make a class to read in data
	#read in CSV file
	#create a hash with keys as the artist (string) and values(array) as the songs
		#if the artist doesn't exist, create pair
		#if the artist exists, popular the value array
# Make a class to query
	# ask user what artist
	# get artist
	# find the pair in the Library HASH with the artist as key
	# if the artist matches the key, output value array 