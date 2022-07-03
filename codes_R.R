# Ticks for R:
#----------------------------------------
# You can open R via terminal with: $R
# You can use R via Rstudio;
# ctrl + L: to clean
# $q(): to quit Rstudio
# To execute a script: $ Rscript script_name.R or source("script_name.R")
# Proect/folder (as in VS code): contains several .R scripts and folders. And you can link it with git directly
# File is a simple .R file on which you are working.
# How to Create a Multi-Line Comment in R: Ctrl + Shift + C <-> command + / in Python.
# Transform your script to html or pdf or word: Ctrl / Cmd + Shift + K
# ls(): display all the variable names that you have created. (Type it in the console)
# ----------------------------------------



# Outline of Learning R:
## R definition;
## variables types and assignment; OK
## print and check type of variables: OK
## Get variables values from user;: OK
## conversion of variables; :OK
## variables operations (inclding incrementation and deincrimentation);OK
## Data structures in R: Strings, Vectors, Lists, Array, matrices, Factors and DataFrames
## Operations: indexing, slicing, remove/delete, add, replace, etc.
## create and use functions: OK
## if, else and elif <-> (if, else and else if): OK
## for and while loop: OK
## Nested loop
## Break: OK and continue
## handling file
## hanling errors and exceptions
## OOP
## Statistics in R
## probability in R
## Linear Algebra in R
## Data visualization in R
## Data manipulation
## Data cleaning
## Link your R proect to github
## machine learning in R: training and predict
## Deployment

# START

x<-1:1000
y<-cumsum(x)

print(y)


# variables: create a variable by the symbol: <- or =. i.e, x<- 2.5
x<-2L
y<-2.5
z<-2i-3
t<-FALSE
c<- "OK"

# printing a variables: print(), cat(), message()
print(class(x))
print(class(y))
print(class(z))
# print(class(t))
print(class(c))

# or
print(typeof(x))

# print character string and numeric variables on the same line: use cat instead of print. 
#You can use the cat() function to easily print multiple variables on the same line in R.
cat("Le nombre entier est: ", x, "et le nombre complex est: ", z) # print() and paste eq. to cast.
print(paste("Le nombre entier est: ", x, "et le nombre complex est: ", z))

x<-2
y<--1

cat(x, "is positive\n", y, 'is negative\n')
message(x, " is positive")

# Casting/Conversion in R:
x<-2L
y<-2.5
z<-2i-3
t<-FALSE
c<- "OK"

xx<-as.character(x)
yy<-as.character(y)
tt<-as.numeric(t)
zz<-as.numeric(z)

cat(typeof(xx), typeof(yy), typeof(zz), typeof(zz))

tt<- 0
print(as.logical(tt))

# Exo
x = 3
y = 8

# Conversion in to logical value
result<-as.logical(x>y)
print(result)
# Incrementation/Decrimentation: 
# R doesn't have a concept of increment operator (as for example ++ in C). However, it is not difficult to implement one yourself, for example:

# Exo:
inc <- function(x)
{
  eval.parent(substitute(x <- x + 1))
}
dinc <- function(x)
{
  eval.parent(substitute(x <- x - 1))
}
x= 4
print(inc(x))
print(x)
print(dinc(x))

# Or: shortcut
i = 2
i = i+1
print(i)
i = i-1
print(i)
# Operations between variables: 
## Arithmetic operators:
# Operator	 Description
#   +	        Addition
#   –	        Subtraction
#   *	        Multiplication
#   /	        Division
#   ^	        Exponent
#   %%	      Modulus (Remainder from division)
#   %/%	      Integer Division
# Exo 1:
x <- 5
y <- 16
x+y
x-y
x*y
y/x
y%/%x
y%%x
y^x

## Relational operators:
# Operator	  Description
#   <	          Less than
#   >	          Greater than
#   <=        	Less than or equal to
#   >=	        Greater than or equal to
#   ==	        Equal to
#   !=	        Not equal to

