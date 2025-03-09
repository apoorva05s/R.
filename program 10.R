
data <- mtcars
#a)Total number of observations and variables
num_obs <- nrow(data)
num_vars <- ncol(data)
print(paste("Number of observations:", num_obs))
print(paste("Number of variables:", num_vars))

#b)Car with the largest and least hp
max_hp <- max(data$hp)
min_hp <- min(data$hp)
car_max_hp <- rownames(data[data$hp == max_hp, , drop = FALSE])
car_min_hp <- rownames(data[data$hp == min_hp, , drop = FALSE])
print(paste("Car with largest hp:", car_max_hp))
print(paste("Car with least hp:", car_min_hp))

#c)Plot histogram / density for each variable
install.packages("moments")
library(moments)

par(mfrow = c(4, 3), mar = c(4, 4, 2, 1))  
for (var in colnames(data)) {
  if (is.numeric(data[[var]])) {
    hist(data[[var]], main = paste("Histogram of", var), xlab = var, col = "lightblue")
    plot(density(data[[var]]), main = paste("Density of", var), xlab = var, col = "red")
    print(paste("Skewness of", var, ":", skewness(data[[var]])))
  }
}
par(mfrow = c(1, 1), mar = c(5, 4, 4, 2) + 0.1)
#d)Average and standard deviation difference of hp between cars with 3 and 4 cylinders
hp_3_cyl <- data$hp[data$cyl == 3]
hp_4_cyl <- data$hp[data$cyl == 4]
mean_diff_hp <- mean(hp_3_cyl) - mean(hp_4_cyl)
sd_diff_hp <- sd(hp_3_cyl) - sd(hp_4_cyl)
print(paste("Average difference in hp between 3 and 4 cylinders:", mean_diff_hp))
print(paste("Standard deviation difference in hp between 3 and 4 cylinders:", sd_diff_hp))

#e)Pair of variables with the highest Pearson correlation
cor_matrix <- cor(data)
cor_matrix[lower.tri(cor_matrix)] <- NA  
cor_matrix[diag(cor_matrix)] <- NA  
max_cor <- max(cor_matrix, na.rm = TRUE)
pair <- which(cor_matrix == max_cor, arr.ind = TRUE)
var1 <- colnames(data)[pair[1]]
var2 <- colnames(data)[pair[2]]
print(paste("Pair of variables with highest correlation:", var1, "and", var2, "(Correlation:", max_cor, ")"))
