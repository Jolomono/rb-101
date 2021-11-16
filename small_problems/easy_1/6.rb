def reverse_words(words)
  word_array = words.split
  word_array.map! do |word|
    if word.length >= 5
      word.reverse
    else
      word
    end 
  end 
  word_array.join(' ')
end 

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS