
def collatz(n)
	sequence = []
	sequence << n
	
	while sequence.last != 1
		if sequence.last % 2 == 0
			sequence << (sequence.last)/2
		else 
			sequence << (3*sequence.last) + 1
		end
	end

	return sequence.length
end

longest = 1 
highest_number = 0

(1..1000000).each do |n|
	if collatz(n) > longest
		longest = collatz(n)
		highest_number = longest
		# puts "longest sequence is #{longest}"
	end
end

puts "longest sequence is #{longest}"

