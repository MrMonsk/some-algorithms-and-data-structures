def triangle(height)
  (-height..0).each do |col|
    (-height..height).each do |row|
      print row.abs + col.abs <= height ? '*' : ' '
    end
    puts
  end
end

triangle(5)

def diamond(height)
  (-height..height).each do |col|
    (-height..height).each do |row|
    print row.abs + col.abs <= height ? '*' : ' '
    end
  puts
  end
end

diamond(5)
