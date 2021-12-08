def palindromic_number?(number)
  string = number.to_s
  palindrome?(string)
end

def palindrome?(string)
  string == string.reverse
end

p palindromic_number?(34543)
p palindromic_number?(123210)
p palindromic_number?(22)
p palindromic_number?(5)