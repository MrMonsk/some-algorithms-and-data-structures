class Image
	def initialize(ary)
		@image = ary
	end

	def output_image
		@image.each do |y|
			puts y.each {|p| p}.join("")
		end
	end

end

image = Image.new([
			[0, 0, 0, 0],
			[0, 1, 0, 0],
			[0, 0, 0, 1],
			[0, 0, 0, 0]
		])

image.output_image
