
monthly_revenue <- c(45, 52, 58, 65, 47, 60, 70, 55, 68, 61, 59, 72)  
monthly_expenses <- c(30, 35, 38, 40, 33, 45, 50, 38, 45, 50, 48, 55)  
monthly_profit <- monthly_revenue - monthly_expenses
tax_rate <- 0.30
profit_after_tax <- round(monthly_profit * (1 - tax_rate), 2)
profit_margin <- round((profit_after_tax / monthly_revenue) * 100, 0)
mean_profit_after_tax <- mean(profit_after_tax)
good_months <- profit_after_tax > mean_profit_after_tax
bad_months <- profit_after_tax < mean_profit_after_tax
best_month <- which.max(profit_after_tax)
worst_month <- which.min(profit_after_tax)
monthly_profit_thousands <- round(monthly_profit)
profit_after_tax_thousands <- round(profit_after_tax)
financial_data <- data.frame(
  Month = month.name[1:12],                          
  Revenue = monthly_revenue,                         
  Expenses = monthly_expenses,                       
  Profit = monthly_profit_thousands,                 
  Profit_After_Tax = profit_after_tax_thousands,     
  Profit_Margin = profit_margin,                     
  Good_Month = good_months,                          
  Bad_Month = bad_months                             
)
print(financial_data)
write.csv(financial_data, "financial_data.csv", row.names = FALSE)
cat("Best month:", month.name[best_month], "\n")
cat("Worst month:", month.name[worst_month], "\n")
