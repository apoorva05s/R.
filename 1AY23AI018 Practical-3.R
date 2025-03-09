#Develop a program to create two 3 X 3 matrices A and B and perform
#the following operations a) Transpose
#of the matrix b) addition c) subtraction d) multiplication

A <- matrix(1:9, nrow = 3, ncol = 3)
B <- matrix(c(3,4,1,5,8,6,2,12,16), nrow = 3, ncol = 3)
print("Matrix A:")
print(A)
print("Matrix B:")
print(B)
transpose_A <- t(A)
transpose_B <- t(B)
print("Transpose of Matrix A:")
print(transpose_A)
print("Transpose of Matrix B:")
print(transpose_B)
addition <- A + B
print("Addition of A and B:")
print(addition)
subtraction <- A - B
print("Subtraction of A and B:")
print(subtraction)
multiplication <- A %*% B
print("Multiplication of A and B:")
print(multiplication)

