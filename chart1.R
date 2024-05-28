# Load necessary libraries
library(ggplot2)

# Load the dataset
data <- read.csv("~/Documents/Student Mental health .csv")
# 1. Bar Chart of Gender Distribution
ggplot(data, aes(x = Choose.your.gender)) +
  geom_bar(fill = "skyblue") +
  labs(title = "Gender Distribution of Students", x = "Gender", y = "Count") +
  theme_minimal()