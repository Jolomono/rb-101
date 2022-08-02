# Fibonacci Numbers (Recursion)

def fibonacci(n)
  return 1 if n <= 2
  fibonacci(n-1) + fibonacci(n-2)
end

p fibonacci(1)
p fibonacci(2)
p fibonacci(3)
p fibonacci(20)


