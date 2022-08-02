# Given a short line of text
# Print it within a box
# Get the length of the string
# Print top of the box based on length of string
# Print a middle section
# Print the phrase section
# Print another middle section
# Print the bottom section (same as top)

def print_in_box(string)
  print_top_bottom(string.length)
  print_middle(string.length)
  print_phrase(string)
  print_middle(string.length)
  print_top_bottom(string.length)
end

def print_top_bottom(string_length)
  line = '+-'
  string_length.times { line << '-' }
  puts line << '-+'
end

def print_middle(string_length)
  line = "| "
  string_length.times { line << ' ' }
  puts line << " |"
end

def print_phrase(string)
  puts "| " + string + " |"
end

print_in_box('To boldly go where no one has gone before.')
# print_in_box('')

