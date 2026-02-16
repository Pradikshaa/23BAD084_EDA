print("Roll.No: 23BAD084")
library(ggplot2)
library(GGally)

data <- read.csv("C:/Users/Praniga S/Downloads//3.healthcare_data.csv")

data$Age_Group <- cut(data$Age, 
                      breaks = c(0, 30, 50, 100), 
                      labels = c("Young", "Middle-aged", "Senior"))

ggpairs(data, 
        columns = c("Age", "BMI", "Glucose_Level", "Blood_Pressure"), 
        aes(color = Age_Group), 
        
        upper = list(continuous = wrap("points", alpha = 0.6)),     
        lower = list(continuous = wrap("points", alpha = 0.6)),     
        diag = list(continuous = "barDiag"),     
        
        title = "Scatter Plot Matrix - Multivariate Analysis", 
        legend = 1,                              
        axisLabels = "show",                     
        switch = "both") +                       
  theme_bw() +
  theme(
    strip.placement = "outside",       
    legend.position = "bottom",        
    plot.title = element_text(hjust = 0.5, face="bold") 
  )

numeric_cols <- data[, c("Age", "BMI", "Glucose_Level", "Blood_Pressure")]
cor_matrix <- cor(numeric_cols)

print("Correlation Matrix Results")
print(round(cor_matrix, 2))
