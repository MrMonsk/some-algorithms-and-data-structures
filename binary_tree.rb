class Node
	attr_accessor :left_node, :right_node, :payload

	def initialize(payload)
		@payload = payload
	end

end

# node_a = Node.new("a")
# node_b = Node.new("b")
# node_c = Node.new("c")

# node_a.left_node = node_b
# node_a.right_node = node_c
@sorted = []

def traverse(root) # root node
	if root.left_node
		traverse(root.left_node)
	end
	@sorted << root.payload
	if root.right_node
		traverse(root.right_node)
	end

end

def add_to_tree(root, value)
	if value > root.payload
		if root.right_node
			add_to_tree(root.right_node, value)
		else 
			root.right_node = Node.new(value)
		end
	else
		if root.left_node
			add_to_tree(root.left_node, value)
		else
			root.left_node = Node.new(value)
		end
	end

end

def sort(unsorted_array)
	root = Node.new(unsorted_array.shift)
	unsorted_array.each do |value|
		add_to_tree(root, value)
	end
	traverse(root)

	return @sorted
end

puts sort([3,4,1])

# root = Node.new(4)
# add_to_tree(root, 6)
# add_to_tree(root, 4)
# add_to_tree(root, 5)

# traverse(root)