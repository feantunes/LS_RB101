# What's the output of this code?

answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

# the value printed is going to be 34. (42 - 8 = 34)
# the simple assignment within the method does not change the variable
# in the outer scope. Therefore, the value of answer remains 42.
# nevertheless, the new variable new_answer has the value 50