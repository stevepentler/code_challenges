require 'pry'

class PigLatin

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
    return "oodbye-gay!" if word == "exit!"
    return latinify_vowel(word) if starts_with_vowel(word) == true
    return latinify_consonant(word) if starts_with_vowel(word) == false
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