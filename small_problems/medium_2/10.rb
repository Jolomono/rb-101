# Write a method that computes the difference between the square of the sum of
# the first n positive integers and the sum of the squares of the first n
# positive integers.

def sum_square_difference(number)
  sum = 0
  sum_of_squares = 0
  1.upto(number) do |n|
    sum += n
    sum_of_squares += n**2
  end
  squared_sum = sum**2

  squared_sum - sum_of_squares
end

p sum_square_difference(100)

