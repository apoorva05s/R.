                  #LIST DATA STRUCTURE
?list

my_list<- list(name="John", age=25, scores= c(90,85,88), enrolled= TRUE)

#Accessing
my_list[[1]]
my_list$name
my_list$age

#Modifying
my_list$name="Karan"
my_list
my_list$age=29
my_list
my_list[[3]]<-c(92,88,95)
my_list

#Adding
my_list$gender<- "Male"
my_list

#Removing
my_list$enrolled<- NULL
my_list

#Combining
new_list<-list(city="New York", country="USA")
combined_list<- c(my_list, new_list)
combined_list
 #Checking Structure
str(my_list)
str(new_list)
#Write a program to create a list of employee information that contains
#details of 4 employees, the list should contain employee ID, employee
#name, no. of employees and name this list as employee list

Employee_list<- list(name=c("Raghav", "Shreya", "Arohi","Aryan"),
                     ID=c(101,102,103,104), no_of_employees=4, enrolled=TRUE)
Employee_list

              #or
emp_id=c(101,102,108,109)
emp_name=c("Raghav", "Shreya", "Arohi","Aryan")
no_of_employees=4
emplist=list(emp_id, emp_name, no_of_employees)
print(emplist)
