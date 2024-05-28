# Load necessary libraries
library(dplyr)

# Load the dataset
data <- read.csv("~/Documents/Student Mental health .csv")

# Convert CGPA to numeric
data$CGPA <- as.numeric(sub(" - .*", "", data$What.is.your.CGPA.))

# Create the table
grouped_table <- data %>%
  group_by(Choose.your.gender) %>%
  summarise(
    Average_Age = round(mean(Age, na.rm = TRUE), 1),
    Average_CGPA = round(mean(CGPA, na.rm = TRUE), 2),
    Depression_Prevalence = round(mean(Do.you.have.Depression. == "Yes") * 100, 1)
  ) %>%
  arrange(desc(Average_Age))

# Display the table
print(grouped_table)
