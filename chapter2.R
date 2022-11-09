# get the square root
sqrt(10)
# get the working directory
getwd()

# use the setwd() function to set the working directory
# notice the forward slashes used to separate levels
# setwd("C:/R_for_Fledglings")

# choose.dir()
# file.choose()

# call up the helpfile for the sqrt function
help(sqrt)

# FIND CODE FOR FOLLOWING
# average (a tricky one; this is the arithmetic mean)
base::mean		Arithmetic Mean

# std (another tricky one; this is the standard deviation)
stats::sd		Standard Deviation

# match (find a particular value in a column of cells, and return its position)
match(x, table, nomatch = NA_integer_, incomparables = NULL)

# sum
sum()

# min
min()

# help files
help(sqrt)
help.search("meatloaf")
??meatloaf

# Plot
x <- sort(rnorm(47))
plot(x, type="s", main="plot(x, type=\"s\")")

# check out other suggested plots
example(plot)

# store the result of sqrt(10) as result
result <- sqrt(10)

result

get('result', envir=globalenv())

# list all variables in globalenv()
ls()

# remove a var from globalenv
rm(x)
