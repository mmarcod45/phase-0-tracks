require_relative 'game'

describe GuessWord do
  let(:game) { GuessWord.new("unicorn") }

  it "stores the word passed on initiation" do 
    expect(game.get_word).to eq "unicorn"
  end 

  it "gives the number of attempts the user has left" do
    expect(game.guess_chances).to eq 8
  end

  it "runs the game until a condition is met" do
    expect(game.run_game("unicorn", "c")).to eq "Congratulations! You won the game!"
  end 

  it "evalutes to see if guess was correct" do 
    expect(game.guess_word("unicorn", "c")).to eq "You have 6 attempt(s) left." 
  end 

  it "inputs the correct guesses even if a letter is represented more than once" do
    expect(game.correct_guess_insert("unicorn", "c")).to eq "Good job! 'a' is part of the word."
  end 

  it "has an ending message" do
    expect(game.ending_message).to eq "Congratulations! You won the game!"
  end 

end