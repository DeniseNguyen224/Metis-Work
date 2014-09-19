class Card
  def initialize(front_and_back)
    @front = front_and_back[:front]
    @back = front_and_back[:back]
  end

  def play
  	# Ask user to translate
  	puts "Translate #{@front}>"
  	
  	# Get Translation
  	tranlation = gets.chomp
  	
  	# Tell them if right or wrong
  	if translation == @back
  		puts "Correct!"
  	elsif
  		puts "Incorrect"
  	end

    #puts "Front is #{@front}, back is #{@back}"


  end
end
