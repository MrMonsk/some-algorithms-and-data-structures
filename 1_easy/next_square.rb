require 'test/unit'
extend Test::Unit::Assertions

def find_next_square(sq)
  # Return the next square if sq is a perfect square, -1 otherwise
  root = Math.sqrt(sq)
  if root % 1 == 0
    (root + 1)**2
  else
    -1
  end
end

assert_equal(find_next_square(121), 144)
assert_equal(find_next_square(50), -1)