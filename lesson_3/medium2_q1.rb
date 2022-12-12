a = "forty two"
b = "forty two"
c = a

puts a.object_id
puts b.object_id
puts c.object_id

# predict the output

=begin
a and b are different objects, even though they string has the same value.
object c points to the same memory space of object a, so it has the same id.