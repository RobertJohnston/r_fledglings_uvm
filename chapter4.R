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


