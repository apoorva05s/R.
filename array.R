#ARRAY

?array
a= c(1,2,3,4,5)
a
length(a)
a1= array(c(1,2,3,4,5))
a1
a2=array(seq(1,10), dim=5)
a2
a3= array(seq(1,10))
a3
a4=array(seq(1,9),dim=c(3,3))
a4
a5=array(seq(from=1, to=20, by=2),dim=c(3,2))
a5
vec1=c(1:9)
vec1
vec2=c(3,8,7)
vec2
vec3=array(vec1,vec2)
vec3
vec4=array(c(vec1,vec2))
vec4
vec5=array(c(vec1,vec2),dim=c(2,3,2))
vec5
dim(vec5)


row_names=c("r1", "r3")
column_names=c("c1","c2","c3")
mat_names=c("Mat1","Mat2")
arr1=array(c(vec1,vec2),dim=c(2,3,2), dimnames=list(row_names, 
                                                    column_names,mat_names))
arr1
#access elements of array
vec2[3]
arr1[2,3,1]

?append
arr=array(seq(1,20,by=2))
arr
append(arr,21)#it won't change permanently
arr
arr=append(arr,21)#to make the change permanent
arr
arr=append(arr,2,1)
arr
arr[arr>5]
arr[arr>5 & arr<20]
arr[arr!=9]
arr[-5]
output=arr[arr=(arr%%2!=0)]
output
arr[arr=(arr%%2==0)]
