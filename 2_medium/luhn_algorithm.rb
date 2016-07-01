require 'minitest/autorun'

module Luhn
  def self.is_valid?(number)
    #IMPLEMENT ME
    doubled_numbers = []
    fin_nums = []
    original_numbers = number.to_s.split('').map(&:to_i)
    original_numbers.reverse.each_with_index do |num, index|
      if index.odd?
        doubled_numbers << num*2
      else
        doubled_numbers << num
      end
    end
  

    doubled_numbers.each do |i|
      if i > 9
        fin_nums << i - 9
      else
        fin_nums << i
      end
    end

    sum = fin_nums.inject(:+) #quick way to add all numbers in an array

    return sum % 10 == 0
  end
end



class TestLuhn < MiniTest::Unit::TestCase

  def test_luhn_valid
    assert Luhn.is_valid?(4194560385008504)
  end

  def test_luhn_invalid
    assert ! Luhn.is_valid?(4194560385008505)
  end

  def test_luhn_valid2
    assert Luhn.is_valid?(377681478627336), "Check step two: Did you start at the right?"
  end

  def test_luhn_invalid2
    assert ! Luhn.is_valid?(377681478627337), "Check step two: Did you start at the right?"
  end

end