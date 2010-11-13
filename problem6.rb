#!/usr/bin/ruby -w

# The sum of the squares of the first ten natural numbers is,
#      1^(2) + 2^(2) + ... + 10^(2) = 385
#
# The square of the sum of the first ten natural numbers is,
#     (1 + 2 + ... + 10)^(2) = 55^(2) = 3025
#
# Hence the difference between the sum of the squares of the first ten natural 
# numbers and the square of the sum is 3025 − 385 = 2640.
#
# Find the difference between the sum of the squares of the first one hundred 
# natural numbers and the square of the sum.
#
def problem6(n)
	sum_squares = (1..n).to_a.inject {|acum,i| acum += i ** 2 }
	square_sum = (1..n).to_a.inject {|acum,i| acum += i } ** 2
	square_sum - sum_squares
end

print "enter a number: "
n = gets.to_i
puts "the answer is #{problem6(n)}"
