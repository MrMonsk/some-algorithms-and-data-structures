def pascalsTriangle(n)
  rows = []
  (0...n).each do |index|
     rows << if index == 0
        [1]
     else
        rows[index-1].reduce([0]) do |m, o|
           m[0...-1] << (m[-1] + o) << o
        end
     end
   end
   p rows
   rows.flatten
end