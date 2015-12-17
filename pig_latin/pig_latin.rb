require 'pry'
class PigLatin

  def run
    loop do 
      puts "hello, please enter a word or phrase"
      string = gets.chomp
      puts latinify(string) 
      break if latinify(string).include?("oodbye-gay!!")
    end 
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
    if word == "exit!"
      "oodbye-gay!"
    elsif starts_with_vowel(word)
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