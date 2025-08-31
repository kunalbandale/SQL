USE compnay_db;
Select * from emp;
-- ALIAS IN SQL 
-- ================
-- 1] WAQTD TOTAL SAL GIVEN TO EACH EMP(SAL+COMM)..
Select (sal + comm) as TotalSalary 
From emp;

-- 2] WAQTD ALL THE DETAILS OF EMP ALONG WITH ANNUAL SAL...
Select emp.*,(sal*12) AS Annual_Salary 
FROM emp;

-- 3] WAQTD ALL THE DETAILS OF EMP ALONG WITH ANNUAL BONUS OF 2000....
Select emp.* , ((sal * 12 ) + 2000) as Annual_Bonus 
FROM emp;

-- 4] WAQTD ALL THE DETAILS OF EMP ALONG WITH SAL HIKE OF 50RPS..
SELECT emp.*, (sal + 50) as sal_hike 
From emp;

-- 5] WAQTD ALL THE DETAILS OF EMP ALONG WITH DEDUCTION OF 50 IN SAL...
Select emp.* , (sal - 50) AS sal_deducation
FROM emp;
 
-- 6] WAQTD ALL THE DETAILS ABOUT EMPLOYEE AND HIS 2 MONTHS SAL..
	SELECT emp.* , (sal*2) AS two_months_salary
    FROM emp;

-- 7] WAQTD ALL THE DETAILS OF EMP ALONG WITH DEDUCTION OF 25% IN THERE ANNUAL SAL..
SELECT emp.* , 
	   (sal * 12) - (sal*12) * 0.25  AS After_deduction
FROM emp;

-- 8] WAQTD ALL THE DETAILS OF EMP ALONG WITH HIKE OF 33% IN HIS MONTHLY SAL..
SELECT emp.* , 
	(sal + sal * 33 / 100) AS hiked_monthly_salary
FROM emp;

-- 9] WAQTD ALL DETAILS OF EMP ALONG WITH HIKE OF 35% IN THERE ANNUAL SAL..
SELECT emp.* , 
	(sal * 12) + (sal * 12) * 0.35 AS hiked_annual_salary
FROM emp;

-- 10] WAQTD ALL DETAILS OF EMP ALONG WITH DEDUCTION OF 500Rupees IN THERE 5 MONTHS SAL..
SELECT emp.* , 
	(sal * 5) - 500 AS deducation_5_months
FROM emp; 

-- 11] WAQTD ALL DETAILS OF EMP ALONG WITH 28% OF HIKE IN THE SAL & 33% DEDUCTION IN HIS HALF TERM SAL& 45% HIKE IN HIS ANNUAL SAL...
SELECT emp.* , 
	(sal + sal * 0.28) , (sal * 6) - (sal * 6) * 0.33 , (sal * 12) + (sal * 12) * 0.45 AS total_sal 
    FROM emp;