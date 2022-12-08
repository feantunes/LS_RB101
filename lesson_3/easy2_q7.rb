flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones << "Dino"

# How can we add multiple items to our array? (Dino and Hoppy)

# flintstones.push("Dino").push("Hoppy")   # push returns the array so we can chain

p flintstones.concat(%w(Dino Hoppy))  # concat adds an array rather than one item
