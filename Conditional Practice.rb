puts "What is your name?"
name = gets.chomp
puts "Hi #{name}! How old are you?"
age = gets.chomp.to_i
till100 = 100-age
from100 = age - 100
if age >= 100
    puts "You're already 100!"
    puts "#{name}, you turned 100 #{from100} years ago"
else 
    puts "Wow! You are  #{age} years old!"
    puts "#{name}, in #{till100} you will be 100 years old!"
