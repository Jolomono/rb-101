def palindrome?(string)
  string == string.reverse
end

def real_palindrome?(string)
  palindrome?(get_alphabetic_string(string))
end

def get_alphabetic_string(string)
  new_string = ''
  string.each_char do |c|
    c.downcase!
    if c >= 'a' && c <= 'z'
      new_string << c
    end
  end
  new_string
end

p real_palindrome?('madam')
p real_palindrome?('Madam')          # (case does not matter)
p real_palindrome?("Madam, I'm Adam")  # (only alphanumerics matter)
p real_palindrome?('356653')
p real_palindrome?('356a653')
p real_palindrome?('123ab321')