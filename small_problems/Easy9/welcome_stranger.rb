def greetings(arr_name, hash_job)
  puts "Hello, #{arr_name.join(' ')}! Nice to have a #{hash_job[:title]} #{hash_job[:occupation]} around. "
end


greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
#=> "Hello, John Q Doe! Nice to have a Master Plumber around."

def greetings2(arr_name, hash_job)
  full_name = arr_name.join(' ')
  title = hash_job[:title]
  occupation = hash_job[:occupation]
  puts "Hello, #{full_name}! Nice to have a #{title} #{occupation} around. "
end

greetings2(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
