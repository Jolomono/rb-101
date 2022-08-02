# Rewrite Fibonacci without using recursion

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

p fibonacci(20)