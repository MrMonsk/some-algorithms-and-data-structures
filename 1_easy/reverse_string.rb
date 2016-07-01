def reverse(input)
	ary = input.chars

	i = 0
	j = ary.length - 1
	while i < j
		last = ary[j]
		first = ary[i]

		ary[i] = last
		ary[j] = first

		i += 1
		j -= 1

	end

	return ary.join
end

def reverse2(x)
	rstring = ""
	(x.length-1).downto(0) do |i|
		rstring += x[i]
	end
	
	return rstring
end

puts reverse2("hello")