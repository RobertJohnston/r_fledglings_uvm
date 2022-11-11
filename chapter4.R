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

str(data)

# There are five main object “classes” that hold different types of data:
# 1. Vectors
# 2. Matrices
# 3. Arrays
# 4. Lists
# 5. Dataframes

# A vector is a single row or column of data. This particular vector has three elements within it, and it stores data that have a mode of character. As we’ve already seen, vectors store only one datatype – they cannot store values with different datatypes.

# Two columns of data can be thought of as a matrix object. Matrices can store only a single datatype (usually numbers). If we could make this matrix have many dimensions (like a cube of numbers), it would be called an array. Arrays can have multiple dimensions, but like matrices, can store only a single datatype. 

# In R, objects can be combined into a list. For example, we can combine mixed (a vector), mixed2 (a vector), and my.matrix (a matrix) into a new type object, a list. Lists are a very important concept in R. They are collections of objects, sort of like a shoe store – it can hold shoeboxes of all sorts, even other shoe stores! Many functions (like statistical functions) return the results in lists, where each portion of the list holds different kinds of information.

# Finally, all data together can be thought of as a dataframe, which is a special type of list that is composed of many different vectors, all of the same length. In this example, our dataframe consists of the three vectors, mixed, mixed2, and numbers.

# VECTORS
# use the c function to combine the two vectors, fiveIntegers and fiveRandoms into a new object called my.vector
my.vector <- c(fiveIntegers,fiveRandoms)

# look at the object 
my.vector

# We can use the length function to find out how many “elements” our vector has:
  
length(my.vector)

# To get the first element stored in my.vector, use my.vector[1]
# To get the third element stored in my.vector, use my.vector[3]
# To get the first three elements stored in my.vector, use my.vector[1:3]
# To get elements 3, 5, 7, and 8, use my.vector[c(3,5,7,8)]
# To return everything but elements 1, 3, 7, and 8, use my.vector[-c(1,3,7,8)]
# To get all of the elements, except the fifth element, use my.vector[-5]
# To get the last three elements only, use my.vector[-(1:7)]

# up to 4.5 Vectors

# create a new object called shoebox
shoebox <- c(brand = "Nike", size = 10, model = "Pegasus")
# look at the object called shoebox
shoebox

# create a vector 6 random numbers
numbers <- runif(6)
# look at the numbers
numbers 

# create an object called my.matrix that is a matrix object
my.matrix <- matrix(data = numbers, nrow = 3, ncol = 2)
# look at the object, my.matrix
my.matrix

# get the number of rows for the object called my.matrix
nrow(my.matrix)
# get the number of columns for the object called my.matrix
ncol(my.matrix)

dim(my.matrix)

length(my.matrix)
# Here’s another surprise, but this one is important. At its core, a matrix is a vector (with dimension attributes). The function length pertains to vectors, and since matrices are vectors with dimensional attributes, length returns the count of elements in the matrix. Think of a matrix as a vector that “snakes” around the rows and columns in a specified direction. For example, you can ask R to return all of the elements in the matrix using vector notation as follows:

# Don't get confused between vectors and matrices.

str(my.matrix)
# output index of Rows, Index of Columns, and then vector.

# You can never go wrong by using the trusty str function; it will provide the dimensions. Just don’t get thrown off when you see that the values in your matrix are different from ours. Recall that they were generated randomly with the runif function!

# from the matrix function helpfile:  create a new object that is a matrix with the name mdat
mdat <- matrix(c(1,2,3, 11,12,13), 
               nrow = 2, 
               ncol = 3, 
               byrow = TRUE,
               dimnames = list(c("row1", "row2"), 
                               c("C.1", "C.2", "C.3")))

# same code but with rows and columns argument names included
mdat <- matrix(data = c(1,2,3, 11,12,13), 
               nrow = 2, 
               ncol = 3, 
               byrow = TRUE,
               dimnames = list(rows = c("row1", "row2"), 
                               columns = c("C.1", "C.2", "C.3")))
# show the matrix
mdat
# look at the output of str. Gives the RC names
str(mdat)

mdat <- matrix(dimnames = list(rows = c("Height", "Weight"), 
                columns = c("Winken", "Blinken", "Nod")))
# THis does not work

colnames(mdat) = c("Winken", "Blinken", "Nod")
rownames(mdat)= c("Height", "Weight")


# create an object called tauntauns that is an array
tauntauns  <- array(data = 0, 
                    dim = c(5,11,2), 
                    dimnames = list(year = 1:5, age = 0:10 , sex = c("male", "female")))

# what is the dim = c(5,11,2), ???
# 5 rows, 11 cols and 2 matrices.
# dimnames row names, col names and matrix names. 


# look at the object called tauntauns
tauntauns
# not listed as data, but as array (vector)

# replace the 0's with random numbers between 100 and 500
individuals  <-  sample(x = c(100:500), size = 110)

# look at the individuals
individuals

# replace the array 0's with random numbers
tauntauns[,,]  <- individuals

# look at the object called tauntauns
tauntauns

# look at the structure of tauntauns
str(tauntauns)


# 4.9 Data frames

# a data frame is a list of vectors that all have the same length. Most datasets are stored as data frames in R, and we’ll get a lot of practice using them in the following chapters. For now, though, let’s combine the three vectors, fiveIntegers, fiveBooleans, and fiveRandoms into a data frame with the data.frame function. Let’s take a look at the help file:

# create a dataframe called my.data
my.data <- data.frame(fiveIntegers, fiveBooleans, fiveRandoms)

#  look at the data
my.data

# look at the structure of my.data
str(my.data)

# convert my.matrix to a dataframe 
my.matrix  <- as.data.frame(my.matrix)

# look at the structure of my.matrix
str(my.matrix)

# That was a whirlwind tour of objects in R. We’ve talked about various datatypes, including numeric, integer, character, logical, factor, and date modes. We’ve also reviewed five main object “classes” that hold different kinds of data:
   
# Vectors - one dimensional series of elements that are all of the same mode.
# Matrices - two dimensional series of elements that are all of the same mode.
# Arrays - multi-dimensional series of elements that are all of the same mode.
# Lists - groups or bundles of different objects.
# Dataframes - a special kind of list which is composed of a series of vectors, each of the same length.
 
# There are a few other kinds of objects as well, but these are the main classes that we’ll work with in this primer. It can be overwhelming to remember the different datatypes, the different object types, and the different functions that can be used for each. But you’ll make rapid progress if you keep these points in mind:
   
#   When you create an object, always look in your Environment and see what is there.
# If you need to remember ONLY one function when it comes to objects, keep str in your back pocket. It returns the datatype, the object type, and lists all of the object’s attributes.
# For functions, the help function can never be overused.
# Objects have attributes, and the attr and attributes functions can be extremely helpful.
 
# It may also be useful to peak at some of the following cheatsheets, and post those of interest by your computer:


