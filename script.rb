def add_numbers(num1, num2)
	return num1 + num2
end

def subtract_numbers(num1, num2)
	return num1 - num2
end

add_numbers2 = lambda do |num1, num2|
	return num1 + num2
end

subtract_numbers2 = lambda do |num1, num2|
	return num1 - num2
end

# puts "the sum is #{add_numbers(3,4)}!"
# puts "the difference is #{subtract_numbers(3,4)}!"
# puts "sum via lambda method is #{add_numbers2.call(3,4)}!"
# puts "difference via lambda method is #{subtract_numbers2.call(3,4)}!"

puts add_numbers.inspect