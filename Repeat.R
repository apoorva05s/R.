                                #REPEAT(EXIT CONTROL LOOP)
i=0
repeat{
 print("HI")
  i=i+1
  if(i==3)
  {
    break
  }
     }

i=0
repeat{
  print("HI")
  i=i+1
  if(i>3)
  {
    break
  }
}


i=0
repeat{
  print(i)
  i=i+1
  if(i==3)
  {
    next
  }
}


#Write a program to print first 5 values from a vector of 1 to 10

for(i in 1:10)
{
  if(i>5)
  {
    break
  }
  print(i)
}


for(i in 1:10)
{
  if(i>6)
  {
    next
  }
  print(i)
}


for(i in 1:10)
{
  if(i==6)
  {
    next
  }
  print(i)
}


for(i in 1:10)
{
  if(i==6)
  {
    break
  }
  print(i)
}


#Write a program to skip even numbers in a range of 1 to 20 and print all
#the odd numbers by using next statement

for(i in 1:20)
{
  if(i%%2==0)
  {
    next
  }
  print(i)
}

#To check if the given number is prime or composite

n= readline("Enter the number: ")
i=2
while(i<(n-1))
{
  if(n%%i==0){
    break
  }else{
    print("PRIME NUMBER")
  }
  i=i+1
}
