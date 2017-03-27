require_relative 'game_2'

describe GuessGame do
  let(:game) { GuessGame.new(["do the dishes", "mow the lawn"]) }

  it "user can enter a word or phrase and another user attemps to guess the word"
  	expect(game.guess_word).to eq "horse" 
  end 
end





# Guess Word class
@displaying = []
@displaying << "_ " *first_user.length

# User Interface

puts "Welcome to the Word Guess game"
game = GuessGame.new


puts "First user: Enter a word"
first_user = gets.chomp
split_first_user = first_user.split


displaying = []
displaying << "_ " * first_user.length
	
puts displaying
	
counter = 0 

while counter < first_user.length
	puts "Second user: Enter a letter to guess the word"
	second_user = gets.chomp
	if first_user.include?(second_user)
		puts "Great job!"
		first_user.index(second_user)
		position = first_user.index(second_user)
		displaying.delete "second_user"
		displaying.insert(position, "second_user")
		puts displaying
	else 
		puts "Wrong letter. Keep guessing!"
	end 
	counter += 1 
end 

if counter = 0 
	puts "Sorry. That is not the correct word"
else
	puts "Correct. You won the game!"
end 
