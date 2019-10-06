

def check(string)
  stack = []
  for i in 0...string.length
    if string[i] == '('
      stack << string[i]
    elsif string[i] == ')'
      if stack.pop != '('
        return false
      end
    end
  end
  return stack.empty?
end

puts check(('qwerty()()'))
