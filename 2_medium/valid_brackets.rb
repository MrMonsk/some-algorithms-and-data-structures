def validBraces(braces)
  m = {
    "{" => "}",
    "[" => "]",
    "(" => ")"
    }
  stack = []
  braces.chars.each do |bracket|
    if stack.empty?
      stack << bracket
    else
      if bracket == m[stack.last]
        stack.pop
      else
        stack << bracket
      end
    end
  end
  stack.empty? ? true : false
end