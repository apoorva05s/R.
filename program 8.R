# Load the airquality dataset
data("airquality")

# a) Assigning names, using the airquality dataset
hist(airquality$Ozone, 
     main = "Histogram of Ozone Levels", 
     xlab = "Ozone (ppb)", 
     ylab = "Frequency")

# b) Change colors of the Histogram
hist(airquality$Ozone, 
     main = "Histogram of Ozone Levels", 
     xlab = "Ozone (ppb)", 
     ylab = "Frequency", 
     col = "skyblue", 
     border = "darkblue")

# c) Remove Axis and Add labels to the Histogram
hist(airquality$Ozone, 
     main = "Histogram of Ozone Levels", 
     xlab = "Ozone (ppb)", 
     ylab = "Frequency", 
     col = "lightgreen", 
     axes = FALSE) # Removes axes
axis(1, at = seq(0, 200, 20))  # Adding custom x-axis
axis(2, at = seq(0, 30, 5))    # Adding custom y-axis

# d) Change Axis limits of a Histogram
hist(airquality$Ozone, 
     main = "Histogram with Changed Axis Limits", 
     xlab = "Ozone (ppb)", 
     ylab = "Frequency", 
     col = "orange", 
     xlim = c(0, 150), 
     ylim = c(0, 25))

# e) Add Density Curve to the Histogram
# First, calculate the density ignoring NA values
ozone_no_na <- na.omit(airquality$Ozone)
hist(ozone_no_na, 
     main = "Histogram with Density Curve", 
     xlab = "Ozone (ppb)", 
     ylab = "Density", 
     col = "lightblue", 
     freq = FALSE)  # Use probability instead of frequency
lines(density(ozone_no_na), 
      col = "red", 
      lwd = 2)  # Add a density curve
