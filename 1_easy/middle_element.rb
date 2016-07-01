require 'test/unit'
extend Test::Unit::Assertions

def gimme(input_array)
  #your code here
  value = input_array.sort[1]
  input_array.each_index.select {|i| input_array[i] == value }[0]
end

p gimme([3,4,5]) # expect 1

assert_equal(gimme([2,1,3]), 0)