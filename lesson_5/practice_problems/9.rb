# Given this data structure, return a new array of the same structure but with
# the sub arrays being ordered (alphabetically or numerically as appropriate) in
# descending order.

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each_value do |word_arr|
  word_arr.each do |word|
    word.chars do |char|
      puts char if char =~ /[aeiouAEIOU]/
    end
  end
end


