def isAnagram(to_check, given)
  to_check.chars.sort == given.chars.sort ? true : false
end