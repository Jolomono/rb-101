puts "Please write a word or multiple words: "
string = gets.chomp
char_count = 0

string.each_char { |char| char_count += 1 if char != ' ' }

puts "There are #{char_count} characters in \"#{string}\"."