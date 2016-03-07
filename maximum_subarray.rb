def max_subarray(nums)
  max = -2147483648;
  max_so_far = 0;
  nums.each do |n|
    max_so_far = [max_so_far+n, n].max
    max = [max, t].max
  end
  puts max
end