#!/usr/bin/ruby -w

# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see 
# that the 6^(th) prime is 13.
#
# What is the 10001^(st) prime number?
#

def problem7(max)
	primes = [2]
	n = primes.last + 1
	while primes.size < max
		prime = true
		i = 0
		while prime and i < primes.size
			prime = false if n % primes[i] == 0
			i += 1
		end
		primes << n if prime
		n += 2
	end
	primes.last
end

print "enter a number: "
n = gets.to_i
puts "the answer is #{problem7(n)}"
