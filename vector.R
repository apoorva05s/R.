x<-seq(5)
x
vec1=c(x)
vec1
x<-seq(20)
x
y<-seq(from=5, to=15)
y
z<-seq(from=0,to=20,by=4)
z
a<-seq(from=0, to=20, length.out=4)
a
v1=seq(length.out=5)
v1
sum(v1)
v2=c(1,5,7,NA)
sum(v2)
sum(v2,na.rm=TRUE)
v1[2]
v1[c(2,5)]





x<- seq(from=0, to=10)
y<- c(7,8,9)
x<- setdiff(x,y)
x
x[x=(x%%2!=0)]
x[x=(x%%2==0)]

