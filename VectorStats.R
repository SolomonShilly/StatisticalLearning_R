# Using the concatenate function to create a vector of four numbers
# Vector will be assigned to variable x
x <- c(1,2,3,4)

# Printing the vector
x

y = c(4,5,6,7)

length(x)
length(y)

x + y

# List all variables using ls()
ls()

# Remove variables using rm()
# To remove all variables, we use rm(list = ls())
ls()
rm(x,y)
ls()

x = c(1,2,3)
y = c(1,2,3)
z = x + y
ls()
rm(list=ls())
ls()

x = matrix(data=c(1,2,3,4), nrow=2, ncol = 2)
x

y = matrix(data=c(1,2,3,4), nrow = 2, ncol =2, byrow = TRUE)
y

# Can also omit input parameter titles
z = matrix(c(1,2,3,4), 2, 2, TRUE)
z

# Can also print to screen without saving
matrix(c(1,0,1, 1, 1, 0, 1, 1, 1, 0, 1, 1), 4, 3)

# Creating a matrix of squares and using the sqrt function to calculate the square roots
squares = matrix(data=c(1,4,9,16), nrow=2, ncol=2)
squares
squareRoots= sqrt(squares)
squareRoots

rm(list=ls())
ls()

set.seed(1303)
# Creating a vector containing 50 random normal variables with a mean of 0 and standard deviation of 1
x <- rnorm(50)
# Creating a correlated set of numbers in y
y <- x + rnorm(50, mean=50, sd=.1)
y

# Calculating the correlation of x and y
cor(x,y)

# Descriptive statistics
mean(x)
var(x)
sqrt(var(x))
sd(x)
