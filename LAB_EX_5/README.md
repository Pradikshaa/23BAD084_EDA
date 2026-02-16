# Student Performance Analysis Dashboard – Power BI

## Objective
The objective of this experiment is to design and develop an **interactive dashboard** using **Power BI** to analyze student academic performance.  
The dashboard helps in evaluating student scores, identifying performance trends, and supporting data-driven academic decisions.

---

## Dataset Description
The dataset used is **`5.student_performance.csv`**, which contains academic assessment data of students.

### Key Attributes:
- **Student_ID** – Unique identifier for each student  
- **Internal_Test1** – Marks obtained in Internal Test 1  
- **Internal_Test2** – Marks obtained in Internal Test 2  
- **Assignment** – Assignment marks  
- **Attendance** – Attendance percentage  
- **Total_Score** – Calculated overall score  

---

## Tools Used
- **Microsoft Power BI Desktop**
- **Power Query Editor** – Data transformation
- **DAX** – Calculated columns and measures

---

## Data Preparation
- The dataset is imported using **Get Data → Text/CSV**.
- Data cleaning and transformation are performed in **Power Query Editor**.
- A calculated column **Total_Score** is created by combining assessment components.
- Data types are validated to ensure accurate visualizations.

---

## Dashboard Components

### KPI Cards
- Display key metrics such as:
  - Average Total Score
  - Highest Score
  - Lowest Score

### Bar and Column Charts
- Compare performance across different assessment components.
- Identify strong and weak areas among students.

### Tables
- Display student-wise performance details.
- Enable easy filtering and sorting.

### Slicers
- Allow dynamic filtering based on student attributes.
- Improve interactivity and user experience.

---

## Key Insights
- Student performance varies significantly across assessments.
- Internal test scores and assignments strongly influence total performance.
- The dashboard enables quick identification of low-performing students.
- Visual analytics improve understanding compared to raw tabular data.

---

## How to Open the Dashboard
1. Install **Power BI Desktop**.
2. Open the file **`EDA_5.pbix`**.
3. Ensure `5.student_performance.csv` is available if data refresh is required.
4. Interact with filters and visuals to explore insights.

---

## Conclusion
This Power BI dashboard effectively demonstrates how **data visualization and analytics** can be used to monitor and evaluate student performance.  
It supports educators in making informed decisions to improve academic outcomes.

---

## Author
**Roll No:** 23BAD086  
**Tool:** Power BI  
**Course:** Exploratory Data Analysis Lab
