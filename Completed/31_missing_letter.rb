# Missing letter
# Difficulty: medium/hard

# Write a method that takes an array of consecutive (increasing) 
# letters as input and that returns the missing letter in the array.

# You will always get an valid array. And it will be always exactly 
# one letter be missing. The length of the array will always be at least 2.
# The array will always contain letters in only one case.

# Example:

# missing_letter(['a','b','c','d','f']) -> 'e'
# missing_letter(['O','Q','R','S']) -> 'P'

# Included test uses rspec

def missing_letter(word)
    word.each { |letter| return letter.succ if word.include?(letter.succ) != true}
end

# def missing_letter(word)
#     for eachletter in word do #iterate through the array 
#         if word.include?(eachletter.succ) == true #check if the array includes the next letter
#             next #if it does go to the next one
#         else 
#             return  eachletter.succ #if it doesn't return the next letter.
#         end
#     end
# end