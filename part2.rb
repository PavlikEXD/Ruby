def palindrome?(string)
  string.downcase!
  string.delete! "!-/ "
  string.slice(0...string.length/2).eql?(string.slice(string.length/2 + 1..-1).reverse!)
end
