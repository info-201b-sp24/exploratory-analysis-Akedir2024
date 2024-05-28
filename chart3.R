# Load necessary libraries
library(ggplot2)

# Load the dataset
data <- read.csv("~/Documents/Student Mental health .csv")


# 2. Pie Chart of Depression, Anxiety, and Panic Attack Prevalence
# Create a dataframe for the counts
mental_health_counts <- data.frame(
  Condition = c("Depression", "Anxiety", "Panic attack"),
  Count = c(sum(data$Do.you.have.Depression. == "Yes"), 
            sum(data$Do.you.have.Anxiety. == "Yes"), 
            sum(data$Do.you.have.Panic.attack. == "Yes"))
)

# Pie chart
ggplot(mental_health_counts, aes(x = "", y = Count, fill = Condition)) +
  geom_bar(width = 1, stat = "identity") +
  coord_polar("y", start = 0) +
  labs(title = "Prevalence of Mental Health Conditions", x = "", y = "") +
  theme_minimal()


