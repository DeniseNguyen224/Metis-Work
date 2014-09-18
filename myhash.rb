require "./pair"

class MyHash

	def initialize
		@pairs = [Pair.new("Gabe", 26)]
	end

	def [](key)
		#this method: if key, return value
		#find pair with relevant key
		found_pair = find_pair_with_key(key)
			
		if found_pair
			found_pair.value
		end
	end 

	def []=(key, new_value)
		#take advantage of attr_accessor
		#write in a new value after finding key
		found_pair = find_pair_with_key(key)
		found_pair.value = new_value
	end

	def find_pair_with_key(key)
		#the below is a block; a block is a mini method that has no name
		@pairs.find do |pair|
			pair.key == key
		end
	end 
end

my_hash = MyHash.new 

puts my_hash["Gabe"]
my_hash["Gabe"] = "possible highlander?"
puts my_hash["Gabe"]