# Exo 2:
x <- 5
y <- 16
x<y
x>y
x<=5
y>=20
y == 16
x != 5

## Operation on Vectors:
#We can use the function c() (as in concatenate) to make vectors in R.
# All operations are carried out in element-wise fashion.
x <- c(2,8,3)
y <- c(6,4,1)
x+y
x>y
# New
x <- c(2,1,8,3)
y <- c(9,4)
x+y # Element of y is recycled to 9,4,9,4
x-1 # Scalar 1 is recycled to 1,1,1,1
x+c(1,2,3)
# Warning message In:
x + c(1, 2, 3)

## Logical operator 
# Operator	Description
# !	Logical NOT
# &	Element-wise logical AND
# &&	Logical AND
# |	Element-wise logical OR
# ||	Logical OR
x <- c(TRUE,FALSE,0,6)
y <- c(FALSE,TRUE,FALSE,TRUE)
!x
x&y
x&&y
x|y
x||y


## Assignment operators.
# Operator	Description
# <-, <<-, =	Leftwards assignment
# ->, ->>	Rightwards assignment

x <- 5
x
x = 9
x
10 -> x
x

# Take input from user:
my_name <- readline(prompt="Enter name: ")
print(my_name)

my_age <- readline(prompt="Enter age: ")
print(my_age)
# convert character into integer
my_age<-as.integer(my_age)

# or my_age = as.integer(readline(prompt = "Enter a number: "))
print(my_age)
print(paste("Hi,", my_name, "next year you will be", my_age+1, "years old."))
cat("Hi,", my_name, "next year you will be", my_age+1, "years old.")

# Data structures in R: Strings, Vectors, Lists, Array, matrices, Factors and DataFrames.

# list

# vector
x = c(3, 10, 11)
y = c("yes", "no", "maybe")
cat("x= ", x, "and", "y= ", y)
print(x)

a = 5
b = 6
c = 7

x= c(a, b, c)
print(x)
## Indexing

## Slicing

## Shape

## Dim

## Reshaping

# Array:

# matrices


# Datafrae:
df = data.frame(x=1:5, y=6:10)
print(df)

# Libraries
# statistics
# visalization
# Data cleaning
# Exercises

# create functions:
# syntax:
#function_name <- function(parameters) {      

#statements

#return(value) or cat()

#}

#function_name(values)
# End of syntax
# define function
add <- function(x,y) {
  x2 <- x-y
  x3 <- x * 3
  x4 <- x-2
  cat(x2, x3, x4)
}

# use a function
add(5,3)

# or 
add <- function(x,y) {
  x2 <- x-y
  x3 <- x * 3
  x4 <- x-2
  cat("x2 =", x2, "x3 =", x3, "x4 =", x4)
}

add(5,4)

add <- function(x,y) {
  x2 <- x+y
  x3 <- x * 3
  x4 <- x-2
  cat("x2 =", x2, "\nx3 =", x3, "\nx4 =", x4)
}

add(5,4)


add_n= function(x,y){
  
  return(x+y) # is for a single return.
  
}

t= add_n(5,3)
print(t)

print(t-2)

# Function with multiple return
#The return() function can return only a single object. If we want to return multiple values in R, we can use a list (or other objects) and return it.
oper= function(x,y){
  # return the result as a list
  return (list("add"= x+y, "s"=x-y, "d"=x/y, "e"=x*y))
  
}
res= oper(2,4)
cat(res$add, ",", res$s, ",",res$d, ",",res$e)




# if, else if and elif <-> if, else and else if

check <- function(x) {
  if (x > 0) {
    result <- "Positive"
  }
  else if (x < 0) {
    result <- "Negative"
  }
  else {
    result <- "Zero"
  }
  return(result)
}

check(1)

x= 3

if (x>0){
  print("positive")
}else if(x==0){
  print("Null number")
}else{
  print("Negative")
}
#
if (x>0||x<0){
  print("real number")
}else if(x==0){
  print("Null number")
}else{
  print("number")
}

