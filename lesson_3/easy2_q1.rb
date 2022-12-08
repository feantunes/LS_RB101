ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# see if "Spot" is present.

p ages['Spot'] # returns nil, therefore not present

# other methods:
p ages.key?('Spot')
p ages.include?('Spot')
