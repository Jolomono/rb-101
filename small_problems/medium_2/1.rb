text = File.read('pg84.txt')
sentences = text.split(/\.|\?|!/)

longest_sentence = ""

sentences.each do |sentence|
  longest_sentence = sentence if sentence.split.length > longest_sentence.split.length
end

puts longest_sentence
puts "The longest sentence has #{longest_sentence.split.length} words"