print("Roll.No: 23BAD084")
library(ggplot2)
library(GGally)

retail_data <- read.csv("C:/Users/Praniga S/Downloads/6.retail_business.csv")

retail_data$Region <- as.factor(retail_data$Region)
retail_data$Product_Category <- as.factor(retail_data$Product_Category)
retail_data$Customer_Segment <- as.factor(retail_data$Customer_Segment)

p1 <- ggparcoord(retail_data,
                 columns = 4:6, 
                 groupColumn = "Customer_Segment",
                 order = "anyClass",
                 showPoints = TRUE, 
                 title = "Parallel Coordinate Plot: Sales, Profit, and Discount",
                 alphaLines = 0.5) +
  theme_minimal()

print(p1)

p2 <- ggplot(retail_data, aes(x = Sales, y = Profit, size = Discount, color = Product_Category)) +
  geom_point(alpha = 0.7) +
  scale_size(range = c(1, 15)) + 
  labs(title = "Bubble Chart: Sales vs Profit",
       x = "Sales ($)",
       y = "Profit ($)") +
  theme_light()

print(p2)

p3 <- ggplot(retail_data, aes(x = Sales, y = Profit, color = Customer_Segment)) +
  geom_point(size = 3) +
  facet_wrap(~Region) +
  labs(title = "Trellis Display: Sales vs Profit by Region",
       x = "Sales ($)",
       y = "Profit ($)") +
  theme_bw()

print(p3)