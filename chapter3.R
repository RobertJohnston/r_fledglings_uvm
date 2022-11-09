# Functions
pi 

args(sqrt)

sqrt(x=100)

help(citation)
citation()

help(round)
args(round)

round(x= pi, digits = 2)
round(x= pi)
round(pi, 2)

# rules in the tidyverse style guide
# https://style.tidyverse.org/index.html

# use the function, seq, to create a sequence of numbers from -9 to +9
help(seq)
# generate a sequence between -9 and +9
seq(from = -9, to = 9, by = 1)

help(rep)
help(log)
help(floor)
help(replicate)

# Generate xx as sequence from -9 to 9
xx <- -9:9

# what does xx look like
xx
# produces results of xx

plot(xx, sqrt(abs(xx)), col = "orange")

# more verbose with clear definition of x & y
sqrt(abs(xx))
plot(x = xx, y = sqrt(abs(xx)),  col = "red")

help(abs)
help(plot)

# completed up to 3.2

