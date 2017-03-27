class GuessGame

	def initialize(word)
		@word = word 
	end 

	def guess_word
		while @word != ""
			puts "That is not the correct word. Try again!"
		else
			puts "That is the correct word. Great job!"
		end 
	end 
end 