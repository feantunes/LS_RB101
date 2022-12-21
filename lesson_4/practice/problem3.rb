# remove people with age 100 and greater.

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# selecting on a new array
p ages.select { |name, age| age <= 100 }
p ages

# using the #reject method while returning a new array
p ages.reject { |name, age| age >= 100 }
p ages
# returning self on the #select destructive method.
p ages.select! { |name, age| age <= 100 }
p ages