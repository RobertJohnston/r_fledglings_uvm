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

# There are a few functions that you’ll use repeatedly that do not require a name, but rest assured they are still functions. Here are a few examples:

# + (addition)
# - (subtraction)
# / (division)
# ^ (exponentiation)
# %% (modulus)
# %/% (integer division)

# Here are some more operators, which won’t be found on a calculator:

# : (the colon operator, used to generate regular sequences, as in “x <- -9:9”)
# :: (the double colon operator, used for specifying a package name and function)
# ~ (the tilde operator, used to separate the left and right hand side of a model formula)

# some databases are preloaded in RStudio - see environment / package:datasets

# see 1st 10 cases in db ChickWeight
head(ChickWeight, n=10)

# Chapter 3 for installing packages

# R Library
library()
.libPaths()

# Establish your own site library
R.home()




