def ascii_value(string)
  result = 0
  string.chars { |char| result += char.ord }
  result
end

p ascii_value('Four score')
p ascii_value('Launch School')
p ascii_value('a')
p ascii_value('')