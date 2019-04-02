array = []

puts "Hello and Welcome to the Shirt Sale!"
puts "Would you like an Iron Man shirt?"
iron_shirt = gets.chomp
if iron_shirt == "yes"
    puts "How many would you like?"
    ironman_number = gets.chomp.to_i
    array.new(ironman_number, "x")
else 
    puts "Ok."
end 

puts "Would you like an Thor shirt?"
thor_shirt = gets.chomp
case thor_shirt == "yes"
    when "yes" 
    puts "How many would you like?"
    thor = gets.chomp.to_i
    array.new(thor, "y")
    puts "Ok."
end 

puts "Would you like an Wonder Woman shirt?"
if #yes
    puts "How many would you like?"
    wonderwoman = gets.chomp.to_i
    array.new(wonderwoman, "z")
else 
    puts "Ok."
end 
