getwd()
dir()
setwd("C:/Users/Erin/Box Sync/Coursera/datasciencecoursera/r_programming")

# question 4: what is the class of the object
x = 4L
class(x)

# question 5: what is the class of the object
x = c(4, "a", TRUE)
class(x)

# question 6
x = c(1,3, 5)
y = c(3, 2, 10)
rbind(x,y)

# question 8
x = list(2, "a", "b", TRUE)
x[[1]]

# question 9
x = 1:4
y = 2
x + y

# question 10: set all elements of this vector that are less than 6 
# to be equal to zero
x <- c(3, 5, 1, 10, 12, 6)
x[x <= 5] = 0
print(x)

# question 11:
data = read.csv("hw1_data.csv")

# question 12: extract the first 2 rows of the data frame and 
# print them to the console.
head(data,2)
data[1:2,]

# question 13: How many observations (i.e. rows)?
nrow(data)

# question 14: Extract the last 2 rows of the data frame
tail(data,2)

# question 15: What is the value of Ozone in the 47th row?
data[47, "Ozone"]

# question 16: How many missing values are in the Ozone column of this data frame?
x = data[,"Ozone"]
naInd = is.na(data[,"Ozone"])
length(x[naInd])

# question 17: What is the mean of the Ozone column in this dataset? 
# Exclude missing values (coded as NA) from this calculation.
good = complete.cases(data)
mean(data[good,"Ozone"])

# question 18: Extract the subset of rows of the data frame where Ozone values are 
# above 31 and Temp values are above 90. What is the mean of Solar.R in this subset?
test = data[,"Ozone"] > 31 & data[,"Temp"] > 90
dataSubset = data[test,]
good = complete.cases(dataSubset)
mean(dataSubset[good,"Solar.R"])

# question 19: What is the mean of "Temp" when "Month" is equal to 6?
test = data[,"Month"] == 6
dataSubset = data[test,]
mean(dataSubset[,"Temp"])

# question 20: What was the maximum ozone value in the month of May (i.e. Month = 5)?
test = data[,"Month"] == 5
dataSubset = data[test,]
good = complete.cases(dataSubset)
max(dataSubset[good,"Ozone"])
