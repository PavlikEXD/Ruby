def palindrome?(string)
  new_string = self
  new_string.gsub!(/[^A-Za-z0-9]/, "")
  new_string.downcase!
  new_string == new_string.reverse
end
