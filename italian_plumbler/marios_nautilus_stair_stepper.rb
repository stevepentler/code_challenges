puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts "Enter a number less than 30"
puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~"
n = gets.chomp.to_i
puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts "Choose a symbol, letter, or number"
puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
text = gets.chomp.to_s


def repeat(text, n)
  i = 1
  until (i == n + 1)
    p ([text] * i).join.rjust(30) 
    i += 1
  end 
end

repeat(text, n)

