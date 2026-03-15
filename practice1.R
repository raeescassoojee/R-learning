print(1+4) 

#division and multiplication
print(2/5)
print(3 *4)

#integer division
print(8%/%3)

#modulus 
print(8%%3)

print(3^2)

#square root 
print(sqrt(9))

#Rounding off
print(round(4.564543563, 4))

# ceiling (rounding up) / floor
print(ceiling(4.2))
print(floor(4.9))

#absolute values
print(abs(-9.78))

#paste combine strings
print(paste("I love", "Coding"))

#variable we can assign with <- OR =
a <- 3
print(a)
b <-  2 
print(a ^ b)

name <- "Raees"
sur <- "Cassoojee"

print(paste(name,sur))
a = 3 
print(a)

#Data types
##double
petrol_price = 21.4
print(petrol_price)
class(petrol_price) #numeric
typeof(petrol_price) #tells me its a double
age <- 21L  #the L makes it an int from a double 
typeof(age)
complex = 6 + 7i
typeof(complex)
statement= FALSE
class(statement)
typeof(statement)

abc <- charToRaw("ABC")
typeof(abc)
class(abc)
print(abc)

#data conversion 
price <- 44
typeof(price)
price_in <- as.integer(price)
typeof(price_in)
marks = 33L
typeof(marks)
mark = as.numeric(marks)
typeof(mark)

name = "Raees"
typeof(name)

print(nchar(name))
print(tolower(name))
print(toupper(name))
#sub 
statement_me = " Hi my name is Raees and I love coding"
print(substring(statement_me, 1, 5))

grepl("Raees", statement_me)   #checks if Raees exists in statement_me

#conditions
#IF statements
age = 23
legal_age = 18 
if (age < legal_age) { 
  print("Person cannot sign document")
  
}else if (age == legal_age){
  print("Person can sign legal doc but requires witness")
}else{
  print("Person can sign as an adult")
}      

# & - and ,, | -- or 

#fro loop with if statement
numbers_list = c(1,2,3,4,5,6,7,8,9, 10, 11)
count = 0
for (i in numbers_list){
  if(i %% 2 ==0){
    next
  }else if( i == 9){
    break
  }else{
    count = count + 1
    print(c(count, i^2))
  }
}
#nested for loop 
letters_list = list("A", "B", "C", "D")
for(i in numbers_list)
  
  #while loop
count = 0 
while (count < 10 ){
  print(count)
  count = count +1 
  
}

count = 0 
while (count < 10 ){
  count = count +1
  print(count)
  
}

#Function 
multiplication = function(a, b){
  result = a *b 
  return(result)
}
print(multiplication(4,5))


for(i in 1:10){
  print(i)
}


#refreshing concatenation using paste
text <- "awesome"
print(paste("R is", text))

#this is how we assign one item to multiple variables 
var1 <- var2 <- var3 <- "Food" 
var1
var2
var3

#refreshing on data types
int <- 23L 
class(int)

boy = "raees"
class(boy)

num = 45
class(num)

ans = TRUE
class(ans)

z = 1i 
typeof(z)

typeof(ans)
typeof(num)
typeof(int)

#data structures
#vector 
abc = c("A", "B", "C", "D")
count  = c(1L, 2L, 3L, 4L)
logical_vector = c(TRUE, FALSE, FALSE, TRUE)
count = 1:10
vec_seq = seq(1, 15,2)
vec_seq[4]

vec_seq[-4]
vec_seq[c(1,4)]
vec_seq[1:4]
sort_vec = c(2,4,5,6,2,4,56,87,100)
sort(sort_vec)
min(sort_vec)
max(sort_vec)
sort_vec[1] = 14
length(sort_vec)

#List


my_list = list(1, 2, 3, 4, 5, "A", "B", "C", c(1,2,3,4,5,6))
my_list[1]
my_list[9]
length(my_list)


