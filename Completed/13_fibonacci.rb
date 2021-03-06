# nthFibonacci

# A Fibonacci sequence is a list of numbers that begins with 0 and 1, and each
# subsequent number is the sum of the previous two.

# For example, the first seven Fibonacci numbers are: 0 1 1 2 3 5 8

# Write a method that will return the nth number of the sequence.

# The syntax is easy, getting your head around the algorithm is the challenge.
# Write the sequence on a piece of paper first and think about the steps
# you take for each number. Translate this to pseudocode and then to ruby.

# Difficulty:
# 6/10

# Example:
# nthFibonacci(0) -> 0
# nthFibonacci(3) -> 2
# nthFibonacci(6) -> 8

# Check your solution by running the tests:
# ruby tests/13_fibonacci_test.rb

def nthFibonacci(n)
    fib_array = [0,1]
    (2..n).each do |i|
        fib_array.push(fib_array[i-1] + fib_array[i-2])
    end 
    return fib_array[n]
end

def recursive_fibonacci(n)
    n <= 1 ? n : recursive_fibonacci(n-1) + recursive_fibonacci(n-2)
# if n <= 1
#     return n
# else
#     return recursive_fibonacci(n-1) + recursive_fibonacci(n-2)
# end
end


