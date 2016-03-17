def cyclops?(n)
  # Your code here
  binary = n.to_s(2)
  array = binary.chars
  if array.count.odd? && array.count{|e| e=="0"} == 1 && array.find_index("0") == ((array.length - 1) / 2)
    true
  else
    false
  end
end