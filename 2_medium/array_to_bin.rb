require 'test/unit'
extend Test::Unit::Assertions

def arr2bin(arr)
  #your code here
  if arr.empty?
    "0"
  elsif arr.all? {|i| i.is_a?(Integer)}
    sum = arr.inject {|sum, x| sum + x }
    sum.to_s(2)
  else
    false
  end
end

assert_equal(arr2bin([1, true]), false)
assert_equal(arr2bin([0,1,2]), "11")