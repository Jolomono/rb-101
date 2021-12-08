# odd lists
def oddities(array)
  array.select.with_index { |_,idx| (idx + 1).odd?}
end

p oddities([2, 3, 4, 5, 6])
p oddities([1, 2, 3, 4, 5, 6])
p oddities(['abc', 'def'])
p oddities([123])
p oddities([])