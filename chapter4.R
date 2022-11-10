# Chapter 4
# RforFledglings

# 4 Objects

# take the square root of 100, and assign it to an object called "result"
result = sqrt(100)
# look at the object called result
result

# also make into one line
(result = sqrt(100))

# In this book, we won’t be using the = sign to create objects in R. Instead, we’ll be using the more conventional the left-pointing assignment arrow to create our objects, which looks like this <-. The downside is that we have to type twice as many characters (small con), but the upside is that the directionality of the assignment (name <- value) is clear (big pro).

result <- sqrt(100)
result

# Remove from global environment
rm(result)

# bring it back to life, this time with the assign function:
  
# use  assign function to create  object result and whose value is 10
assign(x = 'result', value = 10)

# create  object called lowNumbers,  make it a vector with  numbers 1, 2, 3, 5,  6
lowNumbers  <-  c(1,2,3,5,6)

# c() is combine function. 

# look at the object called lowNumbers
lowNumbers

# Although the code below is overkill, it illustrates the fact that objects in R must exist in some environment or other, and that everything that R does is accomplished by a function, even if it happens behind the scenes:
  
get('result', envir = globalenv())

# We’ve mentioned that the Environment tab is the Most Valuable Player (MVP) of RStudio. There is no faster way to learn how to code in R than to execute some code, and then look in the Environment pane and see what happened.

# Let’s create a new vector called fiveRandoms which will be a vector that stores 5 random numbers between 0 and 1, drawn from a uniform distribution. In Excel, this is done by using the RAND function. In R, this function is called runif, which stands for “random uniform”. First, let’s look at the helpfile.

# look at the helpfile
help(runif)

# And now we can create our new object.

# create a new object called fiveRandoms, using the runif function
fiveRandoms <- runif(n = 5)

# look at the object called fiveRandoms
fiveRandoms

# Now let’s use the sample function to randomly sample 5 numbers between 1 and 100. It’s important here to look at the helpfile, and to understand each argument.

# look at the helpfile
help(sample)

# look at the arguments for the sample function
args(sample)

# This function has four arguments: x is a vector you’d like to sample from, size is the number of samples to take, replace indicates whether you’d like to sample with replacement (which means the same numbers can be drawn repeatedly), and prob is used when you want to weight your samples so that some have a higher chance of being selected than others.

# create a new object called fiveIntegers, using the sample function
fiveIntegers  <- sample(x = c(1:100), size = 5, replace = TRUE)

# look at the object called fiveIntegers
fiveIntegers

#Dates
today <- date()
str(today)

birthday  <- 7/18/1918
str(birthday)

# if you want to enter a date into R you have to be careful, or R will think you are using a calculator! Here, R returned 7 divided by 18 divided by 1918. You can force the birthday object to be a date by using the as.Date function:

# use the as.Date function to convert Nelson Mandela's birthday to a date
birthday2 <- as.Date("7/18/1918")
# this crashes as format is ambiguous.

# this would work because we tell R how the original date was formatted
birthday2 <- as.Date("7/18/1918", format = "%m/%d/%Y")

# look at the structure of birthday2
str(birthday2)

