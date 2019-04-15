# Spin words
# Difficulty: medium

# Write a function that takes in a string of one or more words, 
# and returns the same string, but with all five or more letter words 
# reversed. 

# Strings passed in will consist of only letters and spaces. 
# Spaces will be included only when more than one word is present.

# Examples:
# spin_words( "Hey fellow warriors" ) => returns "Hey wollef sroirraw" 
# spin_words( "This is a test") => returns "This is a test" 
# spin_words( "This is another test" )=> returns "This is rehtona test"

# Tests provided use rspec

def spin_words (words)
    array = words.split(" ")
    for eachword in array do
        eachword = eachword.reverse! if eachword.length >= 5
    end
    return array.join(" ")
end

# Trying to get it to work in less lines but it didn't because curly bois hate me.
# def spin_words (words)
#     array = words.split(" ")
#     array.each do |eachword| {eachword.length >= 5 ? eachword = eachword.reverse! : eachword = eachword}
#     return array.join(" ")
# end