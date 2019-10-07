class String
    def valid_brackets?
      stack = []
      self.split('').each  do |char|
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

    def palindrome?
      self.downcase!
      self.delete! "!-/ "
      self.slice(0...self.length/2).eql?(self.slice(self.length/2 + 1..-1).reverse!)
    end

end

puts 'taco cat'.palindrome? #=> true
puts 'abcdcba'.palindrome? #=> true


puts '()(()())'.valid_brackets? #=> true
puts ')())'.valid_brackets? #=> false
puts 'qwerty()()'.valid_brackets? #=> true
puts 'asdf'.valid_brackets? #=> true
