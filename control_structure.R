                      #CONTROL STRUCTURES
                            #1.conditional
                            #2.jump
                            #3.looping

#Write a program to print the sum of two numbers, 
#if the first number is greater than the second else print the difference
num1= as.integer(readline("Enter the first num: "))
num2= as.integer(readline("Enter the second num: "))
if(num1>num2)
{
  sum= num1+num2
  print(sum)
}else
{
  diff= num1-num2
  print(diff)
}


#Write a program to find the greatest of three numbers

num1= as.integer(readline("Enter the first num: "))
num2= as.integer(readline("Enter the second num: "))
num3= as.integer(readline("Enter the third num: "))
if(num1>num2 & num1>num3)
{
  print("num1 is the greatest")
}else if(num2>num1 && num2>num3){
  print("num2 is the greatest")
}else{
  print("num3 is the greatest")
}


#Take an input from the user and check if it is even positive, even negative,
#zero, odd positive, odd negative

value= as.integer(readline("Enter the value: "))
if(value>0)
{
  if(value%%2==0){
    print("It is even positive")
  }else{
    print("It is odd positive")
  }
}else if(value<0){
  if(value%%2==0){
    print("It is even negative")
  }else
  {
    print("It is odd negative")
  }
}else{
  print("The value is zero")
}

  
  

  