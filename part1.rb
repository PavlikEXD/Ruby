def check(string)
  stack = []
  (0...string.length).each do |i|
    if string[i] == '('
      stack << string[i]
    elsif string[i] == ')'
      if stack.pop != '('
        return false
      end
    end
  end
  stack.empty?
end

puts check(")())")
