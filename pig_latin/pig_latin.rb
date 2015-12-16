require 'pry'
class PigLatin

  def run
    puts "hello, please enter a word or phrase"
    string = gets.chomp
    puts latinify(string) + " oodbye-gay!"
  end 

  def latinify(string)
    result = splitter(string).map do |word|
      route(word)
    end
    result.join(" ")
  end 

  def splitter(string)
    string.split
  end 

  def route(word)
    if starts_with_vowel(word)
      latinify_vowel(word)
    else 
      latinify_consonant(word)
    end
  end 

  def starts_with_vowel(string)
    vowels = ["a", "e", "i", "o", "u"]
    vowels.include?(string.chars.first)
  end 

  def latinify_vowel(string)
    string + "-way"
  end 

  def latinify_consonant(string)
    characters = string.chars
    mover = characters.first 
    characters.shift
    characters.join + "-#{mover}ay"
  end 
end 

p = PigLatin.new
p.run 

  # loop do
  #   puts "What would you like to translate:"
  #   string = gets.chomp 

  #   result = PigLatin.latinify(string) + "oodbye-gay!"
  #   puts result 
  # end 