# Exo:
category <- 'A'
price <- 10
if (category =='A'){
  cat('A vat rate of 8% is applied.','The total price is',price *1.08)  
} else if (category =='B'){
  cat('A vat rate of 10% is applied.','The total price is',price *1.10)  
} else {
  cat('A vat rate of 20% is applied.','The total price is',price *1.20)  
}


# Recursion: factorial
rec_fac <- function(x){
  if(x==0 || x==1)
  {
    return(1)
  }   
  else
  {
    return(x*rec_fac(x-1))
  }
}
rec_fac(3)


# for and while loops: table of multiplication. 
# A break statement is used inside a loop (repeat, for, while) to stop the iterations and flow the control outside of the loop.
num= as.integer(readline(prompt = "Enter a number: "))

for (i in 1:10){
  
  cat(num, 'x',i,'=', num*i, "\n")
}

for (i in 1:20){
  if (i%%2==0){
    cat(i,' is even\n')
  }else{
    cat(i,' is odd\n')
  }
}


# while:
i <- 1
while (i < 6) {
  print(i)
  i = i+1
}

i = 5
while (i>0){
  print("Africa")
  i=i-1
}

for (i in 1:10){
  if(i>5){
    break
  }
  print(i)
}
#
x <- 1:5
for (val in x) {
  if (val == 3){
    break
  }
  print(val)
}
# gfgfg
# OOP
# Handling errors/exceptions
# Handling files

# Advanced lessons:

# Step 1 - Define a list
# Step 2 - Create a function
# Step 3 - Use sapply()
# Step 4 - Use lapply()

values <- list(a = c(1, 2, 3), b = c(4, 5, 6), c = c(7, 8, 9))
print(values)

#Create a function
#The sapply () and lappy () function can return value for only one function, in order to return values for multiple functions in list, we are going to define a new function (x) that will have multiple functions as inputs. In the following example, we consider the functions like, minimum, maximum and mean of elements in a list.

multiple.func <- function(x) {
  c(min = min(x), mean = mean(x), max = max(x))
}

result <- sapply(values, multiple.func)
print(result)

# Use lapply()
result <- lapply(values, multiple.func)
print(result)

# Graphics in R
plot(1:10)
plot(1,10)
plot(c(1, 8), c(3, 10))
plot(1:10, type="l")
plot(1:10, main="My Graph", xlab="The x-axis", ylab="The y axis")
plot(1:10, col="red")
plot(1:10, cex=2)
plot(1:10, pch=25, cex=2)
plot(1:10, type="l", col="blue")
plot(1:10, type="l", lwd=2)
plot(1:10, type="l", lwd=5, lty=3)

# Multiple Lines
# To display more than one line in a graph, use the plot() function together with the lines() function:
line1 <- c(1,2,3,4,5,10)
line2 <- c(2,5,7,8,9,10)
line3 <- c(4,3,1,2,5,2)

plot(line1, type = "l", col = "blue")
lines(line2, type="l", col = "red")
lines(line3, type="l", col = "yellow")

# Scatter Plots
x <- c(5,7,8,7,2,2,9,4,11,12,9,6)
y <- c(99,86,87,88,111,103,87,94,78,77,85,86)

plot(x, y, xlab = "height", ylab = 'Age', col= 'red')

x <- c(5,7,8,7,2,2,9,4,11,12,9,6)
y <- c(99,86,87,88,111,103,87,94,78,77,85,86)

plot(x, y, main="Observation of Cars", xlab="Car age", ylab="Car speed")

# day one, the age and speed of 12 cars:
x1 <- c(5,7,8,7,2,2,9,4,11,12,9,6)
y1 <- c(99,86,87,88,111,103,87,94,78,77,85,86)

# day two, the age and speed of 15 cars:
x2 <- c(2,2,8,1,15,8,12,9,7,3,11,4,7,14,12)
y2 <- c(100,105,84,105,90,99,90,95,94,100,79,112,91,80,85)

