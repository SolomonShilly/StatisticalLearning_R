# Assigning 100 random variables to x and y
x <- rnorm(100)
y <- rnorm(100)

# Basic plot graph
plot(x,y)

# Plot the graph with labels
plot(x,y, xlab= "this is the x-axis", ylab = "this is the y-axis", main = "Plot of X vs Y")

# Save output to PDF
pdf("Figure.pdf")
jpeg("Figure.jpg", width = 350, height = 350)
plot(x, y, col = "green")
dev.off() # Indicates to R that we are done plotting

ls()
rm(list=ls())
ls()

x <- seq(1, 10)
rm(x)
x = 1:10

# Creating a vector of 50 numbers between -pi and pi
x <- seq(-pi, pi, length = 50)
y <- x

f <- outer(x, y, function(x, y) cos(y) / (1 + x^2))
contour(x, y, f)

contour(x, y, f, nlevels = 45, add = T)

fa <- (f - t(f)) / 2
image(x, y, fa)

# Persp can be used to create a 3D plot
# Theta and Phi control the angles at which the plot are viewed
persp(x, y, fa)
persp(x, y, fa, theta = 30)
persp(x, y, fa, theta = 30, phi = 20)
persp(x, y, fa, theta = 30, phi = 70)
persp(x, y, fa, theta = 30, phi = 40)
