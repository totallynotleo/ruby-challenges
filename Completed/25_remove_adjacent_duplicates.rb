# Remove adjacent duplicates

# Sometimes we have input with adjacent duplicates, and we want to remove
# those adjacent duplicates, keeping the original input in order.

# Create a method, which takes a string argument and returns a string
# with duplicate adjacent elements removed, preserving the original
# order of characters and preserving original case. Your algorithm
# should be case sensitive, meaning that "Aa" should not be considered
# duplicate adjacent characters, like "aa" or "AA".  

# *E.g.* remove_adjacent_duplicates("AAaAbbCCCcDDcDA") should return "AaAbCcDcDA"

# *E.g.* remove_adjacent_duplicates("abcABCabcABC") should return exactly the same string: "abcABCabcABC"

def remove_adjacent_duplicates(input)
  array = input.chars
  index = 0
  while index < array.length 
    if array[index] == array[index+1]
      array.delete_at(index)
    else 
      index += 1
    end
  end 
  return array.join
  # if array.join == input.squeeze
  #   return array.join
  # else 
  #   return input.squeeze
  # end
end

