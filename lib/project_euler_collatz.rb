# Collatz Problem
# The following iterative sequence is defined for the set of positive integers:
# n → n/2 (n is even)
# n → 3n + 1 (n is odd)
# Using the rule above and starting with 13, we generate the following sequence:
# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. 
# Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers 
# finish at 1.

def even_next(n)
	n/2
end
def odd_next(n)
	3*n + 1
end
def next_value(n)
	return even_next(n) if n%2 == 0
	return odd_next(n)
end
def collatz(n)
	final = [n]
	while !(final.include?(1)) do 
		final << next_value(final[-1])
	end
	final
end

def longest_collatz
	long_length = 1
	long_num = 1 
	i = 1
	while i < 1000000 do 
		arr = collatz(i)
		if arr.length > long_length
			long_length = arr.length
			long_num = i
		end
		i += 1 
	end
	long_num
end







