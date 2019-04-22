# Interesting number

# An interesting number is one with at least 3 digits,
# in which the digits are either incrementing or decrementing.

# Examples:
# interesting_number(789) => true
# interesting_number(321) => true
# interesting_number(798) => false
# interesting_number(6) => false
# interesting_number(23) => false

# When the digits are incrementing, 0 comes after 9:
# interesting_number(7890) => true
# When the digits are decrementing, 0 comes after 1:
# interesting_number(3210) => true

#THIS IS A JOKE VERSION I'LL GET THE PROPER VERSION WORKING SOON (IT'LL BE MORE LEGIBLE)
def interesting_number(number)
    return false if number.to_s.split("").length < 3 
    number.to_s.split("").sort[0] == "0" ? number.to_s.split("").delete_at(0) && number.to_s.split("").push("0") : x = x
    return number.to_s.split("")[0] < number.to_s.split("")[-1] ? number.to_s.split("").sort == number.to_s.split("") || false : number.to_s.split("").sort.reverse == number.to_s.split("") || false
end

def interesting_number(number)
    number_in_array = number.to_s
    if number_in_array.length < 3 
        return false 
    else 

end
