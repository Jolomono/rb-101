# Write a method that takes a string as an argument, and returns true if all
# parentheses in the string are properly balanced, false otherwise. To be
# properly balanced, parentheses must occur in matching '(' and ')' pairs.

# separate the string into an array of just the parentheses
# if the array is empty, return true
# otherwise, while not empty delete pairs that match from the array
# find the index of the first "(" , if nil, return false
# find the index of the first ")" , if nil, return false
# if the index of the first ")" is less than the index of the first "(" return
#   false
# otherwise, delete the elements at those indexes and go again

def balanced?(string)
  parens = string.chars.select{ |char| char == '(' || char == ')' }
  until parens.empty? do
    open_idx = parens.find_index("(")
    return false if open_idx == nil
    parens.delete_at(open_idx)

    close_idx = parens.find_index(")")
    return false if close_idx == nil
    parens.delete_at(close_idx)

    return false if open_idx > close_idx
  end
  true
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false