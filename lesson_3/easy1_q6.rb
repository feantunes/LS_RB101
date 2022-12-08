famous_words = "seven years ago..."

# show two different ways to put the expected "Four score and " in front of it.

first_famous_words = "Four score and "

# We can add the strings

lincoln = first_famous_words + famous_words
p lincoln

#we can shovel it

famous_words = first_famous_words << famous_words
p famous_words

famous_words = "seven years ago..."

# we can insert it at index 0

p famous_words.insert(0, "Four score and ")

famous_words = "seven years ago..."

# we can prepend it.

p famous_words.prepend("Four score and ")
