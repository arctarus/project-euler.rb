#!/usr/bin/ruby -w

print "enter a number: "
n = gets.to_i
multiples = (0..n-1).to_a
multiples.reject! {|i| i % 3 != 0 and i % 5 != 0}
sum = multiples.inject {|sum,i| sum + i}
puts "the answer is #{sum}"