plot(x1, y1, main="Observation of Cars", xlab="Car age", ylab="Car speed", col="red", cex=2)
points(x2, y2, col="blue", cex=2)

# Pie Charts
# Create a vector of pies
x <- c(10,20,30,40)

# Display the pie chart
pie(x)
# End

# Create a vector of pies
x <- c(10,20,30,40)

# Display the pie chart and start the first pie at 90 degrees
pie(x, init.angle = 90)
# End
# Create a vector of pies
x <- c(10,20,30,40)

# Create a vector of labels
mylabel <- c("Apples", "Bananas", "Cherries", "Dates")

# Display the pie chart with labels
pie(x, label = mylabel, main = "Fruits")

# End
# Create a vector of colors
colors <- c("blue", "yellow", "green", "black")

#
# Display the pie chart with colors
pie(x, label = mylabel, main = "Fruits", col = colors)

# End
# Create a vector of labels
mylabel <- c("Apples", "Bananas", "Cherries", "Dates")

# Create a vector of colors
colors <- c("blue", "yellow", "green", "black")

# Display the pie chart with colors
pie(x, label = mylabel, main = "Pie Chart", col = colors)

# Display the explanation box
legend("bottomright", mylabel, fill = colors)
# End

# Bar Charts
# x-axis values
x <- c("A", "B", "C", "D")

# y-axis values
y <- c(2, 4, 6, 8)

barplot(y, names.arg = x, col = "red")
# barplot(y, names.arg = x, col = colors)
# End
x <- c("A", "B", "C", "D")
y <- c(2, 4, 6, 8)

barplot(y, names.arg = x, density = 10)
# End
x <- c("A", "B", "C", "D")
y <- c(2, 4, 6, 8)

barplot(y, names.arg = x, width = c(1,2,3,4))
# End
x <- c("A", "B", "C", "D")
y <- c(2, 4, 6, 8)

barplot(y, names.arg = x, horiz = TRUE)

# Hist
# Create data for the graph.
v <- c(19, 23, 11, 5, 16, 21, 32,
       14, 19, 27, 39)

# Create the histogram.
hist(v, xlab = "No.of Articles ",
     col = "green", border = "black")

# 
# Creating data for the graph.
v <- c(19, 23, 11, 5, 16, 21, 32, 14, 19,
       27, 39, 120, 40, 70, 90)

# Creating the histogram.
m<-hist(v, xlab = "Weight", ylab ="Frequency",
        col = "darkmagenta", border = "pink",
        breaks = 5)

# Setting labels
text(m$mids, m$counts, labels = m$counts,
     adj = c(0.5, -0.5)) 
# hist(v)
# 
# Creating data for the graph.
v <- c(19, 23, 11, 5, 16, 21, 32, 14,
       19, 27, 39, 120, 40, 70, 90)

# Creating the histogram.
hist(v, xlab = "Weight", ylab ="Frequency",
     xlim = c(50, 100),
     col = "darkmagenta", border = "pink",
     breaks = c(5, 55, 60, 70, 75,
                80, 100, 140))


# R Statistics
# Statistics is the science of analyzing, reviewing and conclude data.
#
# Some basic statistical numbers include:

# Mean, median and mode
# Minimum and maximum value
# Percentiles
# Variance and Standard Devation
# Covariance and Correlation
# Probability distributions
# A data set is a collection of data, often presented in a table.
mtcars
# Use the question mark to get information about the data set

?mtcars

Data_Cars <- mtcars # create a variable of the mtcars data set for better organization

# Use dim() to find the dimension of the data set
dim(Data_Cars) # nrow and ncol

# Use names() to find the names of the variables from the data set
names(Data_Cars)

# Use the rownames() function to get the name of each row in the first column, which is the name of each car:
rownames(Data_Cars)

# Get the col "cyl"
Data_Cars$cyl

# Sort cyl
sort(Data_Cars$cyl)

