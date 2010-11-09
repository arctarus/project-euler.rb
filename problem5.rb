#!/usr/bin/ruby

# 2520 is the smallest number that can be divided by each of the numbers from 1
# to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all of the
# numbers from 1 to 20?
#

# check if num is divisible by all the numbers from 1 to n
def divisible?(num, n)
	i = 2
	divisible = true
	while i <= n and divisible
		divisible = false if num % i != 0
		i += 1
	end
	divisible
end

# return the smallest number that can be divided by each of numbers from 1
# to n
def problem5(n)
	num = n * 2
	while not divisible?(num, n)
		num += n
	end
	num
end

print "enter a number: "
n = gets.to_i
puts "the answer is #{problem5(n)}"
