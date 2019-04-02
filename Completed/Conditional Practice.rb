puts "What is your name?"
name = gets.chomp
puts "Hi #{name}! How old are you?"
age = gets.chomp.to_i

while age == 0
puts "Sorry, you didn't enter a valid number. Please try again:"
age = gets.chomp.to_i
end

#till100 = 100 - age
#from100 = age - 100

if age >= 100
    puts "You're already 100!"
    puts "#{name}, you turned 100 years old #{age - 100} year(s) ago!"
else 
    puts "Wow! You are  #{age} years old!"
    puts "#{name}, in #{100 - age} you will be 100 years old!"
end
