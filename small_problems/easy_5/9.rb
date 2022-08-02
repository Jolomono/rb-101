# Given a string argument
# Return a new string with all consecutive duplicate characters collapsed into a single character
# go character by character, adding the character to a result string if the current character isn't
# currently the last character of the result string

def crunch(string)
  result = []
  string.chars {|c| result << c unless c == result.last }
  result.join
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''