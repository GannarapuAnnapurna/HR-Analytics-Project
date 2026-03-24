# 👥 HR Analytics – Employee Attrition Insights

![Excel](https://img.shields.io/badge/Microsoft%20Excel-217346?style=for-the-badge&logo=microsoftexcel&logoColor=white)
![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![PowerBI](https://img.shields.io/badge/Power%20BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![GitHub](https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white)

---

## 📌 Project Overview

This project analyzes employee attrition data to identify the key factors driving employee turnover within an organization. Using **Excel**, **Python**, **MySQL**, and **Power BI**, an interactive HR dashboard was built to help HR teams understand attrition patterns, workforce demographics, and job satisfaction trends — enabling data-driven retention strategies.

---

## 🎯 Business Problem

Employee attrition leads to increased hiring costs, productivity loss, and organizational instability. This project answers the following key business questions:

- What is the overall attrition rate and how many employees have left?
- Which department has the highest attrition?
- Does overtime significantly impact employee turnover?
- Which age group is most likely to leave?
- How does salary level affect attrition?
- What role does work-life balance play in retention?
- Which job levels are most at risk?

---

## 🗂️ Dataset Information

| Column | Description |
|--------|-------------|
| Age | Employee age |
| Department | HR / Research & Development / Sales |
| JobRole | Specific job title |
| MonthlyIncome | Employee monthly salary |
| OverTime | Whether the employee works overtime (Yes/No) |
| JobSatisfaction | Satisfaction score (1–4) |
| WorkLifeBalance | Work-life balance score (1–4) |
| YearsAtCompany | Number of years at the company |
| AgeGroup | Categorized age brackets (18-25, 26-35, 36-45, 46-55, 55+) |
| Attrition | Whether the employee left (Yes/No) |
| JobLevel | Seniority level (1–5) |
| EducationField | Field of education |
| Gender | Male / Female |

> **Dataset Size:** 1,413 employee records

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|------|---------|
| Microsoft Excel | Data cleaning & preprocessing |
| Python (Pandas) | Data processing & EDA |
| MySQL | Analytical SQL queries |
| Power BI | Interactive dashboard & visualization |
| GitHub | Version control & documentation |

---

## 📊 Key KPIs

| Metric | Value |
|--------|-------|
| 👥 Total Employees | 1,413 |
| 🚪 Total Attrition | 229 |
| 📉 Attrition Rate | 16.21% |
| 💰 Average Salary | $6.52K/month |
| 🎂 Average Age | 36.93 years |
| ⚠️ Highest Risk Age Group | 26–35 |
| ⚠️ Highest Risk Department | Sales |

---

## 🧮 SQL Analysis (MySQL)

**File:** `SQL/hr_attrition_queries.sql`

**Key queries performed:**
- Overall attrition rate calculation
- Attrition breakdown by department, age group, and gender
- Overtime vs. attrition correlation
- Salary and job level analysis
- Work-life balance scoring by attrition status
- Job satisfaction comparison (attrition vs. retained employees)
- Years at company distribution

**Example Queries:**

```sql
-- Attrition Rate by Department
SELECT Department,
       COUNT(*) AS total_employees,
       SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS attrition_count,
       ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS attrition_rate
FROM hr_data
GROUP BY Department
ORDER BY attrition_rate DESC;
```

```sql
-- Overtime Impact on Attrition
SELECT OverTime,
       COUNT(*) AS total_employees,
       SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS attrited,
       ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS attrition_rate
FROM hr_data
GROUP BY OverTime;
```

```sql
-- Salary vs Attrition by Job Level
SELECT JobLevel,
       ROUND(AVG(MonthlyIncome), 2) AS avg_salary,
       SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS attrition_count
FROM hr_data
GROUP BY JobLevel
ORDER BY JobLevel;
```

---

## 🐍 Python Analysis (Jupyter Notebook)

**File:** `Python/hr_attrition_eda.ipynb`

**Key analysis performed:**
- Data loading, cleaning, and type conversion
- Missing value treatment
- Attrition distribution visualization
- Correlation heatmap between numeric features and attrition
- Age group and department-wise attrition bar charts
- Overtime and work-life balance analysis plots
- Salary distribution by attrition status (box plots)

---

## 📈 Dashboard Features (Power BI)

**File:** `Dashboard/HR_Analytics_Dashboard.pbix`

### KPI Cards
- Total Employees | Total Attrition | Attrition Rate | Average Salary | Average Age

### Visualizations
- Attrition Trend by Years at Company (Line Chart)
- Attrition by Gender (Pie Chart)
- Job Satisfaction vs. Attrition (Bar Chart)
- Attrition Distribution by Age Group (Clustered Bar)
- Work-Life Balance vs. Attrition (Bar Chart)
- Salary Growth by Experience (Area Chart)
- Workforce Distribution by Department (Treemap)
- Attrition Distribution by Job Level (100% Stacked Bar)

---

## 🔍 Key Insights

1. **Early tenure = highest attrition risk** — sharp attrition spike in years 1–5, dropping dramatically after year 7, pointing to onboarding and career growth gaps
2. **Overtime is a major attrition driver** — employees working overtime show significantly lower work-life balance scores and 2x higher attrition rates than those who don't
3. **Sales department has the highest turnover** — outpacing Research & Development and HR, suggesting target pressure and compensation dissatisfaction
4. **26–35 age group drives the most attrition** — highest count across both male and female employees, likely seeking faster career advancement or better compensation
5. **Male attrition (59.94%) is higher than female (40.06%)** — 847 male vs. 566 female employees left the organization
6. **Entry-level job levels (1 & 2) dominate attrition** — Level 3 alone shows 206 attrition cases, confirming junior employees are the highest flight risk
7. **Lower salary strongly correlates with attrition** — employees who left had notably lower average monthly incomes across all job levels

---

## 💡 Business Recommendations

| Recommendation | Supporting Insight |
|----------------|-------------------|
| Reduce overtime across all departments | OT employees show ~2x higher attrition rate |
| Launch a Sales retention program | Highest attrition department — review commission structure and workload |
| Improve onboarding for new hires (0–3 years) | Peak attrition window — mentorship and structured career paths needed |
| Increase entry-level (L1 & L2) compensation | Largest attrition group — salary gap is a key push factor |
| Focus engagement programs on 26–35 age group | Highest attrition count — career growth and recognition programs needed |
| Conduct regular work-life balance reviews | Strong predictor of attrition — early intervention can prevent exits |

---

## 📁 Project Structure

```
📁 HR-Analytics-Project
├── 📁 Dataset/
│   └── hr_attrition_data.xlsx
├── 📁 Python/
│   └── hr_attrition_eda.ipynb
├── 📁 SQL/
│   └── hr_attrition_queries.sql
├── 📁 PowerBI/
│   └── HR_Analytics_Dashboard.pbix
├── 📁 images/
│   └── HR_Analytics_dashboard.png
└── README.md
```

---

## 👩‍💻 Author

**Annapurna Gannarapu**
📧 annapurna.gannarapu@gmail.com
🔗 [LinkedIn](https://linkedin.com/in/annapurna-gannarapu) | [GitHub](https://github.com/GannarapuAnnapurna)

---

*This project was completed as part of a self-learning data analytics portfolio by a 2025 Computer Science graduate.*

