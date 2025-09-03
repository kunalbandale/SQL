use compnay_db;
SELECT * FROM emp;
-- ==========================================
-- Aggregate Functions / Multirow Functions 
-- ==========================================

-- 1] WAQTD MAXIMUM SALARY IN EMP TABLE.
SELECT MAX(sal) 
FROM emp;

-- 2] WAQTD MIN SAL IN EMP TABLE.
SELECT min(sal) 
FROM emp;

-- WAQTD maximum salary in DEPTNO 10.
SELECT MAX(sal)
FROM emp 
WHERE deptno = 10;

-- WAQTD number of EMP’s earning Rs.3000 in DEPTNO 20.
 SELECT count(*) 
 FROM emp 
 WHERE sal = 3000 AND deptno = 20;

-- WAQTD number of EMP’s earning more than 3000.
SELECT count(*)
FROM emp 
WHERE sal > 3000;

-- WAQTD maximum salary given to 'MANAGER'.
SELECT max(sal) 
FROM emp 
WHERE job = "MANAGER";

-- WAQTD average salary given to 'PRESIDENT'.
SELECT AVG(sal) 
FROM emp 
WHERE job = "PRESIDENT";


-- WAQTD number of EMP’s hired in the year 1987.
SELECT COUNT(*) 
FROM emp 
WHERE hiredate BETWEEN '01-01-1987' AND '31-12-1987';

-- WAQTD number of EMP’s working as a ‘MANAGER’ or 'SALESMAN'.
SELECT count(*)
FROM emp 
WHERE job IN ("MANAGER" , "SALESMAN");

-- WAQTD number of EMP’s hired in the month of DEC.
SELECT count(*) from emp 
where hiredate LIKE '%-12-%';

-- WAQTD maximum salary given to EMP hired in the month of FEB.
SELECT MAX(sal)
FROM emp 
WHERE hiredate LIKE '%-02-%';


-- WAQTD total salary given to an EMP who is having 
-- two consecutive ‘T’ in their name.
SELECT SUM(sal)
FROM emp 
WHERE ename LIKE '%TT%';

-- WAQTD total salary given to the EMP 
-- whose name ends with char ‘N’.
SELECT SUM(sal) 
FROM emp 
WHERE ename LIKE '%n';


-- WAQTD number of EMP’s whose name starts with ‘A’.
SELECT count(*)
FROM emp 
WHERE ename LIKE 'a%';

-- WAQTD number of EMP’s earning more than Rs.3000 in 
-- DEPTNO 10 & name must start with ‘K’ & end with ‘G’.
SELECT count(*) 
FROM emp 
WHERE deptno = 10 AND ename LIKE 'K%G';



-- WAQTD maximum salary given to EMP’s hired after 82.
SELECT MAX(sal) 
FROM emp 
WHERE hiredate >='1982-01-01';

-- WAQTD minimum salary given to EMP’s name starts with ‘A’.
SELECT MIN(sal) 
FROM emp
WHERE ename LIKE 'A%';

-- WAQTD count of EMP’s taking commission.
SELECT COUNT(*) 
FROM emp 
WHERE comm IS NOT NULL;

-- WAQTD count of EMP’s not taking any commission.
SELECT COUNT(*)
FROM emp
WHERE comm IS NULL;