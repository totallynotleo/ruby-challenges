
# A balanced number is the number that the sum of all digits to the left of the middle digit(s) 
# and the sum of all digits to the right of the middle digit(s) are equal.

# If the number has an odd number of digits then there is only one middle digit, 
# e.g. 92645 has middle digit 6; otherwise, there are two middle digits , 
# e.g. 1301 has middle digits 3 and 0

# The middle digit(s) should not be considered when determining whether a 
# number is balanced or not, e.g 413023 is a balanced number because the 
# left sum and right sum are both 5 ('30' are the middle digits).

# Number passed is always positive.

# Return a string "Balanced" or "Not Balanced"

# Examples


# balancedNum(7) 
# => "Balanced"
# Explanation:
# Since, the sum of all digits to the left of the middle digit (0) 
# and the sum of all digits to the right of the middle digit (0) are equal, then it's balanced.
# Note: The middle digit is 7.


# balancedNum(295591) 
# => "Not Balanced"
# Explanation:

# Since, the sum of all digits to the left of the middle digits (11) 
# and the sum of all digits to the right of the middle digits (10) are equal, then it's not balanced.
# Note: The middle digit(s) are 55.

# balancedNum(959)
# => "Balanced"
#Explanation:
# Since, the sum of all digits to the left of the middle digits (9) 
# and the sum of all digits to the right of the middle digits (9) are equal, then it's balanced.
# Note: The middle digit is 5.

# balancedNum(27102983) 
# => "Not Balanced"
# Explanation:
# Since, the sum of all digits to the left of the middle digits (10) 
# and the sum of all digits to the right of the middle digits (20) are equal, then it's not balanced.
# Note : The middle digit(s) are 02.

def balanced_num(number)
    numarray = number.to_s.chars #Creates an array with the number
    numlength = numarray.length
    firsthalf = 0
    secondhalf = 0
    #Time to find the pesky middle number(s)
    if numlength % 2 == 0 #if the number is even
        firstmiddlenumber = numlength / 2 #the higher of the middle numbers
        secondmiddlenumber = firstmiddlenumber - 1  # the lower of the middle numbers
    else #if the number is odd
        firstmiddlenumber = (numlength.to_f / 2) - 0.5 
        firstmiddlenumber = firstmiddlenumber.to_i
        secondmiddlenumber = firstmiddlenumber # there is only one middle number 
    end

    (0..(secondmiddlenumber-1)).each do |i| #puts the numbers from 0 to the middle number in the firsthalf array
        firsthalf += numarray[i].to_i
    end 

    ((firstmiddlenumber+1)..(numarray.length)).each do |i| #puts the numbers after the middle to the secondhalf array
            secondhalf += numarray[i].to_i
    end 


    if numlength < 3 #Any 1 or 2 digit number will be balanced.
        return "Balanced"
    elsif firsthalf == secondhalf 
        return "Balanced"
    else 
        return "Not Balanced"
    end
end


