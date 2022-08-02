produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(hash)
  fruits = {}

  hash.each do |key, value|
    if value == 'Fruit'
      fruits[key] = value
    end
  end

  puts fruits
end

select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}
