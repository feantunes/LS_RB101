# What does this code print?

5.step(to: 10, by: 3) { |value| puts value }

#We have the Numeric#step with the arguments and a block to puts value

#Looking at the API step(by: step, to: limit) {|i| block } → self
# 5
# 8 

#It will start on 5, then add 3, print that as well and stop on the limit 10
#step works as a loop