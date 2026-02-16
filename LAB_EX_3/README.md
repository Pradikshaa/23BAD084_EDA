
# 23BAD089_U18AII5202
EXPLORATORY DATA ANALYSIS
=======
# Exploratory Data Analysis of Healthcare Data (R)

## Objective
The objective of this experiment is to perform **multivariate exploratory data analysis** on a healthcare dataset using **R**.  
The analysis aims to study relationships between key health indicators such as **Age, BMI, Glucose Level, and Blood Pressure** using advanced visualization techniques and correlation analysis.

---

## Dataset Description
The dataset used is **`3.healthcare_data.csv`**, which contains patient health-related attributes.

### Key Variables:
- **Age** – Age of the patient  
- **BMI** – Body Mass Index  
- **Glucose_Level** – Blood glucose measurement  
- **Blood_Pressure** – Blood pressure reading  

---

## Tools & Libraries Used
- **R Programming Language**
- **ggplot2** – Data visualization
- **GGally** – Multivariate visualization (`ggpairs`)

---

## Data Preprocessing
- The dataset is imported using `read.csv()`.
- A new categorical variable **Age_Group** is created:
  - **Young** (≤ 30)
  - **Middle-aged** (31–50)
  - **Senior** (> 50)
- This grouping helps enhance visualization and interpretation.

---

## Visualizations Implemented

### Scatter Plot Matrix (Multivariate Display)
- Implemented using `ggpairs()`.
- Displays pairwise relationships between:
  - Age
  - BMI
  - Glucose Level
  - Blood Pressure
- Points are color-coded based on **Age_Group**.
- Diagonal panels show variable distributions.
- Helps identify correlations and trends among multiple variables simultaneously.

### Correlation Matrix
- Pearson correlation coefficients are calculated for numeric variables.
- The matrix quantifies the strength and direction of relationships between health indicators.
- Rounded values improve readability and interpretation.

---

## Key Insights
- The scatter plot matrix reveals visible patterns and relationships between health parameters.
- Correlation values help identify positively or negatively related variables.
- Age grouping enhances clarity in understanding how health indicators vary across age categories.

---

## How to Run the Code
1. Install R and RStudio.
2. Place `3.healthcare_data.csv` in the appropriate directory.
3. Update the file path in the R script if necessary.
4. Run `eda_3.R` to generate visualizations and correlation results.

---

## Conclusion
This experiment demonstrates the use of **advanced multivariate visualization techniques** in healthcare analytics.  
Such analysis is useful for identifying hidden patterns, supporting clinical insights, and aiding data-driven healthcare decisions.

---

## Author
**Roll No:** 23BAD084
**Language:** R  
**Course:** Exploratory Data Analysis Lab