# summary: Min First quantile (percentile), Median, Mean, Third quantile (percentile) and Max 
summary(Data_Cars)

max(Data_Cars$hp)
min(Data_Cars$hp)

# For example, we can use the which.max() and which.min() functions to find the index position of the max and min value in the table:
which.max(Data_Cars$hp)
which.min(Data_Cars$hp)

rownames(Data_Cars)[which.max(Data_Cars$hp)]
rownames(Data_Cars)[which.min(Data_Cars$hp)]

# Mean - The average value
# Median - The middle value
# Mode - The most common value
mean(Data_Cars$wt)
median(Data_Cars$wt)

#Mode
as.numeric(names(sort(-table(Data_Cars$wt)))[1])
# Percentiles
#Percentiles are used in statistics to give you a number that describes the value that a given percent of the values are lower than.
# c() specifies which percentile you want
quantile(Data_Cars$wt, c(0.75))
quantile(Data_Cars$wt)
print(class(quantile(Data_Cars$wt)))

# Quartiles
# Quartiles are data divided into four parts, when sorted in an ascending order:
#   
#   The value of the first quartile cuts off the first 25% of the data
# The value of the second quartile cuts off the first 50% of the data
# The value of the third quartile cuts off the first 75% of the data
# The value of the fourth quartile cuts off the 100% of the data
a<-b<-2

# Data Strctres

#Vectors
# A vector is simply a list of items that are of the same type.
# Vector of strings
fruits <- c("banana", "apple", "orange")

# Print fruits
fruits

# Vector of numerical values
numbers <- c(1, 2, 3)

# Print numbers
numbers

# Vector with numerical values in a sequence
numbers <- 1:10

numbers

# Vector with numerical decimals in a sequence
numbers1 <- 1.5:6.5
numbers1

# Vector with numerical decimals in a sequence where the last element is not used
numbers2 <- 1.5:6.3
numbers2

# Vector of logical values
log_values <- c(TRUE, FALSE, TRUE, FALSE)

log_values

# Length of a vector
fruits <- c("banana", "apple", "orange")

length(fruits)

# Sort
fruits <- c("banana", "apple", "orange", "mango", "lemon")
numbers <- c(13, 3, 5, 7, 20, 2)

sort(fruits)  # Sort a string
sort(numbers) # Sort numbers

# Access a vector
fruits <- c("banana", "apple", "orange")

# Access the first item (banana)
fruits[1]

# Access a vector: several elements
fruits <- c("banana", "apple", "orange", "mango", "lemon")

# Access the first and third item (banana and orange)
fruits[c(1, 3)]

# Access all items except for the first item
fruits <- c("banana", "apple", "orange", "mango", "lemon")
fruits[c(-1)]

# Change item
fruits <- c("banana", "apple", "orange", "mango", "lemon")

# Change "banana" to "pear"
fruits[1] <- "pear"

# Print fruits
fruits

# Repeat Vectors
repeat_each <- rep(c(1,2,3), each = 3)

repeat_each

# 
repeat_times <- rep(c(1,2,3), times = 3)

repeat_times

# Independent
repeat_indepent <- rep(c(1,2,3), times = c(5,2,1))

repeat_indepent

#
numbers <- seq(from = 0, to = 100, by = 20)

numbers

# R Lists
# List of strings
thislist <- list("apple", "banana", "cherry")

# Print the list
thislist

# Access item: list_n[[]] or list_n[]
thislist <- list("apple", "banana", "cherry")

thislist[[1]]

# Change Item Value
thislist <- list("apple", "banana", "cherry")
thislist[1] <- "blackcurrant"

# Print the updated list
thislist

# Check if Item Exists
thislist <- list("apple", "banana", "cherry")

"apple" %in% thislist

# Add List Items
thislist <- list("apple", "banana", "cherry")

append(thislist, "orange")

# Add with location
thislist <- list("apple", "banana", "cherry")

append(thislist, "orange", after = 2)

# Remove List Items
# thislist <- list("apple", "banana", "cherry")
newlist <- thislist[-1] # Remove the first Item
newlist

