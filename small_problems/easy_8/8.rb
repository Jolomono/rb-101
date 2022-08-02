# Write a method that takes a string, and returns a new string in which every
# consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and
# whitespace should not be doubled.

def double_consonants(string)
  result = ''
  string.chars do |char|
    if a_consonant?(char)
      result << char * 2
    else
      result << char
    end
  end
  result
end

def a_consonant?(char)
  return true if char =~ /[^aeiou]/i && char =~ /[a-z]/i
  false
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""