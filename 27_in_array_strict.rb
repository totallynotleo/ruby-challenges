# Is it in the array strict mode

# Arrays can store all different data types. 
# These arrays can get quite large and it can get 
# quite difficult to keep track of what is in them. 
# Sometimes, we want extra flexibility in an array search, 
# and want control over casing.

# Create a function that will take a string, 
# an array, an additional argument called **strict**, 
# and will return whether or not that string exists in the array. 
# The additional argument, strict, is a boolean argument.

# * If strict is true, in_array_strict? should care about LEtTeR cASinG
# * If strict is false, in_array_strict? should not care about LEtTeR cASinG and should return true for any match

# Create Test::Unit tests in 27_in_array_strict_test.rb

# Examples:
# in_array_strict?("HeLLo", ["hi", "howdy", "Hello"], true) => false
# in_array_strict?("HeLLo", ["hi", "howdy", "Hello"], false) => true

## Optional
# Try completing this challenge without using any array 
# helper methods, except for .each


#METHOD WITH HELPERS 
# def in_array_strict? (string, arr, strict)
# strict == false ? arr.map!{|x| x.downcase}.include?(string.downcase) : arr.include?(string)
# end

#METHOD WITHOUT HELPERS
def in_array_strict? (string, arr, strict)
  for each_element in arr do
    return true if (strict ? each_element : each_element.downcase) == (strict ? string : string.downcase)  
  end 
  return false 
end

# p in_array_strict?("hellO", ["hi", "hello", "howdy"], false) #should be true
# p in_array_strict?("hellO", ["hi", "hello", "howdy"], true) #should be false