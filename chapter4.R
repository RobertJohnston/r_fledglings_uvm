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

# Use ISO 8601 standard. This is the default date standard in R.
# use the year-month-day format, which is R's default
birthday2  <- as.Date("1918-07-18")

# look at the structure of birthday2
str(birthday2)

fiveBooleans <- fiveRandoms > 0.5
fiveBooleans

# look at R's built in object called characters; 
# note that this is not in your Environment
letters

# create a new object called letters2
# set the value to be equal to the value in the object called letters
letters2 <- letters
# get the structure of the object, letters2
str(letters2)

# create an object called mixed, with values "dog", 10, and TRUE
mixed <- c("dog", 10, TRUE)

# look at the object called mixed
mixed

# create an object called mixed2, with values FALSE, 10, and TRUE
mixed2 <- c(FALSE, 10, TRUE)

# look at the object called mixed2
mixed2

# find the class for the object called mixed2
class(mixed2)
# find the structure of the object called mixed2
str(mixed2)

# Note: An object can be fully examined by using the class function, the typeof function, and the mode function. Though not always the case, these three functions can return the same result, especially for vectors. We won’t dwell on the differences, but generally speaking typeof and mode provide information about how R is storing an object, while an object’s class determines how it is used in future R calls.

# Coercion functions start with “as.” and end with the output class. Here are a few that convert objects from one type to another:
   
# as.character - converts to character data types
# as.numeric - converts to numeric data types
# as.Date - converts to dates
# as.factor - converts characters to factors

# create a character string of Eleanor Roosevelt's birthday
eleanor  <- "1884-10-11"
# look at the value of eleanor
str(eleanor)
# convert to date
eleanor  <- as.Date(eleanor)
# look at the value of eleanor
str(eleanor)
# convert to number
eleanor <- as.numeric(eleanor)
# look at the value of eleanor
str(eleanor)

# create a names vector of the boys in Mrs. Smith's first grade class; 
# note how popular the name "Ben" is in Vermont
boys <- c("Ben", "Alden", "Ben", "Ben", "Max", "Elias", "Evan", "Miles")

# look at the structure; notice that this is a character vector
str(boys)

# convert the vector to factors
boys  <-  as.factor(boys)

#look at the structure, notice that this is a factor with 6 levels
str(boys)

# The levels functions returns the names of each level.

# look at the levels
levels(boys)

# convert the factor boys to integers
as.integer(boys)

# create a dataset with 50 values of numbers of 1 to 5 using the sample function; 
data <- sample(x = 1:5, size = 50, replace = T, prob = c(0, 0.1, 0.1, 0.2, 0.6))

# look at the data
data

# convert the vector to factor and control the levels and labels.
factor(x = data, 
       levels = c(1,2,3,4,5), 
       labels = c("rotten", "poor", "ok", "good", "excellent"))
