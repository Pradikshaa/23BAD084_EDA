# Student Performance Analysis (EDA using R)

## Overview
This project performs **Exploratory Data Analysis (EDA)** on a student performance dataset using **R**.  
The goal is to analyze internal assessment marks, observe subject-wise performance trends, and visualize grade distributions using advanced plotting techniques.

---

## Files Included
- `1.student_performance.csv` – Dataset containing student academic details  
- `eda_1.R` – R script for data analysis and visualization  
- `README.md` – Project documentation (this file)

---

## Libraries Used
The following R libraries are required:
- `ggplot2`
- `dplyr`
- `tidyr`

Install them using:
```r
install.packages(c("ggplot2", "dplyr", "tidyr"))
```

---

## Analysis Performed

### 1. Data Understanding
- Structure and summary of the dataset
- Inspection of student marks and grades

### 2. Feature Engineering
- Computation of **Average Internal Marks** using:
```
(Internal_Test1 + Internal_Test2) / 2
```

### 3. Visualizations
- **Bar Chart**: Subject-wise average internal marks  
- **Line Plot**: Performance trend across Internal Test 1 and Test 2  
- **Pie Chart**: Distribution of final grades  

All visualizations are created using `ggplot2` with a minimal and clean theme.

---

## How to Run the Project
1. Open **RStudio**
2. Set the working directory to the project folder
3. Ensure the CSV file path is correct in `eda_1.R`
4. Run the script:
```r
source("eda_1.R")
```

---

## Objective
To demonstrate the use of R for:
- Exploratory Data Analysis
- Data transformation
- Effective data visualization for academic performance evaluation

---

## Author
**Pradikshaa K**  
Roll No: 23BAD084

---

## Conclusion
This analysis helps in understanding student performance patterns across subjects and assessments, enabling educators to make data-driven academic decisions.
