SELECT department, COUNT(*) AS number_of_Employee
FROM EmployeeDetails 
GROUP BY department;
select * from EmployeeDetails ;
SELECT department, AVG(age) AS average_age
FROM EmployeeDetails
GROUP BY department;
---Question 3 Identify the most common job roles in each department
SELECT department, job_role, COUNT(*) AS role_count
FROM EmployeeDetails
GROUP BY department , job_role
ORDER BY  role_count DESC;
---Question 4 Calculate the average job satisfaction for each education level
select education_field, AVG (job_satisfaction) AS job_satisfaction
from EmployeeDetails
group by  education_field , satisfaction ;
-- Question 5 Determine the average age for employees with different levels of job

select job_satisfaction , education_field , AVG(age) as age_AVG
from EmployeeDetails
group by job_satisfaction, education_field
order by age_AVG  Asc;
---Question 6 Calculate the attrition rate for each age band
SELECT age_band, 
       CAST(SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS DECIMAL(5, 2)) AS attrition_rate
FROM EmployeeDetails
GROUP BY age_band;
---Quest 7 
SELECT department, AVG(job_satisfaction) AS average_satisfaction
FROM EmployeeDetails
GROUP BY department 
ORDER BY average_satisfaction DESC
----Question 8
SELECT top 1 age_band,education,
       CAST(SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS DECIMAL(5, 2)) AS attrition_rate
FROM EmployeeDetails
GROUP BY age_band, education
ORDER BY attrition_rate DESC;
select*from EmployeeDetails ;
---- Quest 9
SELECT education, AVG(job_satisfaction) AS avg_job_satisfaction
FROM EmployeeDetails 
WHERE business_travel ='Travel_Frequently'
GROUP BY education
ORDER BY avg_job_satisfaction DESC;
---Quest 10 
SELECT age ,avg(job_satisfaction) as avg_job_satisfaction
FROM EmployeeDetails
WHERE marital_status ='Married'
GROUP BY age
ORDER BY avg_job_satisfaction DESC;
