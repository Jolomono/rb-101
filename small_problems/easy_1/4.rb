def count_occurrences(array)
  hash = {}
  array.each do |item|
    if hash[item] == nil
      hash[item] = 1
    else 
      hash[item] += 1
    end 
  end
  hash.each {|key, value| puts "#{key} => #{value}"}
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)