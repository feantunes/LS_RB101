#is there a difference in these two buffers?

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

# well, the first asks for an element and the second for an array.
# they do the same. the first concatenates to the end of the array
# and the sum also puts the new element at the end of the array

# for references, the first method modifies the arguments and return
# a value, while the second don't modify the value of the input
# the second option is better. 