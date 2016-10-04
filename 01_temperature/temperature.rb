#!/usr/bin/ruby

def ftoc(fahrenheit)
	return (5 * (Float(fahrenheit) - 32)) / 9
end

def ctof(celsius)
	return (((9 *  Float(celsius)) / 5 ) + 32)
end
