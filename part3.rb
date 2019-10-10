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
      self.gsub!(/[^A-Za-z0-9]/, "")
      self.downcase!
      self == self.reverse
    end
end

p 'taco cat'.palindrome? #=> true
p 'abcdcba'.palindrome? #=> true

p '()(()())'.valid_brackets? #=> true
p ')())'.valid_brackets? #=> false
p 'qwerty()()'.valid_brackets? #=> true
p 'asdf'.valid_brackets? #=> true
string = "Alo!"
p string.palindrome?
p string
