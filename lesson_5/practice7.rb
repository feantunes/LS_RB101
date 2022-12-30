# Given this code, what would be the final values of a and b? 
# Try to work this out without running the code.

a = 6
b = [5, 8]
arr = [a, b]

arr[0] = 4
arr[1][0] -= a

p arr
p a
p b

# arr is referencing the the objects a and b. Therefore, if they are changed, the
# object is also changes

# First modification arr[0] += 2. adding two to the element a. Therefore,
# a = 4 and arr = [4, [5,8]]

# Second modification = integer 5 on arr b is being modified. since a = 4, the
# element will be 5-4, therefore b = [1, 8]. 

# Final answer a = 4, b = [1, 8]
# ---- So actually I was dead wrong! 
# a is not changed because the first operation is refering to the array assignment
# and not the element a. 