# these methods remove itens from the array, they have similar names.

numbers = [1, 2, 3, 4, 5]

numbers.delete_at(1)
numbers.delete(1)

# What do they do differently?

# The method Array#delete_at() will look at the index of the array, while the
# Array#delete() will look at the element.

# For example, if the array was [1,2,3,4,5,1], the method delete() will delete
# both the first and last elements. While the delete_at will find the index 1
# which has the integer 2 in it. Therefore the results are going to be:

# =>> [1, 3, 4, 5]
# =>> [2, 3, 4, 5]

# the return of the method will be the deleted integer.