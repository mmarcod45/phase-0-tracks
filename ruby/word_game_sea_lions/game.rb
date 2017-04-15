class GuessWord
  
  attr_reader :is_over
  
  def initialize(word)
    @word = word 
    @is_over = false
    @guess_chances = word.length 
    @current_state = ""  # "_ " * word.length #comment out for RSpec testing
    @wrong_guesses = ""
  end   

  def get_word
    @word
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
      #puts "You have #{@guess_chances} attempt(s) left." 
      p "You have #{@guess_chances} attempt(s) left." # # for RSpec Testing
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
    current_state = "_ " * word.length # for RSpec Testing
    current_state[position * 2] = guess 
    puts current_state
    word[position] = "_"
  end 
  p "Good job! 'a' is part of the word." # for RSpec Testing
end

def ending_message
  if !@current_state.include?("_") 
    @is_over = true
    p "Congratulations! You won the game!"
  elsif @current_state.include?("_") && @guess_chances == 0 
    @is_over = true
    p "Sorry. You did not win the game."
  else 
    @is_over = false 
  end 
end 
  
end 