# Remove the last Item
head(thislist, -1)

# Remove last N elements. N<-2
head(thislist, - 2) 

# Delete an item
thislist[[1]] <- NULL
thislist

# Print the new list
newlist

# get index of an item
which(thislist == "apple")

# Range of indexes: slicing
thislist <- list("apple", "banana", "cherry", "orange", "kiwi", "melon", "mango")
(thislist)[2:5]

#
thislist <- list("apple", "banana", "cherry")

for (x in thislist) {
  print(x)
}

# Join Two Lists
list1 <- list("a", "b", "c")
list2 <- list(1,2,3)
list3 <- c(list1,list2)

list3

# Nested Lists
# list1 <- list(a = 2, b = 3)
# list2 <- list(c = "a", d = "b")
list1 <- list(2, 3)
list2 <- list("a","b")
mylist <- list(list1, list2)
print(mylist)

# First item: indexing list_n[[]]
mylist[[1]]
class(unlist(mylist[[1]][1])) # 2. unlist helps to get a value instead of a list.
unlist(mylist[[1]][[1]])
# as.numeric(paste(unlist(allsum))

# count a number of times an item in list
v<- c(1,1,1,1,1,5,2,3,4,5,3,7,8,9,5)
v
print("each item with number of time it has been repeated")
table(v)

print("Count of repeated values")
length(which(table(v)>1)) # three digits are repeated

# count a number of times 1 appear in list v: shorct
count1<- length(which(v == 1)) # or length(v[ v == 1 ])
count1

# count a number of item that are less than 5 appear in list v:
length(which(v< 5)) # Answer 9. or length(v[ v< 5 ]) or sum(v < 5)

# count function:
count_f<-function(x,n){
  return(length(which(x==n)))
}
count_f(v,1)
#
perc <- function(x, n){ 100*length((which(x == n))) / length(x) }
perc(v,1)


# Matrices
# A matrix is a two dimensional data set with columns and rows.
# 
# A column is a vertical representation of data, while a row is a horizontal representation of data.
thismatrix<- matrix(c(1,2,3,4,5,6), nrow = 2, ncol = 3)
print(thismatrix)

#
thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)

thismatrix

# Access element
thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)

thismatrix[1, 2]

thismatrix[1, 2]<-"Orr"
thismatrix

# Get all the col for a specific row (2)
thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)

thismatrix[2,]

# Get all the row for a specific col (2)
thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)

thismatrix[,2]

# Access More Than One Row
## A comma (,) before c() means that we want to access the column.
## A comma (,) after c() means that we want to access the row.
## Get a sbmatrix from the first and second row with all the cols
thismatrix <- matrix(c("apple", "banana", "cherry", "orange","grape", "pineapple", "pear", "melon", "fig"), nrow = 3, ncol = 3)
print(thismatrix)
thismatrix[c(1,2),]

# Access More Than One Col
thismatrix <- matrix(c("apple", "banana", "cherry", "orange","grape", "pineapple", "pear", "melon", "fig"), nrow = 3, ncol = 3)
print(thismatrix)
thismatrix[,c(1,2)]

# Add Columns:
# Use the cbind() function to add additional columns in a Matrix
thismatrix <- matrix(c("apple", "banana", "cherry", "orange","grape", "pineapple", "pear", "melon", "fig"), nrow = 3, ncol = 3)

print(thismatrix)
newmatrix <- cbind(thismatrix, c("strawberry", "blueberry", "raspberry"))

# Print the new matrix
print(newmatrix)

# Add row
# Use the rbind() function to add additional rows in a Matrix:
thismatrix <- matrix(c("apple", "banana", "cherry", "orange","grape", "pineapple", "pear", "melon", "fig"), nrow = 3, ncol = 3)

newmatrix <- rbind(thismatrix, c("strawberry", "blueberry", "raspberry"))

# Print the new matrix
newmatrix

