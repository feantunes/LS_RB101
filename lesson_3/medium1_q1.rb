#For this practice problem, write a one-line program that creates the following
#output 10 times, with the subsequent line indented 1 space to the right:

=begin
The Flintstones Rock!
 The Flintstones Rock!
  The Flintstones Rock!
=end

=begin indent = 0

10.times do 
  puts ' ' * indent + "The Flintstones Rock!"
  indent+= 1
end
=end

string = "The Flintstones Rock!" 

10.times { |num| puts (" " * num) + "The Flintstones Rock" }