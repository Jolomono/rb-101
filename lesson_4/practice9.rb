words = "the flintstones rock"

# Write an implementation that capitalizes the first letter of each word in a string
# first separate the string into an array of words
# then upcase the first letter of each word in the array
# then combine the word array back into a string with spaces between each word

word_array = words.split
word_array.map! {|word| word.capitalize }
result = word_array.join(' ')
p result