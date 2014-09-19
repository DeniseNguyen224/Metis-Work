class FizzBuzz

	def run
		#cycle each number 1-100
		#if divisible by 3: "Fizz"
		#if divisible by 5: "Buzz"
		#if divisible by booth: "FizzBuzz"

		(1..100).each do |number|
			if number % 3  == 0 && number % 5 == 0
				puts "FizzBuzz"

				elsif number % 3 == 0
				puts "Fizz"

				elsif number % 5 == 0
				puts "Buzz"

			end
		end
	end 
end

fizzbuzz = FizzBuzz.new
fizzbuzz.run