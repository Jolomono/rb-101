arr = ['10', '11', '9', '7', '8']

result = arr.sort do |num1, num2|
  num2.to_i <=> num1.to_i
end

p result