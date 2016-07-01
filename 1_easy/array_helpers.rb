class Array
  def square
    self.map {|i| i**2}
  end
  
  def cube
    self.map {|i| i**3}
  end
  
  def sum
    self.inject{|sum,x| sum + x}
  end
  
  def average
    self.sum / self.count
  end
  
  def even
    self.select{|i| i.even?}
  end
  
  def odd
    self.select{|i| i.odd?}
  end
end