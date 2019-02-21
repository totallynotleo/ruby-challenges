puts "What is your name?"
name = gets.chomp
puts "Hi #{name}! How old are you?"
age = gets.chomp.to_i
till100 = 100-age
puts "Wow! You are  #{age} years old!"
puts "#{name}, in #{till100} you will be 100 years old!"

puts "Would you like to be more precise?"
input = gets.chomp 

