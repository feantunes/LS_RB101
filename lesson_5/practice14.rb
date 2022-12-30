hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

# return an array containing the colors of the fruits, and the sizes of the
# vegetables. The sizes should be uppercase and the colors should be capitalized.

new = hsh.map do |key, value| 
  if value[:type] == 'fruit'
    value[:colors].map(&:capitalize)
  elsif value[:type] == 'vegetable'
    value[:size].upcase
  end
end

p new