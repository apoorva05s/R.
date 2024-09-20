#Write a R program to create an array usig 4 given columns, 3 given rows
#and display the content of array

vec1=c(seq(from=2, to =50, by=4))
vec1
arr= array(vec1, dim=c(3,4))
print("The required array is : ")
print(arr)
