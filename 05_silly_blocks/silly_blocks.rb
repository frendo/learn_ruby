#!/usr/bin/ruby

def reverser()
	yield.split(' ').each { |word| word.reverse!}.join(' ')
end

def adder(num = 1)
	yield + num
end

def repeater(num = 1)
	if block_given?
		while num > 0
			num = num - 1 
			yield
		end
	end
end
