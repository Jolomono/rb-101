# Create a method that returns the last digit of the nth fibonacci number

def fibonacci(n)
  first = 1
  second = 1
  3.upto(n) do
    temp = second
    second = first + second
    first = temp
  end
  second
end

def fibonacci_last(nth)
  number = fibonacci(nth)
  number.to_s[-1].to_i
end

p fibonacci_last(123456789)