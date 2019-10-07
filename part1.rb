def check(string)
  stack = []
  string.split('').each  do |char|
    if char == '('
      stack << char
    elsif char == ')'
      if stack.pop != '('
        return false
      end
    end
  end
  stack.empty?
end
