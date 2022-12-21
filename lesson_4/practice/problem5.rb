# Find the index of the first name that starts with "Be"

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

def start_index(names, start)
 names.each_with_index do |name, index|
   if name.start_with?(start) == true
     return index
    else
      next
    end
  end
end

p start_index(flintstones, 'Be') #this will return the array if all false.

def start_index2(array, start)
  array.index { |element| element.start_with?(start) }
end

p start_index2(flintstones, 'Be') # this will return nil if all false.