statement = "The Flintstones Rock"

# Create a hash that expresses the frequency with which each letter occurs in this string:
# Go character by character across the statement
# For each character add to hash[character] with a 1
# or increment the value there by 1 if it already exists

letter_frequency = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a

statement.chars do |char|
  next unless letters.include?(char)

  if !letter_frequency[char]
    letter_frequency[char] = 1
  else
    letter_frequency[char] += 1
  end
end

p letter_frequency