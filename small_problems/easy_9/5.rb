# Write a method that takes a string argument, and returns true if all of the
# alphabetic characters inside the string are uppercase, false otherwise.
# Characters that are not alphabetic should be ignored.

def uppercase?(string)
  if string.count('a-zA-Z') == 0
    return true
  elsif string.count('a-z') == 0 && string.count('A-Z') > 0
    return true
  end
  false
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true