# Remove Rows and Columns
thismatrix <- matrix(c("apple", "banana", "cherry", "orange", "mango", "pineapple"), nrow = 3, ncol =2)
print(thismatrix)

#Remove the first row and the first column
# thismatrix <- thismatrix[-c(1), -c(1)]

# Remove the first row
thismatrix <- thismatrix[-c(1), ]
thismatrix

# Remove the first row
thismatrix <- thismatrix[, -c(1)]
thismatrix

## Remove the first row and the first column
thismatrix <- thismatrix[-c(1), -c(1)]
thismatrix

# Check if an Item Exists
thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)

"apple" %in% thismatrix

# Number of Rows and Columns

thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)

dim(thismatrix)
nrow(thismatrix)
ncol(thismatrix)

# order of a matrix
length(thismatrix)

# matrix item
thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)

for (r in 1:nrow(thismatrix)){
  for (c in 1:ncol(thismatrix)){
    print(thismatrix[r,c])
  }
}

# Combine two Matrices:
# Combine matrices
Matrix1 <- matrix(c("apple", "banana", "cherry", "grape"), nrow = 2, ncol = 2)
Matrix2 <- matrix(c("orange", "mango", "pineapple", "watermelon"), nrow = 2, ncol = 2)

# Adding it as a rows
Matrix_Combined <- rbind(Matrix1, Matrix2)
Matrix_Combined

# Adding it as a columns
Matrix_Combined <- cbind(Matrix1, Matrix2)
Matrix_Combined

# R Arrays
# An array with one dimension with values ranging from 1 to 24
thisarray <- c(1:24)
thisarray

# An array with more than one dimension
multiarray <- array(thisarray, dim = c(4, 3, 2)) # 2; two matrices where each of them has 4 rows and 3 cols.
multiarray
dim(multiarray)
length(multiarray)

multiarray <- array(thisarray, dim = c(4, 6))
multiarray

# Access item
thisarray <- c(1:24)
multiarray <- array(thisarray, dim = c(4, 3, 2))

multiarray[2, 3, 2]

# Exo:
thisarray <- c(1:24)

# Access all the items from the first row from matrix one
multiarray <- array(thisarray, dim = c(4, 3, 2))
multiarray[c(1),,1]

# Access all the items from the first column from matrix one
multiarray <- array(thisarray, dim = c(4, 3, 2))
multiarray[,c(1),1]

# for loop
thisarray <- c(1:24)
multiarray <- array(thisarray, dim = c(4, 3, 2))

for(x in multiarray){
  print(x)
}

# Data Frames
#Data Frames are data displayed in a format as a table.

# Create a data frame
Data_Frame <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)

# Print the data frame
Data_Frame
# summary
summary(Data_Frame)

# Access Items: col
# We can use single brackets [ ], double brackets [[ ]] or $ to access columns from a data frame:
colnames(Data_Frame)
Data_Frame$Training
Data_Frame$Pulse
Data_Frame["Pulse"]
Data_Frame[["Pulse"]]
Data_Frame[1]

# Add a new row
New_row_DF <- rbind(Data_Frame, c("Strength", 110, 110))

# Print the new row
New_row_DF

# Add a new column
New_col_DF <- cbind(Data_Frame, Steps = c(1000, 6000, 2000))

# Print the new column
New_col_DF

# Remove Rows and Columns
# Remove the first row
Data_Frame_New <- Data_Frame[-c(1),]

# Print the new data frame
Data_Frame_New

# Remove the first col
Data_Frame_New <- Data_Frame[,-c(1)]

# Print the new data frame
Data_Frame_New

# Amount of Rows and Columns
dim(Data_Frame)
length(Data_Frame)
ncol(Data_Frame)
nrow(Data_Frame)

# Combining Data Frames
Data_Frame1 <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)

Data_Frame2 <- data.frame (
  Training = c("Stamina", "Stamina", "Strength"),
  Pulse = c(140, 150, 160),
  Duration = c(30, 30, 20)
)

