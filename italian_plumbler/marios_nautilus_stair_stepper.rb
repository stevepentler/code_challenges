require 'pry'
puts "Enter a number"
n = gets.chomp.to_i
text = "#"


def repeat(text, n)
  p ([text] * n).join
end

n.times do 
  repeat(text, n).rjust(10)
  n -= 1
end




five = repeat("#", 5)