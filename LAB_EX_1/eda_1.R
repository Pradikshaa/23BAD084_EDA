print("Roll No:23BAD084")

library(ggplot2)
library(dplyr)
library(tidyr) 

data <- read.csv("C:/Users/Praniga S/Downloads/1.student_performance.csv")

str(data)
summary(data)

data <- data %>%
  mutate(Avg_Internal = (Internal_Test1 + Internal_Test2) / 2)

subject_avg <- data %>%
  group_by(Subject) %>%
  summarise(Mean_Marks = mean(Avg_Internal))

ggplot(subject_avg, aes(x = Subject, y = Mean_Marks, fill = Subject)) +
  geom_bar(stat = "identity") +
  theme_minimal() +
  labs(title = "Subject-wise Average Internal Marks",
       x = "Subject",
       y = "Average Marks") +
  theme(legend.position = "none")

trend_data <- data %>%
  group_by(Subject) %>%
  summarise(Test1 = mean(Internal_Test1), 
            Test2 = mean(Internal_Test2)) %>%
  pivot_longer(cols = c(Test1, Test2), names_to = "Test", values_to = "Marks")

ggplot(trend_data, aes(x = Test, y = Marks, group = Subject, color = Subject)) +
  geom_line(size = 1) +
  geom_point(size = 3) +
  theme_minimal() +
  labs(title = "Performance Trend Across Tests (Internal 1 vs Internal 2)",
       x = "Test Type",
       y = "Average Marks")

grade_counts <- data %>%
  count(Final_Grade) %>%
  mutate(prop = n / sum(n) * 100) %>%
  mutate(ypos = cumsum(prop) - 0.5 * prop)

ggplot(grade_counts, aes(x = "", y = prop, fill = Final_Grade)) +
  geom_bar(stat = "identity", width = 1, color = "white") +
  coord_polar("y", start = 0) +
  theme_void() + # Remove background and axes for pie chart
  labs(title = "Final Grade Distribution") +
  geom_text(aes(y = ypos, label = paste0(round(prop, 1), "%")), color = "white", size=5)
