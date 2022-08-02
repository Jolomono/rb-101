def running_total(number_array)
  total = 0
  number_array.map do |num|
    total += num
  end
end

array =[2, 5, 13]
p running_total(array)
