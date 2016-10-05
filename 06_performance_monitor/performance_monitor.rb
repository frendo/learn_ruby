#!/usr/bin/ruby

def measure(x = 0)
	t = Time.now
	if x > 0
		x.times { |i| yield }
		elapsed_time = ((Time.now - t).to_f)/x.to_f
	else
		yield
		 elapsed_time = Time.now - t
	end
	return elapsed_time
end
