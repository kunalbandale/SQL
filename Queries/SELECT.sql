CREATE DATABASE compnay_db;
USE compnay_db;

-- Department Table
CREATE TABLE dept(
	deptno INT PRIMARY KEY, 
    dname VARCHAR(50),
    loc VARCHAR(50)
); 

INSERT INTO dept VALUES
(10, 'ACCOUNTING', 'NEW YORK'),
(20, 'RESEARCH', 'DALLAS'),
(30, 'SALES', 'CHICAGO'),
(40, 'OPERATIONS', 'BOSTON');

CREATE TABLE emp (
    empno INT PRIMARY KEY,
    ename VARCHAR(50),
    job VARCHAR(50),
    mgr INT,
    hiredate DATE,
    sal DECIMAL(10,2),
    comm DECIMAL(10,2),
    deptno INT,
    FOREIGN KEY (deptno) REFERENCES dept(deptno)
);

-- INSERT DATA

INSERT INTO emp VALUES
(7839, 'KING',   'PRESIDENT', NULL, '1981-11-17', 5000, NULL, 10),
(7566, 'JONES',  'MANAGER',   7839, '1981-04-02', 2975, NULL, 20),
(7698, 'BLAKE',  'MANAGER',   7839, '1981-05-01', 2850, NULL, 30),
(7782, 'CLARK',  'MANAGER',   7839, '1981-06-09', 2450, NULL, 10),
(7788, 'SCOTT',  'ANALYST',   7566, '1982-12-09', 3000, NULL, 20),
(7902, 'FORD',   'ANALYST',   7566, '1981-12-03', 3000, NULL, 20),
(7844, 'TURNER', 'SALESMAN',  7698, '1981-09-08', 1500,  0,   30),
(7900, 'JAMES',  'CLERK',     7698, '1981-12-03', 950,  NULL, 30),
(7654, 'MARTIN', 'SALESMAN',  7698, '1981-09-28', 1250, 1400, 30),
(7499, 'ALLEN',  'SALESMAN',  7698, '1981-02-20', 1600,  300, 30),
(7521, 'WARD',   'SALESMAN',  7698, '1981-02-22', 1250,  500, 30),
(7934, 'MILLER', 'CLERK',     7782, '1982-01-23', 1300, NULL, 10);

-- verfiy tables 
SHOW TABLES;
DESC emp;
DESC dept;


-- ======================
-- SELECT CLAUSE 
-- ======================
SELECT * FROM emp;
-- table name (emp) 
-- emp columns (empno , ename , job , mgr , hiredate , sal , comm , deptno)


-- 1] WAQTD EMPLOYEE NAME, SAL OF ALL THE EMPLOYEES.
SELECT ename , sal 
FROM emp;

-- 2] WAQTD JOB & SALARY OF ALL THE EMPLOYEES.
SELECT job , sal 
FROM emp;

-- 3] WAQTD NAME & JOB OF ALL EMPLOYEES.
SELECT ename , job 
FROM emp;

-- 4] WAQTD ALL THE DETAILS FROM EMP TABLE.
SELECT * FROM emp;

-- 5] WAQTD THE TABLES PRESENT IN THE DATABASE.
Show tables;

-- 6] WAQTD EMPLOYEE ID & DEPARTMENT NO OF ALL THE EMP'S.
SELECT empno , deptno 
FROM emp;

-- 7] WAQTD NAME & HALF-TERM SALARY OF ALL THE EMP'S.
SELECT ename , (sal * 6) AS halfTermSalary
FROM emp;

-- 8] WAQTD NAME, SALARY & SALARY WITH 25% HIKE.
SELECT ename , sal , sal + sal * 0.25
FROM emp;
-- 9] WAQTD NAME, SALARY & SALARY WITH 25% DEDUCTION.
SELECT ename , sal , sal - sal * 0.25 
FROM emp;
-- 10] WAQTD NAME, SALARY & SAL WITH 5000 BONUS.
SELECT ename , sal , sal + 5000
FROM emp;

-- 11] WAQTD NAME, SALARY, SAL ALONG WITH 58% DEDUCTION  4500 BONUS IN HALTERM SAL.
SELECT ename,sal, (sal - sal * 0.58) , (sal * 6 + 4500) 
FROM emp;

-- 12] WAQTD TOTAL SALARY & 3400 DEDUCTION IN HALF-TERM SAL
SELECT sal , (sal * 6) - 3400
FROM emp;


