def multisum(number)
  result_array = []
  array = (1..number).to_a
  array.each do |n|
    result_array << n if n % 3 == 0 || n % 5 == 0
  end
  result_array.sum
end

p multisum(3)
p multisum(5)
p multisum(10)
p multisum(1000)