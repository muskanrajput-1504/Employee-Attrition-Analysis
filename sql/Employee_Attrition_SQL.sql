SELECT *
FROM employee_attrition;

-- Query 2: Count total number of employees

SELECT COUNT(*) AS Total_Employees
FROM employee_attrition;

-- Query 3: Count employees who left the company

SELECT COUNT(*) AS Employees_Left
FROM employee_attrition
WHERE Attrition = 'Yes';

-- Query 4: Calculate employee attrition rate

SELECT
    ROUND(
        (COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) * 100.0) / COUNT(*),
        2
    ) AS Attrition_Rate
FROM employee_attrition;

-- Query 5: Count employees in each department

SELECT
    Department,
    COUNT(*) AS Total_Employees
FROM employee_attrition
GROUP BY Department
ORDER BY Total_Employees DESC;

-- Query 6: Department-wise attrition

SELECT
    Department,
    COUNT(*) AS Employees_Left
FROM employee_attrition
WHERE Attrition = 'Yes'
GROUP BY Department
ORDER BY Employees_Left DESC;

-- Query 7: Average monthly income by department

SELECT
    Department,
    ROUND(AVG(MonthlyIncome), 2) AS Average_Monthly_Income
FROM employee_attrition
GROUP BY Department
ORDER BY Average_Monthly_Income DESC;

-- Query 8: Average age by department

SELECT
    Department,
    ROUND(AVG(Age), 2) AS Average_Age
FROM employee_attrition
GROUP BY Department
ORDER BY Average_Age DESC;

-- Query 9: Overtime vs attrition

SELECT
    OverTime,
    Attrition,
    COUNT(*) AS Employee_Count
FROM employee_attrition
GROUP BY OverTime, Attrition
ORDER BY OverTime;

-- Query 10: Job role-wise attrition

SELECT
    JobRole,
    COUNT(*) AS Employees_Left
FROM employee_attrition
WHERE Attrition = 'Yes'
GROUP BY JobRole
ORDER BY Employees_Left DESC;

-- Query 11: Gender-wise attrition

SELECT
    Gender,
    COUNT(*) AS Employees_Left
FROM employee_attrition
WHERE Attrition = 'Yes'
GROUP BY Gender;

-- Query 12: Marital status-wise attrition

SELECT
    MaritalStatus,
    COUNT(*) AS Employees_Left
FROM employee_attrition
WHERE Attrition = 'Yes'
GROUP BY MaritalStatus
ORDER BY Employees_Left DESC;

-- Query 13: Top 5 highest paid employees

SELECT
    EmployeeNumber,
    JobRole,
    Department,
    MonthlyIncome
FROM employee_attrition
ORDER BY MonthlyIncome DESC
LIMIT 5;

-- Query 14: Employees earning above the average monthly income

SELECT
    EmployeeNumber,
    JobRole,
    Department,
    MonthlyIncome
FROM employee_attrition
WHERE MonthlyIncome >
(
    SELECT AVG(MonthlyIncome)
    FROM employee_attrition
)
ORDER BY MonthlyIncome DESC;

-- Query 15: Department with the highest average monthly income

SELECT
    Department,
    ROUND(AVG(MonthlyIncome), 2) AS Average_Salary
FROM employee_attrition
GROUP BY Department
ORDER BY Average_Salary DESC
LIMIT 1;

-- Query 16: Total monthly salary paid by each department

SELECT
    Department,
    SUM(MonthlyIncome) AS Total_Monthly_Salary
FROM employee_attrition
GROUP BY Department
ORDER BY Total_Monthly_Salary DESC;

-- Query 17: Highest and lowest monthly income by department

SELECT
    Department,
    MAX(MonthlyIncome) AS Highest_Salary,
    MIN(MonthlyIncome) AS Lowest_Salary
FROM employee_attrition
GROUP BY Department;

-- Query 18: Departments with more than 100 employees

SELECT
    Department,
    COUNT(*) AS Total_Employees
FROM employee_attrition
GROUP BY Department
HAVING COUNT(*) > 100
ORDER BY Total_Employees DESC;

-- Query 19: Rank employees based on monthly income

SELECT
    EmployeeNumber,
    JobRole,
    Department,
    MonthlyIncome,
    RANK() OVER (ORDER BY MonthlyIncome DESC) AS Salary_Rank
FROM employee_attrition;

-- Query 20: Dense rank employees based on monthly income

SELECT
    EmployeeNumber,
    JobRole,
    Department,
    MonthlyIncome,
    DENSE_RANK() OVER (ORDER BY MonthlyIncome DESC) AS Dense_Salary_Rank
FROM employee_attrition;