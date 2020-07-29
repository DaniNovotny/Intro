# String 
# es lo mismo que character
String <- "This is a string"
class(String)
length(String)
nchar(String)

# Double
number <- 234

class(number)
typeof(number)
length(number)

number_2 <- 1/8
typeof(number_2)

# Interger
integer <- 2L # se coloca una L al final

class(integer)

# Logical 
# = (boolean, condicionales, 1 o 0, True or False)
logical <- FALSE
class(logical)
logical*1

logical <- TRUE
logical*1


as.logical(0)
as.logical(1)

# todos estos anteriores son vectores atomicos

# Vectores
num_vector <- c(1,2,3,4)
length(num_vector)

num_vector_2 <- c(1,2,3,4,"a")

vec1 <- 1:100
vec2 <- sample(x = 1:10, 5, FALSE)
vector("integer",length = 10)

class(num_vector)
class(num_vector_2)

c(num_vector,5,6,7,8)
c(num_vector_2,5,6,7,8)

log_vec <- c(F,F,T)
log_vec
log_vec*10

num_vector_2
as.numeric(num_vector_2)
as.character(num_vector)

# Factor
factor_1 <- c("Mon","Tue","Wed","Thu","Fri","Sat","Sun","Wed","Thu",
              "Fri","Sat","Sun","Wed","Thu","Wed","Thu")
factor_1 <- factor(factor_1)
factor_1
# Ordena los niveles en orden alfabetico


# Ordered Factors
factor_2 <- c("Mon","Tue","Wed","Thu","Fri","Sat","Sun","Wed","Thu",
              "Fri","Sat","Sun","Wed","Thu","Wed","Thu")
factor_2 <- ordered(factor_2, levels = c("Mon","Tue","Wed","Thu","Fri","Sat","Sun"))
factor_2

# Lists
vector1 <- c(1,2,3,4,5)
vector2 <- c(F,F,T)
vector3 <- letters[1:6]

list_1 <- list(vector1,vector2,vector3)
list_1
list_1[[2]] # en una lista se escribe doble bracket, en un vector solo uno.

names(list_1)
names(list_1) <- c("A","B","C")
names(list_1)
list_1

list_1$A

# Matriz
mat <- matrix(1:10,2,5)
mat[,3] #indexing

c(1,2,3,4,5)[c(1,3:5)] #tambien se llama slicing

a <- c(1,2,3,4,5,4,5,4,5)
condicion <- a>4
a[condicion]
a[a>=4]

# Data Frames

df <- data.frame(
  col1 = c("This", "is","a","vector", "of", "strings"),
  col2 = 1:6,
  col3 = letters[1:6],
  stringsAsFactors = FALSE
)

df
View(df)
str(df)
df$col1

df[,3]
df[1,]

names(df)
names(df) <- c("column1","column2","column3")
names(df)[2] <- "c2"
names(df)

head(df,2)
head(df,3)

nrow(df)
ncol(df)

# Functions of base R (ufunc)

num_vector_3 <- as.numeric(num_vector_2)
is.na(num_vector_3)

num_vector_3[!is.na(num_vector_3)] # se coloca el !

# para quitar los NA
mean(num_vector_3,na.rm = TRUE)
# oder
mean(num_vector_3[!is.na(num_vector_3)])

df_copy <- df <- data.frame(
  col1 = c("This", "is","a", NA, "of", "strings"),
  col2 = c(1:5,NA),
  col3 = letters[1:6],
  stringsAsFactors = FALSE
)

df_copy[!is.na(df_copy$col2),]

