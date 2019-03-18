# Write a program which will ask users for a string input.
# The program should display the input unless, it contains the letter 's'.

# If 's' is included change the output so that it will be 'th' instead.

# Examples:
# input = say hi
# output = thay hi

# input = mississippi
# output = miththiththippi

# Hint:
# Look up String on Ruby docs to help.

# Check your solution by running:
# ruby 15_change_letters.rb



# Your code here
puts "Please enter something here"
input = gets.chomp.downcase
input = input.split(" ") #splits input into an array of words
for word in input do #iterate through that array of words
    word = word.chars #create a second array of each letter in the word 
    for characters in word do #iterates through the letters
        if characters == "s"
            word[word.index(characters)] = "th" #replaces the s letter with th
        end
        wordarray << word
    end   
end

