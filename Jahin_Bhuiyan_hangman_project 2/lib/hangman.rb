class Hangman
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]

  def self.random_word
    DICTIONARY.sample
  end

  def initialize
    @secret_word = Hangman.random_word

    @guess_word = Array.new(@secret_word.length, "_")

    @attempted_chars = []

    @remaining_incorrect_guesses = 5
  end

  def guess_word
    @guess_word
  end

  def attempted_chars
    @attempted_chars 
  end

  def remaining_incorrect_guesses
    @remaining_incorrect_guesses
  end

  def already_attempted?(char)
    @attempted_chars.include?(char)
  end

  def get_matching_indices(char)
    new_arr = []
    @secret_word.each_char.with_index do |ele, idx|
      if char.include?(ele)
        new_arr << idx
      end
    end
    new_arr
  end

  def fill_indices(char, array)
    array.each do |index|
      @guess_word[index] = char 
    end
  end

  def try_guess(char)
    if self.already_attempted?(char)
      puts "that has already been attempted"
      return false
    end

    @attempted_chars << char
    
    matches = self.get_matching_indices(char)
    self.fill_indices(char, matches)
    @remaining_incorrect_guesses -= 1 if matches.empty?

    return true
  end

  def ask_user_for_guess
    puts "Enter a char:"
    input = gets.chomp
    self.try_guess(input)
  end

  def win?
    if @guess_word.join("") == @secret_word
      puts "WIN"
      true
    else
      false
    end
    
  end

  def lose?
    if @remaining_incorrect_guesses == 0
      puts "LOSE"
      return true
    else
      false
    end
  end

  def game_over?
    if self.win? || self.lose?
      puts @secret_word 
      return true
    else
      false
    end
  end


end
