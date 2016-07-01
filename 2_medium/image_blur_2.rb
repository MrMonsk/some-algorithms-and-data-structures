class Image
	attr_accessor :picture

	def initialize(picture)
		@picture = picture
	end

	def find_ones
		ones = []

		@picture.each_with_index do |row, i|
			row.each_with_index do |cell, j|
				if cell == 1
					ones << [i, j]
				end
			end
		end
		return ones
	end

	def blur(distance)
		distance.times do
			ones = find_ones
			@picture.each_with_index do |row, i|
				row.each_with_index do |cell, j|
					if ones.include?([i, j])
						@picture[i-1][j] = 1 unless i == 0 #up
						@picture[i+1][j] = 1 unless i == (@picture.length - 1) #down
						@picture[i][j-1] = 1 unless j == 0 #left
						@picture[i][j+1] = 1 unless j == (row.length - 1) #right
					end
				end
			end
		end
	end

	def output_image
		@picture.each do |i|
			puts i.join
		end
	end

end



# image = Image.new([
# 			[0, 0, 0, 0],
# 			[0, 1, 0, 0],
# 			[0, 0, 0, 1],
# 			[0, 0, 0, 0]
# 		])

image = Image.new([
	[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
	[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
])


puts "stock image:"
puts "------------"
image.output_image
puts "------------"

puts "blurred image:"
puts "------------"
image.blur(1)
image.output_image
puts "------------"

