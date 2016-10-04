#!/usr/bin/ruby

def add(x, y)
	return (x + y)
end

def subtract(x, y)
	return (x - y)
end

def sum(additions)
	return (additions.inject(0) { |sum, x| sum + x })	
end

def multiply(multiples)
	return (multiples.inject(:*))
end

def power(base, exponent)
	return (base **  exponent)
end

def factorial(integer)
	return (1..integer).reduce(:*) || 1
end
