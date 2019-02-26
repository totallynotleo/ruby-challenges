# Sum Numbers

# Write a method that will take an array of numbers,
# and return their sum.

# Example:
# sum_numbers([1,1,1]) should return 3
# sum_numbers([5,2,100,0,10]) should return 117

# Check your solution by running the tests:
# ruby tests/04_sum_numbers_test.rb

def sum_numbers (numbers)
##INJECT METHOD
  # numbers.each do |thing|
  #   thing 
  #   this is where you put the thing to check for strings/not numbers
  # end 
  numbers.inject(:+)
# ##ACCUMULATOR METHOD
#   accumulator = 0
#   numbers.each do |num|
#     accumulator += num
#   end 
end

puts sum_numbers([12,31,98])
puts sum_numbers([1231238, 2130219848, 435349085340958])
puts sum_numbers([123, 1, 59, 16.5, 123123, 4])
# OPTIONAL:
# Go to the tests folder and open 04_sum_numbers_test.rb.
# Read over the tests and see if you can understand them.

# Try add at least three more tests, and test at least 2 corner cases.

# Hint:
# You could test what happens when you call sum_numbers([])?
