class GuessWord
  
  attr_reader :is_over  
  
  def initialize(word)
    @word = word 
    @is_over = false
    @guess_chances = word.length 
    @current_state = "_ " * word.length
    @wrong_guesses = ""
  end
  
  def guess_chances
    @guess_chances += 1 
  end 
  
  def run_game(word, guess)
    until !@current_state.include?("_") || @guess_chances == 0
      guess_word(word, guess)
      break if !@current_state.include?("_") || @guess_chances == 0 
      guess = gets.chomp 
    end 
    ending_message
  end 
  
  def guess_word(word, guess) 
    if word.include?(guess) && !@current_state.include?(guess)
        correct_guess_insert(word, guess)
        @guess_chances -= 1
        puts "Good job! '#{guess}' is part of the word."
        puts "You have #{@guess_chances} attempt(s) left." 
    elsif @current_state.include?(guess) 
      guess_chances if word.include?(guess)
      puts "You already guessed '#{guess} correctly.' (does not count against you)"
      puts "You have #{@guess_chances} attempt(s) left."  
    elsif !word.include?(guess) && !@wrong_guesses.include?(guess)
      @wrong_guesses << guess
      @guess_chances -= 1
      puts "Try again. '#{guess}' is NOT part of the word"
      puts "You have #{@guess_chances} attempt(s) left." 
    else 
      guess_chances if !@wrong_guesses.include?(guess)  
      puts "You already guessed '#{guess} wrong.' (does not count against you)"
      puts "You have #{@guess_chances} attempt(s) left." 
    end 
  end 
  
  def correct_guess_insert(word, guess)
    until !word.include?(guess)
      position = word.index(guess)    
      @current_state[position * 2] = guess 
      puts @current_state
      word[position] = "_"
    end 
  end
    
  def ending_message
    if !@current_state.include?("_") 
      @is_over = true
      puts "*CONGRATULATIONS!* You won the game!"
    elsif @current_state.include?("_") && @guess_chances == 0 
      @is_over = true
      puts "Sorry. You did not win the game."
    else 
      @is_over = false 
    end 
  end 
  
end 

## user interface 
puts "User 1. Enter a word:"
word = gets.chomp
puts "_____________________"

game = GuessWord.new(word)


while !game.is_over
  puts "User 2. Guess the word:"
  guess = gets.chomp
  game.run_game(word, guess) 
end