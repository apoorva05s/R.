# Load the dataset
data <- read.table(file.choose(), header = TRUE, sep = ",", stringsAsFactors = TRUE)
View(data)
str(data)
summary(data)

# Handling Missing Data
# Mean or median imputation for numeric data
for (col in names(data)) {
  if (is.numeric(data[[col]])) {
    data[[col]][is.na(data[[col]])] <- mean(data[[col]], na.rm = TRUE)
  }
}

# Mode imputation for categorical data
mode <- function(x) {
  x <- na.omit(x)
  freq_table <- table(x)
  mode_values <- names(freq_table[freq_table == max(freq_table)])
  return(mode_values[1])  
}
for (col in names(data)) {
  if (is.factor(data[[col]]) || is.character(data[[col]])) {
    data[[col]][is.na(data[[col]])] <- mode(data[[col]])
  }
}

# Handling Outliers
# Checking for outliers in numeric columns using boxplots
for (col in names(data)) {
  if (is.numeric(data[[col]])) {
    boxplot(data[[col]], main = paste("Boxplot of", col))
  }
}

# Fixing outliers in numeric variables using Winsorization
win <- function(data) {
  upper_bound <- quantile(data, 0.75) + (IQR(data) * 1.5)
  lower_bound <- quantile(data, 0.25) - (IQR(data) * 1.5)
  winsorized_data <- ifelse(data < lower_bound, lower_bound, 
                            ifelse(data > upper_bound, upper_bound, data))
  return(winsorized_data)
}
for (col in names(data)) {
  if (is.numeric(data[[col]])) {
    data[[col]] <- win(data[[col]])
    boxplot(data[[col]], main = paste("Boxplot after Winsorization of", col))
  }
}

# Barplots for categorical variables
for (col in names(data)) {
  if (is.factor(data[[col]]) || is.character(data[[col]])) {
    barplot(table(data[[col]]), main = paste("Barplot of", col), las = 2, col = "skyblue")
  }
}

# Scaling Numeric Variables
# Min-Max Normalization
minmax <- function(x) {
  (x - min(x)) / (max(x) - min(x))
}
for (col in names(data)) {
  if (is.numeric(data[[col]])) {
    data[[col]] <- minmax(data[[col]])
  }
}

# Correcting Skewness
library(e1071)
for (col in names(data)) {
  if (is.numeric(data[[col]]) && abs(skewness(data[[col]])) > 1) {
    qqnorm(data[[col]], main = paste("Q-Q Plot of", col))
    qqline(data[[col]])
    data[[col]] <- log(data[[col]] + 1)
    qqnorm(data[[col]], main = paste("Q-Q Plot after Log Transformation of", col))
    qqline(data[[col]])
  }
}

# Correlation Analysis
# Compute correlation matrix for numeric variables
numeric_cols <- sapply(data, is.numeric)
cor_matrix <- cor(data[, numeric_cols], use = "complete.obs")
print(cor_matrix)
heatmap(cor_matrix, main = "Correlation Heatmap", col = heat.colors(10), symm = TRUE)

# Scatterplots for relationships between variables
pairs(data[, numeric_cols], main = "Scatterplot Matrix")

# Removing Unwanted Columns
data$column_name <- NULL  

# Removing features with low variance
remove_nearzerovariance <- function(data, threshold = 0.01) {
  variances <- sapply(data, var, na.rm = TRUE)
  columns_to_keep <- variances > threshold
  data <- data[, columns_to_keep]
  return(data)
}
data <- remove_nearzerovariance(data)


summary(data)
