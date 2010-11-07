#!/usr/bin/ruby

require 'mathn'

# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143?
#
def problem3(n)
	primes = Prime.new
	largest_prime = prime = 0
	while prime < n
		prime = primes.next
		if n % prime == 0
			largest_prime = prime
			n /= largest_prime
		end
	end
	largest_prime
end

puts "the answer is #{problem3(600851475143)}"
