#a) Assign different type of values to variables and display the
#type of variable. Assign different types
num_double <- 10.5 
print(class(num_double)) 
num_integer <- 20L  
print(class(num_integer))
is_true <- TRUE 
print(class(is_true))
num_complex <- 5 + 3i 
print(class(num_complex))
char_string <- "Hello" 
print(class(char_string))


#b)Demonstrate Arithmetic and Logical Operations with simple examples.

# Arithmetic Operations
a <- as.integer(readline("Enter the value: "))
b <-as.integer(readline("Enter the value: "))
add <- a + b
print(add)
subtract <- a - b
print(subtract)
multiply <- a * b
print(multiply)
divide <- a / b
print(divide)
modulus <- a %% b
print(modulus)
exponent <- a ^ b
print(exponent)

#Logical operations
x <- TRUE
y <- FALSE
and_op <- x & y 
or_op <- x | y  
not_op <- !x    
equal_op <- a == b
print(and_op)    
print(or_op)     
print(not_op)    
print(equal_op)  

#c)Demonstrate generation of sequences and creation of vectors

seq_var <- seq(1, 10)   
print(seq_var)
vector_var <- c(5, 10, 15, 20)
print(vector_var)

#d)Demonstrate creation of matrices

matrix <- matrix(1:9, nrow = 3, ncol = 3)
print(matrix)

#e) Demonstrate the Creation of Matrices from Vectors
#using Binding Function.

vec1 <- c(1, 2, 3)
vec2 <- c(4, 5, 6)
matrix_from_vectors_row <- rbind(vec1, vec2)  
print(matrix_from_vectors_row)
matrix_from_vectors_col <- cbind(vec1, vec2) 
print(matrix_from_vectors_col)

#f) Demonstrate element extraction from vectors, matrices and arrays

vector_element <- vector_var[2]       
matrix_element <- matrix[1, 2]     
array_var <- array(1:12, dim = c(2, 3, 2)) 
array_element <- array_var[1, 2, 2]        

print(vector_element)
print(matrix_element)
print(array_element)

