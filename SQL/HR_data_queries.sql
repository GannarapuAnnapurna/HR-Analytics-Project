SELECT * FROM project1.`hr-dataset`;

#View all data
SELECT * 
FROM project1.`hr-dataset`;

#Total number of employees
SELECT COUNT(*) AS total_employees
FROM project1.`hr-dataset`;

#Employees by department
SELECT Department, COUNT(*) AS employee_count
FROM project1.`hr-dataset`
GROUP BY Department;

#Employees by gender
SELECT Gender, COUNT(*) AS total
FROM project1.`hr-dataset`
GROUP BY Gender;

#Average employee age
SELECT AVG(Age) AS average_age
FROM project1.`hr-dataset`;

#Total employees who left the company
SELECT COUNT(*) AS employees_left
FROM project1.`hr-dataset`
WHERE Attrition='Yes';

#Attrition rate
SELECT 
COUNT(CASE WHEN Attrition='Yes' THEN 1 END)*100.0/COUNT(*) AS attrition_rate
FROM project1.`hr-dataset`;

#Attrition by department
SELECT Department, COUNT(*) AS attrition_count
FROM project1.`hr-dataset`
WHERE Attrition='Yes'
GROUP BY Department;

#Attrition by gender
SELECT Gender, COUNT(*) AS attrition_count
FROM project1.`hr-dataset`
WHERE Attrition='Yes'
GROUP BY Gender;

#Attrition by age group
SELECT AgeGroup, COUNT(*) AS attrition_count
FROM project1.`hr-dataset`
WHERE Attrition='Yes'
GROUP BY AgeGroup;

#Salary Analysis
#Average monthly salary
SELECT AVG(MonthlyIncome) AS average_salary
FROM project1.`hr-dataset`;

#Salary by department
SELECT Department, AVG(MonthlyIncome) AS avg_salary
FROM project1.`hr-dataset`
GROUP BY Department;

#Highest salary
SELECT MAX(MonthlyIncome) AS highest_salary
FROM project1.`hr-dataset`;

#Lowest salary
SELECT MIN(MonthlyIncome) AS lowest_salary
FROM project1.`hr-dataset`;

#Salary distribution by salary slab
SELECT SalarySlab, COUNT(*) AS employees
FROM project1.`hr-dataset`
GROUP BY SalarySlab;

#Job Satisfaction Analysis
#Average job satisfaction
SELECT AVG(JobSatisfaction) AS avg_satisfaction
FROM project1.`hr-dataset`;

#Job satisfaction by department
SELECT Department, AVG(JobSatisfaction) AS avg_satisfaction
FROM project1.`hr-dataset`
GROUP BY Department;

#Job satisfaction vs attrition
SELECT JobSatisfaction, COUNT(*) AS attrition_count
FROM project1.`hr-dataset`
WHERE Attrition='Yes'
GROUP BY JobSatisfaction;

#Work-Life Balance Analysis
#Work-life balance distribution
SELECT WorkLifeBalance, COUNT(*) AS employees
FROM project1.`hr-dataset`
GROUP BY WorkLifeBalance;

#Work-life balance vs attrition
SELECT WorkLifeBalance, COUNT(*) AS attrition_count
FROM project1.`hr-dataset`
WHERE Attrition='Yes'
GROUP BY WorkLifeBalance;

#Employees with more than 10 years experience
SELECT COUNT(*) AS experienced_employees
FROM project1.`hr-dataset`
WHERE TotalWorkingYears > 10;

#Employees working overtime
SELECT OverTime, COUNT(*) AS employees
FROM project1.`hr-dataset`
GROUP BY OverTime;

#Promotion delay vs attrition
SELECT YearsSinceLastPromotion, COUNT(*) AS attrition_count
FROM project1.`hr-dataset`
WHERE Attrition='Yes'
GROUP BY YearsSinceLastPromotion;

#Distance vs attrition
SELECT DistanceFromHome, COUNT(*) AS attrition_count
FROM project1.`hr-dataset`
WHERE Attrition='Yes'
GROUP BY DistanceFromHome;

#Top 5 job roles with highest attrition
SELECT JobRole, COUNT(*) AS attrition_count
FROM project1.`hr-dataset`
WHERE Attrition='Yes'
GROUP BY JobRole
ORDER BY attrition_count DESC
LIMIT 5;