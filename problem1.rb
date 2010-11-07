#!/usr/bin/ruby -w

# If we list all the natural numbers below 10 that are multiples of 
# 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
# Find the sum of all the multiples of 3 or 5 below 1000.
#
def problem1(n)
	multiples = (0..n-1).to_a
	multiples.reject! {|i| i % 3 != 0 and i % 5 != 0}
	multiples.inject {|sum,i| sum + i}
end

print "enter a number: "
n = gets.to_i
puts "the answer is #{problem1(n)}"
