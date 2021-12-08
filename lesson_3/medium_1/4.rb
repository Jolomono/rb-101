def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end
test1 = [1,2,3]
test2 = [1,2,3]

rolling_buffer1(test1, 3, 4)
rolling_buffer2(test2, 3, 4)

p test1
p test2
