def bubblesort(array)
	if array.length <= 1
		return array
	end
	swapped = true
	while swapped do
		swapped = false
		(array.length - 1).times do |i|
			if array[i] > array [i+1]
				array[i], array[i+1] = array[i+1], array[i]
				swapped = true
			end
		end
	end
	array.join(',')
end

ary = [2, 3, 5, 4, 1]
puts bubblesort(ary)