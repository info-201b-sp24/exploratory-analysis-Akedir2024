# Load necessary libraries
library(ggplot2)

# Load the dataset
data <- read.csv("~/Documents/Student Mental health .csv")
# 3. Box Plot of CGPA by Year of Study
# Convert CGPA to numeric for plotting
data$CGPA <- as.numeric(sub(" - .*", "", data$What.is.your.CGPA.))

ggplot(data, aes(x = Your.current.year.of.Study, y = CGPA)) +
  geom_boxplot(fill = "lightgreen") +
  labs(title = "CGPA Distribution by Year of Study", x = "Year of Study", y = "CGPA") +
  theme_minimal()