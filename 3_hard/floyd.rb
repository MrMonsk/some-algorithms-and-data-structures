class LinkedListNode
	attr_accessor :value, :next_node

	def initialize(value, next_node=nil)
		@value = value
		@next_node = next_node
	end
end

def print_values(list_node)
	if detect_cycle?(list_node)
		puts "cycle found"
		return
	end

	print "#{list_node.value} --> "
	if list_node.next_node.nil?
		print "nil\n"
		return
	else
		print_values(list_node.next_node)
	end
end

def is_infinite?(list_node)
	tortoise = list_node.next_node
	hare = list_node.next_node.next_node

end

def detect_cycle?(list)
	tortoise = list
	hare = list

	while hare
		tortoise = tortoise.next_node
		hare = hare.next_node
		
		hare = hare.next_node if hare

		break if tortoise == hare

	end

	hare ? true : false # returns hare true or false
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
node1.next_node = node3

# print_values(node3)

if detect_cycle?(node1)
	puts "detected cycle"
else
	puts "no cycle found"
end