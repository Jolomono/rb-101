# Fibonacci Number Location by Length

# Given a number that represents the desired digit length of a number in the Fibonacci series
# Output the index of the first number that has the number of digits specified
# Generate the fibonacci sequence while the current number doesn't have the length desired
# Stop when the number has the length specified
# Return the current index + 1 (first index = 1 instead of 0)


def find_fibonacci_index_by_length(length)
  fibo = [1, 1]
  index = 2
  loop do
    prev_num = fibo[index - 2]
    current_num = fibo[index - 1]
    next_number = prev_num + current_num
    break if next_number.to_s.size == length

    fibo[index] = next_number
    index += 1
  end

  index + 1
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847