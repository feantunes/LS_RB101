title = "Flintstone Family Members"
width = 40

align = " " * (width - title.length)
p title.prepend(align)

# well, I missed the method that gives it right away => String#center / LS solution
p title.center(40)

# Same results, at least