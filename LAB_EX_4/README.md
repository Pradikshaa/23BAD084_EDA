# Exploratory Data Analysis of Traffic Accident Data (R)

## Objective
The objective of this experiment is to perform **exploratory data analysis** on traffic accident data using **advanced multivariate visualization techniques** in R.  
The analysis focuses on understanding the relationship between **accident location, accident type, severity, and frequency** to identify traffic risk patterns.

---

## Dataset Description
The dataset used is **`4.traffic_accidents.csv`**, which contains records of traffic accidents occurring across different locations.

### Key Attributes:
- **Location** – Zone or area where the accident occurred  
- **Accident_Type** – Type of accident (e.g., collision, skid, etc.)  
- **Severity** – Severity level of the accident (Minor, Major, Fatal)  

---

## Tools & Libraries Used
- **R Programming Language**
- **ggplot2** – Advanced data visualization
- **dplyr** – Data manipulation and aggregation

---

## Data Preprocessing
- The dataset is loaded using `read.csv()`.
- Accident records are grouped by:
  - **Location**
  - **Accident_Type**
  - **Severity**
- Frequency of accidents is calculated using `summarise(n())`.
- Severity levels are converted into an ordered factor:
  - Minor
  - Major
  - Fatal

---

## Visualization Implemented

### 🔹 Jitter Bubble Plot (Multivariate Display)
- A **jitter plot** is used to avoid overlapping data points.
- Visual encodings:
  - **X-axis:** Location
  - **Y-axis:** Accident Severity
  - **Bubble Size:** Accident Frequency
  - **Color:** Severity Level
  - **Shape:** Accident Type
- This visualization enables simultaneous comparison of **four variables**.

---

## Key Insights
- Accident severity varies across different location zones.
- Certain accident types occur more frequently in specific locations.
- Fatal accidents, though fewer, are clearly distinguishable due to color and size.
- Multivariate plotting helps identify high-risk zones effectively.

---

## How to Run the Code
1. Install R and RStudio.
2. Place `4.traffic_accidents.csv` in the correct directory.
3. Update the file path in the R script if required.
4. Run `eda_4.R` to generate the visualization.

---

## Conclusion
This experiment demonstrates how **advanced multivariate visualization** techniques can be used to analyze complex traffic accident data.  
The insights gained can support **traffic safety planning**, **risk assessment**, and **policy decision-making**.

---

## Author
**Roll No:** 23BAD084  
**Language:** R  
**Course:** Exploratory Data Analysis Lab
