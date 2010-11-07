#!/usr/bin/ruby

# A palindromic number reads the same both ways. The largest palindrome made 
# from the product of two 2-digit numbers is 9009 = 91 × 99.
# 
# Find the largest palindrome made from the product of two 3-digit numbers.
#
def palindrome?(n)
	n.to_s == n.to_s.reverse
end

def problem4(num_digits)
	max = 10 ** num_digits - 1
	min = max / 10
	largest_palindrome = 0
	for i in min..max
		for j in i+1..max
			prod = i * j
			if prod > largest_palindrome and palindrome?(prod)
				largest_palindrome = prod
			end
		end
	end
	largest_palindrome
end

print "enter num digits: "
n = gets.to_i
puts "the answer is #{problem4(n)}"
