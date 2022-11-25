# use Array#bsearch to search ordered Array more quickly than #find and #select

a = [1, 4, 8, 11, 15, 19]

#how would you seatch this Array to find the first element whose value > 8?
# ARRAY MUST BE ORDERED!

# bsearch { |x| block } -> elem

p a.bsearch { |x| x > 8 }