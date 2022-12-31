def buy_fruit(list)
  list = list.map do |item|
    [(item[0] + ' ') * item[1] ][0].split
  end
  list.flatten
end



p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) #==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
  
  #or better using part of the LS solution.
  
  def buy_fruit2(list)
  list = list.map do |item|
    [item[0]] * item[1]. #wrapping item[0] in an array will avoid the fruitfruitfruit
  end
  list.flatten
end

p buy_fruit2([["apples", 3], ["orange", 1], ["bananas", 2]]) #==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]