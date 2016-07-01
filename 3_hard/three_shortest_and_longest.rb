# def min_max(n, ary)
#   sorted = ary.sort_by{|x| x.length}
#   min = sorted.first(n).join.length
#   max = sorted.last(n).join.length
#   puts "min = #{min}, max = #{max}"
# end

# input = []
# File.open("text.txt", "r") do |f|
#   f.each_line do |line|
#     input << line.chomp
#   end
# end

# numStrings = input.shift.to_i
# min_max(numStrings, input)

# O(n * log(n))

def getMins(curr, past, n)
  max = -Float::INFINITY
  max_index = 0
  if past.empty?
    past << curr
  elsif past.length < n
    past << curr
  else
    past.each_index do |index|
      if past[index] > max
        max_index = index
        max = past[index]
      end
    end
  end
  
  if curr < max
    past[max_index] = curr
  end
  past
end

def getMaxs(curr, past, n)
  min = Float::INFINITY
  min_index = 0
  if past.empty?
    past << curr
  elsif past.length < n
    past << curr
  else
    past.each_index do |index|
      if past[index] < min
        min_index = index
        min = past[index]
      end
    end
  end
  
  if curr > min
    past[min_index] = curr
  end
  past
end

mins = []
maxs = []
n = 0

File.open("text.txt", "r") do |f|
  f.each_line do |line|
    if line.chomp.to_i >= 2
      n = line.chomp.to_i
    else
      currentLen = line.chomp.length 
      mins = getMins(currentLen, mins, n)
      maxs = getMaxs(currentLen, maxs, n)
    end
  end
end

puts "min: #{mins.inject{|a,b| a+b}}"
puts "max: #{maxs.inject{|a,b| a+b}}"
