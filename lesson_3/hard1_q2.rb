greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings

#whats the result of the last line of this code?

=begin
1- we assign the value of the key :a to the variable informal greetings. that value and
the informal_greeting are pointing to the same object 'hi'
2- we mutate the informal_greeting with << ' there' and now that variable is
'hi there'. since they the value of the key of the hash and the variable are
pointing to the same string, they will be both changed.
3- we will puts the hash and the value of the key :a was mutated, so the 
return is going to be {:a => 'hi there'}
=end


=begin 
we can use informal_greeting = greetings[:a].clone to get a different object!
=end