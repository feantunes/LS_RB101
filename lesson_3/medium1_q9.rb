def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

# What's the result of this invocation?

p bar(foo)

# Well, we have an argument on the method bar and it's the method foo.
# foo does not have a parameter, so it will be 'yes'
# now this 'yes' is what enters in the bar method. since the parameter
# is not 'no', the ternary will evaluate as false, the return will be 'no'