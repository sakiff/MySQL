/* --------------- CREATE EMPLOYEE TABLE -----------------*/
CREATE TABLE Employee_Sakif(
	Employee_id INT AUTO_INCREMENT,
    PRIMARY KEY(Employee_id),
    
    First_name varchar(25),
    Last_name varchar(25),
    Salary int,
    Joining_date varchar(25),
    Department varchar(25),
    Manager_id int
);


/* --------------- INSERT RECORDS INTO TABLE A -----------------*/
SELECT * FROM Employee_Sakif;
INSERT INTO Employee_Sakif VALUES(1, 'John', 'Abraham', 1000000, '01-JAN-13', 'Banking', 3);
INSERT INTO Employee_Sakif VALUES(2, 'Michael', 'Clarke', 800000, '01-JAN-13', 'Insurance', 3);
INSERT INTO Employee_Sakif VALUES(3, 'Roy', 'Thomas', 700000, '01-FEB-13', 'Banking', 1);
INSERT INTO Employee_Sakif VALUES(4, 'Tom', 'Jose', 600000, '01-FEB-13', 'Insurance', 1);
INSERT INTO Employee_Sakif VALUES(5, 'Jerry ', 'Pinto', 650000, '01-FEB-13', 'Insurance', 1);
INSERT INTO Employee_Sakif VALUES(6, 'Philip', 'Mathew', 750000, '01-JAN-13', 'Services', 5);
INSERT INTO Employee_Sakif VALUES(7, 'TestName1', '123', 650000, '01-JAN-13', 'Services', 5);
INSERT INTO Employee_Sakif VALUES(8, 'TestName2', 'Lname%', 600000, '01-FEB-13', 'Insurance', 5);




/* --------------- CREATE INCENTIVES TABLE -----------------*/
CREATE TABLE Incentives_Sakif(
	Employee_id INT AUTO_INCREMENT,
    CONSTRAINT Employee_id FOREIGN KEY(Employee_id) REFERENCES Employee_Sakif(Employee_id),
    
    Incentive_date varchar(25),
    Incentive_Amount int
);

/* --------------- INSERT RECORDS INTO TABLE B -----------------*/
INSERT INTO Incentives_Sakif VALUES(1, '01-FEB-13', '5000');
INSERT INTO Incentives_Sakif VALUES(2, '01-FEB-13', '3000');
INSERT INTO Incentives_Sakif VALUES(3, '01-FEB-13', '4000');
INSERT INTO Incentives_Sakif VALUES(1, '01-JAN-13', '4500');
INSERT INTO Incentives_Sakif VALUES(2, '01-JAN-13', '3500');

SELECT * FROM Incentives_Sakif;


/* --------------- EXAM QUESTIONS -----------------*/

/*Q1*/ SELECT * FROM Employee_Sakif;

/*Q2*/ SELECT First_name FROM Employee_Sakif;

/*Q3*/ SELECT UCASE(First_name) FROM Employee_Sakif uppercase;

/*Q4*/ SELECT DISTINCT Department FROM Employee_Sakif;

/*Q5*/ SELECT SUBSTR(First_name, 1,3) FROM Employee_Sakif;

/*Q6*/ SELECT SUBSTR(First_name, 1,3) FROM Employee_Sakif;

/*Q7*/ SELECT * FROM Employee_Sakif WHERE First_name LIKE CONCAT('%', 'o', '%');

/*Q8*/ SELECT * FROM Employee_Sakif WHERE Salary < 800000;

/*Q9*/ SELECT Department, SUM(Salary) FROM Employee_Sakif GROUP BY Department;

/*Q10*/ 
SELECT A.First_name, B.Incentive_Amount
FROM Employee_Sakif AS A LEFT JOIN Incentives_Sakif AS B
ON A.Employee_id = B.Employee_id;

/*Q11*/ 
SELECT A.First_name, B.Incentive_Amount 
FROM Employee_Sakif AS A INNER JOIN Incentives_Sakif AS B
ON A.Employee_id = B.Employee_id;

/*Q12*/
/* UNION Extracts overall unique values of both tables. 
UNION ALL, however, extracts all unique values from each individual table.*/

/*Q13*/
SELECT E.First_name AS Employee, M.First_name AS Manager
FROM Employee_Sakif AS E LEFT JOIN Employee_Sakif AS M
ON E.Manager_id = M.Employee_id;

