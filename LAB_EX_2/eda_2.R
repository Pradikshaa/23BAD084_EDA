print("Roll.No: 23BAD084")
library(ggplot2)
library(dplyr)
library(lubridate)

df <- read.csv("C:/Users/PRADIKSHAA/Downloads/2.ecommerce_transactions (1).csv")

df$Transaction_Date <- as.Date(df$Transaction_Date)

ggplot(df, aes(x = Transaction_Amount)) +
  geom_histogram(bins = 20, fill = "skyblue", color = "black") 
  labs(title = "Histogram of Transaction Amounts",
       x = "Transaction Amount",
       y = "Frequency") +
  theme_minimal()

ggplot(df, aes(y = Transaction_Amount)) +
  geom_boxplot(fill = "lightgreen", color = "black") +
  labs(title = "Boxplot of Transaction Amounts",
       y = "Transaction Amount") +
  theme_minimal()

heatmap_data <- df %>%
  mutate(Month = month(Transaction_Date, label = TRUE, abbr = FALSE)) %>%
  group_by(Product_Category, Month) %>%
  summarise(Total_Sales = sum(Transaction_Amount), .groups = 'drop')

ggplot(heatmap_data, aes(x = Month, y = Product_Category, fill = Total_Sales)) +
  geom_tile(color = "white") +
  scale_fill_gradient(low = "lightyellow", high = "darkblue") +
  labs(title = "Heatmap of Monthly Sales Intensity",
       x = "Month",
       y = "Product Category",
       fill = "Total Sales") +
  theme_minimal()
