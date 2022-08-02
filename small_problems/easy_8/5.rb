# Write a method that returns a list of all substrings of a string that are
# palindromic. That is, each substring must consist of the same sequence of
# characters forwards as it does backwards. The return value should be arranged
# in the same sequence as the substrings appear in the string. Duplicate
# palindromes should be included multiple times.

def leading_substrings(string)
  length_of_substr = 1
  result = []
  while length_of_substr <= string.length
    result << string.slice(0,length_of_substr)
    length_of_substr += 1
  end
  result
end

def substrings(string)
  result = []
  while string.length > 0
    result += leading_substrings(string)
    string.slice!(0)
  end
  result
end

def palindromes(string)
  result = substrings(string).select do |sub|
    sub.length > 1 && sub == sub.reverse
  end
  result
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]


