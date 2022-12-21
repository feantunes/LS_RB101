produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(hash)
  selection = {}
  counter = 0
  
  loop do
    if hash.values[counter] == 'Fruit'
      selection[hash.keys[counter]] = hash.values[counter]
    end
    
    counter += 1
    break if counter == hash.keys.size - 1
  end
  selection
end
t
p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}