#here we will focus data structures 

#vector: contains elements of the same type 
vec1 = c(1,2,5)
vec2 = 1:5
vec3 <- 1.2:5.6
vec4 <- seq(1, 5, by = 0.6)

print(vec1)
print(vec2)
print(vec3)
print(vec4)

#we can create a vector off type in r such as ints, strings, bools, complex
vec5 = c(1L, 2L, 3L)
print(vec5)

#Accessing vector elements  
vec6 = c("Blue", "Green", "Red", "Orange", "Purple")
element1 = vec6[3]
print(element1)
#This shows us in R the elements are retrieved by their positions not index 
print(vec6[2])
#lets do a subvector extraction 
subvec6 <- vec6[c(1,3,5)] #we create a vector of the positions of the elements in main vector
print(subvec6)

#Matrices 
#store data in  a 2D layout , elements of the same type

vec7 <- (1:10)
m1 <- matrix(vec7, nrow = 2, ncol = 5, byrow = TRUE)
print(m1)

m2 <- matrix(vec7,nrow = 2,ncol = 5,byrow = FALSE)
print(m2)

#byrow = true will order the vector into the matrix by row, if it is false it will order the vector by col 

vec8 = c(2,4,6,8,10,12,14,16,18,20)
rname = c("r1", "r2")
cname = c("c1", "c2", "c3", "c4", "c5")
m3 <- matrix(vec8, nrow = 2, ncol = 5, byrow = TRUE, dimnames = list(rname, cname))
print(m3)

#accessing elements in a Matrix 
print(m3[1,2])
#just the first row:
print(m3[1,])
#just the second col: 
print(m3[,2])

print(m3[1:5]) #<- this is reading down col by col 

#submatrix
subm3 = m3[c(1,2), 1:2] #<- [rows, col] could even wire c(1,2) on both sides
print(subm3)

#Array , data must be of the same type but more than 2 dimension
vec9 <- c(1:18)
r2_name = c("r1", "r2", "r3")
c2_name = c("c2", "c2", "c3")
m_names <- c("matrix_1", "matrix_2")
arr1 <- array(vec9, dim = c(3,3,2), dimnames = list(r2_name, c2_name, m_names) )
print(arr1)
#the array allowed us to create 2 matrices of dimension 3x3 

vec10 <-1:32
arr2 = array(vec10, dim = c(4,4,2))
print(arr2)

#now we will access elements in the array 
print(arr1[1,2,1]) #[row, col, which matrix]

#if i want an entire matrix: 
print(arr2[,,2])
print(arr2[-2,,2]) #will exclude the second row  

#List
#This contains data of different types , even different structures and even functions 
list_data <- list("Red", "Green", c(21, 32, 11), TRUE, 51.23, 119.1)
print(list_data)
print(length(list_data))

list_data2 <- list(c("Jan", "Feb", "Mar", "Apr"), matrix(c(1,2,3,4,5,6,7,8), nrow = 2), list("green", 12.3))
names(list_data2) <- c("1st quarter", "matrix" , "inner list")
print(list_data2)

#accessing elements in a list 
print(list_data2[2])
print(list_data2[-2])
#accessing elements in  R data structures are relatively straight forward. It is important to remember we use their actual positions not index nr

#Factors 
#represent categorical data (low, medium, high). They are stored as integers, have labels  associated with unique integers .set values known as levels

#creating a factor 
data_list4 <- c("cold", "medium", "hot", "cold", "frosty")
factor0 = factor(data_list4)
print(factor0)
factor1 = factor(data_list4, ordered = FALSE)
print(factor1)
factor2 <- factor(data_list4, levels = c("frosty", "cold", "medium", "hot"))
print(factor2)

factor3 <- factor(data_list4, levels = rev(c("frosty", "cold", "medium", "hot")))
print(factor3)

print(factor3[2])

#DataFrame
#tabular 2d data structure (like Pandas, not to be confused with syntax) 
df1 <- data.frame(
  Name = c("Ameera", "Raees", "Ayaan"),
  Age = c(21, 22, 0),
  Vote = c(TRUE, TRUE, FALSE)
  
)
print(df1)

print(df1[1,2])

ages <- df1$Age
print(ages)
print(df1[1,])
print(df1[-1,])

sub_df1 <- df1[c(1:3), c(1,2)]
print(sub_df1)
