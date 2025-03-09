
data <- data.frame(
  id = 1:20,
  name = paste("Employee", 1:20),
  salary = c(25000, 18000, 30000, 15000, 40000, 22000, 27000, 19000, 32000, 16000,
             21000, 23000, 28000, 17000, 33000, 14000, 20000, 31000, 24000, 35000),
  start_date = as.Date("2024-01-01") + sample(0:365, 20),
  dept = c("IT", "HR", "IT", "Finance", "IT", "HR", "Finance", "IT", "HR", "Finance",
           "IT", "HR", "Finance", "IT", "HR", "Finance", "IT", "Finance", "HR", "IT")
)

write.csv(data, "input.csv", row.names = FALSE)


input_data <- read.csv("input.csv")

#a) Find the total number of rows and columns
num_rows <- nrow(input_data)
num_cols <- ncol(input_data)
cat("Number of rows:", num_rows, "\n")
cat("Number of columns:", num_cols, "\n")

# b) Find the maximum salary
max_salary <- max(input_data$salary)
cat("Maximum salary:", max_salary, "\n")

#c) Retrieve the details of the employee with the maximum salary
max_salary_details <- input_data[input_data$salary == max_salary, ]
cat("Details of employee with maximum salary:\n")
print(max_salary_details)

#d) Retrieve all employees working in the IT Department
it_employees <- input_data[input_data$dept == "IT", ]
cat("Employees in IT Department:\n")
print(it_employees)

#e) Retrieve IT employees with salary > 20000 and write to another file
it_high_salary <- it_employees[it_employees$salary > 20000, ]
write.csv(it_high_salary, "output.csv", row.names = FALSE)
cat("IT employees with salary > 20000 written to output.csv\n")
