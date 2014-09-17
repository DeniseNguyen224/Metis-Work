class Pair

	def initialize (key,value)
		@key = key
		@value = value
	end

	attr_reader :key
	attr_reader :value
	
	attr_writer :value	
	attr_writer :value
	#def key=(new_key)
	#	@key = new_key
	#end

	#def value=(new_value)
	#	@value = new_value
	#end

end

pair = Pair.new("Denise",23)
puts pair.key
puts pair.value
pair.value = 24
#pair.value = (24)
puts pair.value 