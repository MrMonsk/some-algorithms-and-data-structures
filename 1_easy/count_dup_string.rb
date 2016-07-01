require 'test/unit'
extend Test::Unit::Assertions

def duplicate_count(text)
  original = text.upcase.chars
  original.select {|e| original.count(e) > 1}.uniq.count
end

assert_equal(duplicate_count("abBcde"), 1)