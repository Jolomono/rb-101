def joinor(array, delimiter = ', ', conjunction = 'or')
  return "" if array.length == 0
  return array[0] if array.length == 1
  start_str = array.slice(0..-2).join(delimiter)
  end_str = " #{array[-1]}"
  start_str + delimiter + conjunction + end_str
end

puts joinor([1, 2, 3], ', ', 'and')

