a = 42
b = 42
c = a

puts a.object_id
puts b.object_id
puts c.object_id

#what about now?

#the object id is the same for all because numbers and booleans are
# immutable.