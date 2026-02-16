# Rollno: 23BAD084

library(ggplot2)
library(dplyr)
library(hexbin)

data <- read.csv("C:/Users/PRADIKSHAA/Downloads/7.social_media_interactions.csv")

# Create total engagement column
data <- data %>%
  mutate(
    engagement = Likes + Shares + Comments
  )

# 1. Scatter plot with alpha blending
ggplot(data, aes(x = engagement, y = Engagement_Score)) +
  geom_point(alpha = 0.05, color = "darkblue") +
  labs(
    title = "Engagement vs Engagement Score (Alpha Blending)",
    x = "Total Engagement (Likes + Shares + Comments)",
    y = "Engagement Score"
  ) +
  theme_minimal()

# 2. Jitter plot across platforms
ggplot(data, aes(x = factor(Platform), y = engagement)) +
  geom_jitter(
    alpha = 0.05,
    width = 0.2,
    color = "black"
  ) +
  labs(
    title = "Engagement Distribution Across Platforms (Jittering)",
    x = "Platform",
    y = "Total Engagement"
  ) +
  theme_minimal()

# 3. Binned density plot
ggplot(data, aes(x = engagement, y = Engagement_Score)) +
  geom_bin2d(bins = 30) +
  scale_fill_viridis_c() +
  labs(
    title = "Binned Engagement Density",
    x = "Total Engagement",
    y = "Engagement Score",
    fill = "Post Count"
  ) +
  theme_minimal()

# 4. Hexbin plot
ggplot(data, aes(x = engagement, y = Engagement_Score)) +
  geom_hex(bins = 30) +
  scale_fill_viridis_c() +
  labs(
    title = "Hexbin Plot of Social Media Engagement",
    x = "Total Engagement",
    y = "Engagement Score",
    fill = "Density"
  ) +
  theme_minimal()

# 5. Average engagement by platform
summary_data <- data %>%
  group_by(Platform) %>%
  summarise(
    mean_engagement = mean(engagement, na.rm = TRUE),
    .groups = "drop"
  )

ggplot(summary_data, aes(x = Platform, y = mean_engagement)) +
  geom_col(fill = "purple") +
  labs(
    title = "Average Engagement by Platform",
    x = "Platform",
    y = "Mean Engagement"
  ) +
  theme_minimal()
