def remove_duplicates(array)
	clean_array = []
	array.each do |value|
		clean_array << value unless clean_array.include?(value)
	end
		return clean_array
end

puts remove_duplicates([1, 1, 1, 2, 3, 3, 4]).join
