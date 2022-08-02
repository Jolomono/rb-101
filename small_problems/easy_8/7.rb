# Write a method that takes a string, and returns a new string in which every
# character is doubled.

def repeater(string)
  result = ''
  string.chars {|char| result << char * 2 }
  result
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''