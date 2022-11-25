a = %w(a b c d e)
puts a.fetch(7)
puts a.fetch(7, 'beats me')
puts a.fetch(7) { |index| index**2 }

#Q: what do each of these puts output?
# We have an array of strings a. The .fetch method tries to return element
#at position index. The indexes on a are 0 to 4

#first puts IndexError
#second puts 'beats me' #The second argument act as a default value
#third puts 49 #The block will only be executed when we have a invalid index!


