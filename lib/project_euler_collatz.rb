def even_next(n)
	n/2
end

def odd_next(n)
	(n * 3)+1
end

def next_value(n)
	n.even? ? even_next(n) : odd_next(n)
end

def collatz(n)
	arr = []
	until arr[-1] == 1
		arr << n 
		n = next_value(n)
	end
	arr
end

def longest_collatz
	max = []
	num = 0
	999999.times do |i|
			puts i
		current = collatz(i+1)
		if current.length > max.length
			max = Array.new(current)
			num = i+1
		end
	end
	num
end