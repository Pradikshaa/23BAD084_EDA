# Advanced Multivariate Data Visualization – Retail Business Analysis (R)

## Objective
The objective of this experiment is to implement **advanced multivariate display techniques** for analyzing complex retail business data using **R**.  
The analysis focuses on understanding relationships between **Sales, Profit, Discount, Customer Segment, Product Category, and Region** to support business decision-making.

---

## Dataset Description
The dataset used is **`6.retail_business.csv`**, which contains transactional data from a retail business.

### Key Attributes:
- **Sales** – Revenue generated from sales  
- **Profit** – Profit earned per transaction  
- **Discount** – Discount applied on products  
- **Product_Category** – Category of the product  
- **Customer_Segment** – Type of customer (e.g., Consumer, Corporate)  
- **Region** – Geographic sales region  

---

## Tools & Libraries Used
- **R Programming Language**
- **ggplot2** – Data visualization
- **GGally** – Advanced multivariate plots

---

## Data Preprocessing
- Dataset is loaded using `read.csv()`.
- Categorical variables (**Region, Product_Category, Customer_Segment**) are converted into factors.
- Numerical variables (**Sales, Profit, Discount**) are selected for multivariate analysis.

---

## Multivariate Visualizations Implemented

### Parallel Coordinate Plot
- Implemented using `ggparcoord()`.
- Displays relationships between:
  - Sales
  - Profit
  - Discount
- Lines are grouped by **Customer Segment**.
- Useful for comparing patterns across multiple numerical variables simultaneously.

---

### Bubble Chart
- Visualizes the relationship between **Sales** and **Profit**.
- **Bubble Size:** Discount  
- **Color:** Product Category  
- Helps identify how discounts influence profitability across product categories.

---

### Trellis Display (Faceted Plot)
- Scatter plot of **Sales vs Profit**.
- Faceted by **Region** using `facet_wrap()`.
- Enables region-wise comparison of business performance.

---

## Key Insights
- Customer segments show distinct patterns in sales, profit, and discount behavior.
- High discounts do not always result in higher profits.
- Regional trellis plots reveal variation in profitability across locations.
- Multivariate visualizations provide deeper insights than univariate analysis.

---

## How to Run the Code
1. Install R and RStudio.
2. Place `6.retail_business.csv` in the appropriate directory.
3. Update the file path in the R script if required.
4. Run `eda_6.R` to generate all visualizations.

---

## Conclusion
This experiment demonstrates the effective use of **parallel coordinate plots, bubble charts, and trellis displays** to analyze complex retail data.  
Such techniques help businesses optimize **pricing strategies**, **customer targeting**, and **regional performance evaluation**.

---

## Author
**Roll No:** 23BAD084 
**Language:** R  
**Course:** Exploratory Data Analysis Lab
