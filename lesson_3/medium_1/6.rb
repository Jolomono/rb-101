answer = 42

# This will return a number + 8 but not actually effect the original number
def mess_with_it(some_number)
  some_number += 8
end

# so new_answer = 50
new_answer = mess_with_it(answer)

# answer is still 42 so 42-8 = 34
p answer - 8