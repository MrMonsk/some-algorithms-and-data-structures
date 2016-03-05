words = ["dog", "cat", "bird", "lion", "wolf"]

#takes an array and returns the index that matches the value
def linear_search(array, value)
	array.each_with_index do |element, index|
		if element == value
			return index
		end
	end
	false
end

# puts linear_search(words, "cat")

numbers = [1, 3, 5, 2, 4]

def binary_search(array, value, from=0, to=nil)
	if to == nil
		to = array.count - 1
	end

	mid = (from + to) / 2

	if value < array[mid]
		return binary_search(array, value, from, mid-1)
	elsif value > array[mid]
		return binary_search(array, value, mid+1, to)
	else
		return mid
	end	 	 
end

sorted_numbers = numbers.sort

puts binary_search(sorted_numbers, 2)

# quick sort -- code bubble sort 