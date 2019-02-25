# Write a method that will take two numbers,
# and return whichever is the largest.
#
# Example:
# largest_number(100,50) should return 100
# largest_number(10,20) should return 20
#
# Check your solution by filling in the folowing table:
# number_1 || number_2 || expected || actual
# 
# If your stuck try working togeather
# 
# Beast Mode:
# If you complete the challenge, feel free to come up
# with your own examples and test corner cases.
# 
# Examples - what if both numbers are equal or are strings?

def largest_number (number_1, number_2)
  if !number_1.is_a?(Numeric) or !number_2.is_a?(Numeric)
      puts "This answer is invalid." #checking if its numeric

      elsif  number_1 > number_2
        puts "#{number_1}" 
  
      elsif number_1 == number_2 
          puts "#{number_1} and #{number_2} are equal." #checking if equal
  
      else 
          puts "#{number_2}"
  end  
end 

puts largest_number(200, 100)
puts largest_number(123, 42)
puts largest_number(80, 97)
puts largest_number(133, 133)
puts largest_number(1234.2, 454)
puts largest_number(1234.2, "cat")
