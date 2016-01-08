require 'pry'
puts "Enter a number"
n = gets.chomp.to_i
puts "Please Choose a symbol"
text = gets.chomp.to_s


def repeat(text, n)
  i = 1
  until (i == n + 1)
    p ([text] * i).join.rjust(20) 
    i += 1
  end 
end


repeat(text, n)

