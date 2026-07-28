# 🏗️ Employee Attrition Analysis - Project Architecture

## 📖 Introduction

This document describes the architecture, workflow, and execution process of the Employee Attrition Analysis project. It explains how raw HR employee data is transformed into meaningful business insights using Python, SQL (SQLite), and Power BI.

## 🎯 Project Objective

The main objective of this project is to analyze employee attrition trends and identify the key factors influencing employee turnover. The project uses data analytics techniques to clean, analyze, query, and visualize HR data, enabling organizations to make informed decisions for improving employee retention.

## 🏛️ Overall Project Architecture

The project follows a structured data analytics pipeline. Starting with the raw HR dataset, the data is cleaned, analyzed, stored in a SQLite database, queried using SQL, and finally visualized through an interactive Power BI dashboard.

```text
                 IBM HR Analytics Dataset (.csv)
                              │
                              ▼
        ┌────────────────────────────────────┐
        │      Data Understanding (Python)   │
        └────────────────────────────────────┘
                              │
                              ▼
        ┌────────────────────────────────────┐
        │        Data Cleaning (Python)      │
        └────────────────────────────────────┘
                              │
                              ▼
        ┌────────────────────────────────────┐
        │ Exploratory Data Analysis (EDA)    │
        └────────────────────────────────────┘
                              │
                              ▼
        ┌────────────────────────────────────┐
        │       SQLite Database              │
        └────────────────────────────────────┘
                              │
                              ▼
        ┌────────────────────────────────────┐
        │      SQL Business Analysis         │
        └────────────────────────────────────┘
                              │
                              ▼
        ┌────────────────────────────────────┐
        │   Power BI Interactive Dashboard   │
        └────────────────────────────────────┘
                              │
                              ▼
            Business Insights & Recommendations
```
## 🧩 Component Architecture

### 1. Dataset

- **Source:** IBM HR Analytics Employee Attrition Dataset
- **Format:** CSV
- **Records:** 1470
- **Features:** 35

The project begins with the IBM HR Analytics dataset, which contains employee information such as age, department, job role, monthly income, overtime, and attrition status.

---

### 2. Data Understanding

**Notebook:** `01_Data_Understanding.ipynb`

This stage focuses on understanding the dataset by:
- Exploring the dataset structure
- Checking data types
- Identifying missing values
- Reviewing summary statistics

---

### 3. Data Cleaning

**Notebook:** `02_Data_Cleaning.ipynb`

In this stage, the dataset is prepared for analysis by:
- Verifying data quality
- Removing inconsistencies (if any)
- Ensuring the dataset is ready for analysis

---

### 4. Exploratory Data Analysis (EDA)

**Notebook:** `03_Exploratory_Data_Analysis.ipynb`

The cleaned dataset is analyzed to identify patterns and trends, including:
- Employee attrition distribution
- Department-wise analysis
- Age distribution
- Salary analysis
- Overtime analysis
- Job role analysis

---

### 5. SQLite Database

After data analysis, the dataset is stored in a SQLite database to perform structured SQL queries efficiently.

**Database:**
`Employee-Attrition-Analysis.db`

---

### 6. SQL Business Analysis

The SQL module answers important business questions such as:
- Employee attrition rate
- Department-wise employee count
- Average salary by department
- Overtime vs attrition
- Highest-paid employees
- Employee ranking based on salary

---

### 7. Power BI Dashboard

The processed data is visualized through an interactive Power BI dashboard that provides:
- Employee attrition overview
- Department insights
- Salary trends
- Overtime analysis
- Interactive filtering for HR decision-making

---

### 8. Business Insights

The final stage converts analytical findings into actionable business recommendations that can help organizations improve employee retention and workforce planning.

## 🔄 Data Flow

The project follows a sequential data processing pipeline:

1. The IBM HR Analytics dataset is loaded from a CSV file.
2. Python notebooks are used to understand and clean the data.
3. Exploratory Data Analysis (EDA) uncovers trends and patterns.
4. The dataset is analyzed using SQLite and SQL queries.
5. Power BI visualizes the analytical results through interactive dashboards.
6. The final insights help identify factors contributing to employee attrition and support data-driven HR decisions.

## 🎯 Design Decisions

The technologies used in this project were selected based on their suitability for different stages of the analytics pipeline.

- Python was chosen for data preprocessing and exploratory analysis due to its powerful data analysis libraries.
- SQLite provides a lightweight relational database for storing and querying structured employee data.
- SQL enables efficient business analysis by answering HR-related questions.
- Power BI creates interactive dashboards that transform analytical results into business-friendly visualizations.

## 🚀 Execution Flow

To execute the project, follow these steps:

1. Clone the GitHub repository.
2. Install the required Python libraries listed in `requirements.txt`.
3. Open the Jupyter notebooks in sequence:
   - `01_Data_Understanding.ipynb`
   - `02_Data_Cleaning.ipynb`
   - `03_Exploratory_Data_Analysis.ipynb`
4. Execute the SQL queries stored in the `sql/` folder using SQLite.
5. Open the Power BI dashboard to explore interactive visualizations.
6. Review the generated insights and business recommendations.


## 📌 Conclusion

This project demonstrates an end-to-end data analytics workflow, from raw data processing to business insight generation. By combining Python, SQLite, SQL, and Power BI, it provides a structured approach to understanding employee attrition and supports data-driven HR decision-making.