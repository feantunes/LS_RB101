# determine total age of just the male members

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

=begin
ages = 0
munsters.select do |key, value| value['gender'] == 'male'
  value.each { |key, value| ages +=  key['age'] }
end
p ages
=end 

ages = 0
new = munsters.select do |key, value| 
  value["gender"] == 'male'
end
new.each { |key, value| ages += value['age'] }
p ages

