class Pair

	def initialize (key,value)
		@key = key
		@value = value
	end

	attr_reader :key
	attr_accessor :value 

end

pair = Pair.new("Denise",23)
puts pair.key
puts pair.value
pair.value = 24
#pair.value = (24)
puts pair.value 