#matrices
my_matrix = matrix(c(1,2,3,4,5,6,7,8,9), nrow = 3, ncol  =3)
my_matrix_a = matrix(1:12, nrow = 6, ncol = 2)
print(my_matrix_a)

my_matrix_a[3, 2]

my_matrix_a[2,]
my_matrix_a[,2]

my_matrix_a[c(1,3),]
my_matrix_a[,c(1,2)]

my_matrix_a[1:2] 

#adding rows to an existing matrix 
new_matrix <- rbind(my_matrix, c(13,14,15))
print(new_matrix)

#adding cols
new_matrix2 = cbind(new_matrix, c(16, 17, 19, 20))
print(new_matrix2)

#dimension
dim(new_matrix)

#length 
length(my_matrix)

#understanding array 

my_list <- c(1:24)
multiarray <- array(my_list, dim = c(2,3,4))
print(multiarray)

#col, row, matrix nr order in []
multiarray[2,3,3]

multiarray[2, c(1,3),4]

#check if its in
25 %in% multiarray
"A" %in% multiarray

length(multiarray)


#understanding DataFrame
df = data.frame(
  employee_code = c("BEE01", "AEE01", "YEE02"),
  working_duration = c(3,4,8),
  days_off = c("Mon", "Wed", "Fri"),
  salary = c(120, 110, 200),
  on_leave = c(TRUE, FALSE, FALSE)
)
print(df)
summary(df)

#extracting col
salary <- df$salary
print(salary)
salary1 = df[['salary']]
print(salary1)

#ADD ROWS
df2 = rbind(df, c("ANG002", 8, "Thur", 160, FALSE))
print(df2)

#add col
df3 = cbind(df, contract_length = c(6,12,8))
print(df3)


dim(df3)

nrow(df3)
ncol(df3)

df3[1,3]

#understanding factors 
data_list = c("hot", "cold", "Frosty", "Cold", "Medium", "Hot")
factor1 = factor(data_list, levels = c("Cold", "Low", "Medium", "Hot"))
factor2 = factor(factor1, ordered = FALSE)
print(factor2)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
factor1[3]
length(factor1)



#reading in 
library(readr)
data <- read_csv("income.csv", show_col_types = TRUE)

min(data)
max(data$age)

#reading excel file 
library(readxl)
df_xl = read_excel("GermanCredit.xlsx", sheet = 1)
df_xl 

#write into excel 
df = data.frame(
  employee_code = c("BEE01", "AEE01", "YEE02"),
  working_duration = c(3,4,8),
  days_off = c("Mon", "Wed", "Fri"),
  salary = c(120, 110, 200),
  on_leave = c(TRUE, FALSE, FALSE)
)

library(writexl)
write_xlsx(df, "data/employee_details.xlsx")


#write into csv
write.csv(df, "data/employee.csv")

library(openxlsx)
write.xlsx(df, "employee_details.xlsx")



#learning to plot
library("datasets")
library("graphics")
data("mtcars")
str(mtcars)
summary(mtcars)

#scatterplot
x = c(1,2,3,4,5,6,7,8,9)
y = c(9,8,7,6,5,4,3,2,1)
plot(x,y.main = "My scatterplot", xlab = "x points", ylab = "y points, col = black")

plot(mtcars$mpg, mtcars$hp, main = "consumption vs hp", xlab = "sconsumption", ylab = "hp", col = "red")


#line graph
plot(x, type = "l", lwd = 2, lty = 5, main = "My line graph", xlab = "x points", ylab = "y points", col = "pink" )

#type = "o"



#bar graph

barplot(mtcars$hp, xlab = "hp", col = "green")
barplot(mtcars$hp, ylab = "hp", col = "green", horiz = TRUE)


#histogram
hist(mtcars$hp, xlab = "hp", col = "yellow")


#pie chart

weekday_weather = c(27,23,22,14, 30)
days = c("Mon", "Tues", "Wed", "Thur", "Fri")
colours = c("green", "red","blue", "purple", "yellow")

pie(weekday_weather, labels = days, col = colours)