New_Data_Frame <- rbind(Data_Frame1, Data_Frame2)
New_Data_Frame

# col:
Data_Frame3 <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)

Data_Frame4 <- data.frame (
  Steps = c(3000, 6000, 2000),
  Calories = c(300, 400, 300)
)

New_Data_Frame1 <- cbind(Data_Frame3, Data_Frame4)
New_Data_Frame1

# Factors (for caterical variable)
# Factors are used to categorize data. Examples of factors are:
#   
#   Demography: Male/Female
#   Music: Rock, Pop, Classic, Jazz
#   Training: Strength, Stamina
# Create a factor
music_genre <- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"))

# Print the factor
music_genre

levels(music_genre)
length(music_genre)

# 
music_genre <- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"), levels = c("Classic", "Jazz", "Pop", "Rock", "Other"))
music_genre

music_genre <- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"))

music_genre[3]

# Change the value of the third item:

music_genre <- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"))

music_genre[3] <- "Pop"

music_genre[3]

## Trying to change the value of the third item ("Classic") to an item that does not exist/not predefined ("Opera"):

music_genre <- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"))

music_genre[3] <- "Opera"

music_genre[3]


# R Math

max(5, 10, 15)

min(5, 10, 15)

sqrt(16)

abs(-4.7)

# ceiling() and floor()
# The ceiling() function rounds a number upwards to its nearest integer, and the floor() function rounds a number downwards to its nearest integer, and returns the result:

ceiling(1.4)

floor(1.4)

x<- 2
print(paste("sqare of", x, 'is', x^2))




## Learning R: plan
# 1. Basic of R;
# 2. Data structures
# 3. Creation
# 4. manipulation
# 5. Perfom calculations

# R is a language for statistical computing and Data Science.

# Vector: support only the same types of data. In this case, all the data within v will be character.
v<- c(2,"A", 4L)
v
class(v)

l<- c(2,2.5, 3L)
l
class(l)

k<- c(2,2.5, 3.5)
class(k)

# List: support different types of data
l<- list(2,"A", 4L)
l
class(l)

# Vector calculus
t<- c(2,4,5)
t^2 # Element wise operation
t/2
t-2
t%%2==0

#
k<- c(2,1, 3)
l<- c(2,4, 1)

# Aggregations operation

# Distance
sum(k-l)^2
# max and min
max(k)
min(k)
mean(k)

# sum 
sum_e<-function(x){
  res<- 0
  for(i in x){
    res=res+i
  }
  return(res)
}
sum_e(k)

# mean 
mean_e<-function(x){
  res<- 0
  for(i in x){
    res=res+i
  }
  return(res/length(x))
}
mean_e(k)
# max
max_e<-function(x){
  res<- - Inf
  for(i in x){
    if (i > res){
      res<-i
    }
  }
  return(res)
}
max_e(l)

# min
min_e<-function(x){
  res<- Inf
  for(i in x){
    if (i < res){
      res<-i
    }
  }
  return(res)
}
min_e(k)

# coparison
k>l

# Linear Algebra

## Gaussian Elimination
install.packages("matlib")
install.packages("pracma")
install.packages("psych")
# Importing required library
library("matlib")
library(pracma) # For rank of matrix
library(psych)  # For trace of matrix
A <- matrix(c(1,3,2,4,4,-3,5,1,2), nrow = 3, byrow = TRUE)
print(A)
b <- c(13,3,13)
gaussianElimination(A, b, verbose = TRUE)

rref(A)

# Dot products
u <- c(-3,1,7)
v <- c(9,2,-4)
u %*% v

# matrix vs vector
A <- matrix(c(2,3,-1,5), nrow = 2, byrow = TRUE)
x <- matrix(c(2,1), nrow = 2)
A %*% x

# zero matrix

matrix(0,2,2)

# one matrix
matrix(1,2,2)

# expo.
A <- matrix(c(-3,7,1,8), nrow = 2, byrow = TRUE)
A %^% 2

