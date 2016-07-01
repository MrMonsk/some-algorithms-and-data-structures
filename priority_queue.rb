#implementation of several priority queues in Ruby
#ruby's standart implementation:

q = Queue.new
q << 1
q << 2
q << 3
p q.pop #should return 1

#element class for our priority queues
class Element
  include Comparable # module/mixin that allows us to use <=> to compare values
  
  attr_accessor :name, :score #gives us two params to work with
  
  def initialize(name, priority) 
  
end