def next_bigger(n)
  d = n.to_s.chars.map(&:to_i)
  pivot_index = d.length - 1
  while pivot_index > 0
    d[pivot_index] <= d[pivot_index - 1] ? pivot_index -= 1 : break
  end
  pivot_index = pivot_index - 1
  if pivot_index == -1
    -1
  else
    swap = d[pivot_index]
    left = d[0...pivot_index]
    right = d[pivot_index+1..-1]
    smallest = 10
    right.each do |e|
      if e < smallest && e > swap
        smallest = e
      end
    end
    right_index = right.find_index(smallest)
    right[right_index] = swap
    (left.join.to_s + smallest.to_s + right.sort.join.to_s).to_i
  end    
end