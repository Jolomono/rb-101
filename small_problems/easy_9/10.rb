# Write a method which takes a grocery list (array) of fruits with quantities
# and converts it into an array of the correct number of each fruit.

def buy_fruit(array)
  result = []
  array.each do |fruit_array|
    current_fruit = fruit_array[0]
    amount = fruit_array[1]
    amount.times {result << current_fruit}
  end
  result
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]])  ==
   ["apples", "apples", "apples", "orange", "bananas","bananas"]