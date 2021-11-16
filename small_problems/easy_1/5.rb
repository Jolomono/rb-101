def reverse_sentence(sentence)
  sentence_array = sentence.split.reverse
  sentence_array.join(' ')
end 

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''