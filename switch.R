                            #SWITCH



#Create a calculator which will perform +, -, *, /, %%, %

calculator <- function(num1, num2, operator) {
  result <- switch(operator,
                   "+" = num1 + num2,
                   "-" = num1 - num2,
                   "*" = num1 * num2,
                   "/" = if (num2 != 0) num1 / num2 else "Cannot divide by zero",
                   "Invalid operator")
  return(result)
}
num1 <- as.numeric(readline("Enter the first number: "))
num2 <- as.numeric(readline("Enter the second number: "))
operator <- readline("Enter operator (+, -, *, /): ")

result <- calculator(num1, num2, operator)
cat("The result is:", result, "\n")

#An unnamed case can be used, if there is no matched case


#Write a R program using switch case to find the name of the day of week 
#entered by the user
choice<- as.integer(readline("Enter the number: "))
name_of_day<- switch(choice, "Sunday", "Monday", "Tuesday", "Wednesday", 
                     "Thursday", "Friday", "Saturday")

print(name_of_day)


