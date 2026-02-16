# Exploratory Data Analysis of E-Commerce Transactions (R)

## Objective
The objective of this project is to perform **Exploratory Data Analysis (EDA)** on an e-commerce transactions dataset using **R**.  
The analysis focuses on understanding transaction amount distribution and identifying sales patterns across **time** and **product categories** through effective visualizations.

---

## Dataset Description
The dataset used is **`2.ecommerce_transactions.csv`**, which contains transaction-level data from an e-commerce platform.

### Key Attributes:
- **Transaction_Date** – Date of transaction  
- **Transaction_Amount** – Monetary value of each transaction  
- **Product_Category** – Category of the purchased product  

---

## Tools & Libraries Used
- **R Programming Language**
- **ggplot2** – Data visualization  
- **dplyr** – Data manipulation  
- **lubridate** – Date handling and transformation  

---

## Data Preprocessing
- The dataset is loaded using `read.csv()`.
- `Transaction_Date` is converted to **Date format** using `as.Date()`.
- A new **Month** feature is derived from the transaction date for temporal analysis.

---

## Visualizations Implemented

### Histogram of Transaction Amounts
- Displays the **distribution** of transaction values.
- Helps identify data spread, skewness, and common transaction ranges.

### Boxplot of Transaction Amounts
- Shows **median**, **quartiles**, and **outliers**.
- Useful for detecting unusually high or low transaction amounts.

### Heatmap of Monthly Sales Intensity
- Aggregates total sales by **Product Category** and **Month**.
- Visualizes seasonal trends and high-performing categories using color gradients.

---

## Key Insights
- Transaction amounts show variability across purchases.
- Presence of outliers indicates occasional high-value transactions.
- Monthly heatmap reveals **sales intensity patterns**, helping identify peak months and popular product categories.

---

## How to Run the Code
1. Ensure R and RStudio are installed.
2. Place `2.ecommerce_transactions.csv` in the correct directory.
3. Update the file path in the script if required.
4. Run `eda_2.R` in RStudio.

---

## Conclusion
This EDA provides meaningful insights into customer purchasing behavior and sales trends using visual analytics.  
Such analysis can assist businesses in **inventory planning**, **marketing strategies**, and **seasonal demand forecasting**.

---

## Author
**Roll No:** 23BAD086  
**Language:** R  
**Course:** Data Analytics / Data Visualization Lab
