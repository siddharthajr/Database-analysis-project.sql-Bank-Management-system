CREATE DATABASE Bank_management;
USE Bank_management;

CREATE TABLE branch (
    branch_id INT AUTO_INCREMENT PRIMARY KEY,
    branch_name CHAR(100),
    city CHAR(50)
);

INSERT INTO branch (branch_name, city) VALUES
('Chennai Branch','Chennai'),
('Mumbai Branch','Mumbai'),
('Bangalore Branch','Bangalore'),
('Delhi Branch','Delhi'),
('Pune Branch','Pune'),
('Hyderabad Branch','Hyderabad'),
('Kolkata Branch','Kolkata'),
('Ahmedabad Branch','Ahmedabad'),
('Jaipur Branch','Jaipur'),
('Lucknow Branch','Lucknow'),
('Chandigarh Branch','Chandigarh'),
('Bhopal Branch','Bhopal'),
('Indore Branch','Indore'),
('Patna Branch','Patna'),
('Nagpur Branch','Nagpur'),
('Surat Branch','Surat'),
('Vadodara Branch','Vadodara'),
('Rajkot Branch','Rajkot'),
('Visakhapatnam Branch','Visakhapatnam'),
('Vijayawada Branch','Vijayawada'),
('Mysore Branch','Mysore'),
('Mangalore Branch','Mangalore'),
('Coimbatore Branch','Coimbatore'),
('Madurai Branch','Madurai'),
('Trichy Branch','Trichy'),
('Salem Branch','Salem'),
('Erode Branch','Erode'),
('Tirunelveli Branch','Tirunelveli'),
('Guwahati Branch','Guwahati'),
('Ranchi Branch','Ranchi');

SELECT * FROM Branch

CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    Name CHAR(100),
    position CHAR(50),
    branch_id INT,
    FOREIGN KEY (branch_id) REFERENCES branch(branch_id)
);

INSERT INTO employees (name, position, branch_id) VALUES
('Rohit Sharma','Manager',1),
('Anjali Verma','Cashier',2),
('Sanjay Kumar','Officer',3),
('Priya Singh','Clerk',4),
('Amit Patel','Officer',5),
('Neha Gupta','Cashier',6),
('Vikas Yadav','Clerk',7),
('Kiran Rao','Manager',8),
('Arvind Kumar','Officer',9),
('Pooja Sharma','Clerk',10),
('Rahul Mehta','Cashier',11),
('Sneha Joshi','Officer',12),
('Manish Tiwari','Clerk',13),
('Deepika Nair','Manager',14),
('Suresh Reddy','Officer',15),
('Akash Singh','Clerk',16),
('Ritika Sharma','Cashier',17),
('Vivek Patel','Officer',18),
('Kavita Verma','Manager',19),
('Mohit Gupta','Clerk',20),
('Naveen Kumar','Officer',21),
('Shalini Mehta','Cashier',22),
('Tarun Yadav','Clerk',23),
('Pallavi Jain','Manager',24),
('Rohit Agarwal','Officer',25),
('Sunil Kumar','Cashier',26),
('Aarti Singh','Clerk',27),
('Gaurav Sharma','Officer',28),
('karthi','Manager',29),
('Ankit Verma','Clerk',30);

SELECT * FROM Employees

CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name CHAR(100),
    phone_no int),
    address VARCHAR(200)
);

INSERT INTO customers (name, phone, address) VALUES
('Arjun Kumar','9876543210','Chennai'),
('Meena R','9123456789','Madurai'),
('Vijay K','9988776655','Trichy'),
('Karthik S','9871234567','Salem'),
('Lakshmi P','9012345678','Coimbatore'),
('Deepak R','9123987654','Erode'),
('Sneha T','9870098700','Chennai'),
('Manoj K','9123456701','Madurai'),
('Keerthi V','9988776600','Trichy'),
('Ravi P','9001122334','Salem'),
('Sanjay R','9887766554','Mumbai'),
('Pooja S','9776655443','Bangalore'),
('Aditya Kumar','9876543001','Chennai'),
('Riya Sharma','9876543002','Mumbai'),
('Kunal Singh','9876543003','Delhi'),
('Nisha Verma','9876543004','Bangalore'),
('Harish Patel','9876543005','Ahmedabad'),
('Simran Kaur','9876543006','Punjab'),
('Raj Malhotra','9876543007','Delhi'),
('Ananya Das','9876543008','Kolkata'),
('Siddharth Jain','9876543009','Jaipur'),
('Megha Gupta','9876543010','Lucknow'),
('Arjun Nair','9876543011','Kerala'),
('Varun Sharma','9876543012','Chandigarh'),
('Pankaj Singh','9876543013','Patna'),
('Divya Kapoor','9876543014','Delhi'),
('Rakesh Yadav','9876543015','Varanasi');

SELECT * FROM Customers

CREATE TABLE accounts (
    account_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    account_type CHAR(20),
    balance DECIMAL(10,2),
    branch_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (branch_id) REFERENCES branch(branch_id)
);

INSERT INTO accounts (customer_id, account_type, balance, branch_id) VALUES
(1,'Savings',10000,1),
(2,'Current',15000,1),
(3,'Savings',5000,2),
(4,'Savings',8000,2),
(5,'Current',20000,3),
(6,'Savings',12000,3),
(7,'Savings',9000,4),
(8,'Current',7000,4),
(9,'Savings',6000,5),
(10,'Savings',11000,5),
(11, 'current',69000,6),
(12, 'current',120000,2),
(13,'Savings',8000,3),
(14,'Current',12000,4),
(15,'Savings',15000,5),
(16,'Savings',7000,6),
(17,'Current',20000,7),
(18,'Savings',9000,8),
(19,'Savings',11000,9),
(20,'Current',13000,10),
(21,'Savings',6000,11),
(22,'Savings',7500,12),
(23,'Current',17000,13),
(24,'Savings',8500,14),
(25,'Savings',9500,15);

SELECT * FROM accounts,

CREATE TABLE loans (
    loan_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    loan_amount DECIMAL(10,2),
    loan_type CHAR(50),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO loans (customer_id, loan_amount, loan_type) VALUES
(1,200000,'Home Loan'),
(2,50000,'Personal Loan'),
(3,100000,'Car Loan'),
(4,75000,'Education Loan'),
(5,300000,'Business Loan'),
(6,120000,'Car Loan'),
(7,90000,'Personal Loan'),
(8,150000,'Car Loan'),
(9,250000,'Home Loan'),
(10,60000,'Personal Loan'),
(11,80000,'Education Loan'),
(12,120000,'Car Loan'),
(13,200000,'Home Loan'),
(14,50000,'Personal Loan'),
(15,90000,'Business Loan');

SELECT * FROM Loans

CREATE TABLE transactions (
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    account_id INT,
    amount DECIMAL(10,2),
    transaction_type VARCHAR(20),
    transaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (account_id) REFERENCES accounts(account_id)
);

INSERT INTO transactions (account_id, amount, transaction_type) VALUES
(1,500,'Withdraw'),
(2,3000,'Deposit'),
(3,500,'Withdraw'),
(4,1200,'Deposit'),
(5,800,'Withdraw'),
(6,2000,'Deposit'),
(7,700,'Withdraw'),
(8,900,'Deposit'),
(9,1000,'Deposit'),
(10,400,'Withdraw'),
(11,600,'Deposit'),
(12,300,'Withdraw'),
(13,1500,'Deposit'),
(14,1000,'Withdraw'),
(15,500,'Deposit'),
(16,700,'Withdraw'),
(17,900,'Deposit');

SELECT * FROM transactions

SELECT SUM(balance) AS total_bank_balance
FROM accounts;

SELECT COUNT(*) AS total_customers
FROM customers;

SELECT SUM(loan_amount) AS total_loans
FROM loans;

SELECT name
FROM customers
ORDER BY name ASC;

SELECT account_id, balance
FROM accounts
ORDER BY balance DESC;

SELECT DISTINCT account_type
FROM accounts;

SELECT customer_id, loan_amount
FROM loans
WHERE loan_amount BETWEEN 50000 AND 200000;

DELETE FROM customers
WHERE customer_id = 3;

SELECT DISTINCT c.name, a.balance
FROM customers c
JOIN accounts a
ON c.customer_id = a.customer_id
WHERE a.balance BETWEEN 5000 AND 20000
ORDER BY a.balance DESC;

SELECT c.name, a.balance
FROM customers c
JOIN accounts a ON c.customer_id = a.customer_id;

SELECT name
FROM customers
WHERE name LIKE '%R';

SELECT name AS customer_name, balance AS account_balance
FROM customers c
JOIN accounts a ON c.customer_id = a.customer_id
WHERE name LIKE 'R%';

SELECT name AS customer_name, UPPER(name) AS name_upper
FROM customers;

SELECT name AS customer_name, LOWER(name) AS name_lower
FROM customers;

SELECT name, LENGTH(name) AS name_length
FROM customers;

SELECT account_id, balance, ROUND(balance, 0) AS rounded_balance
FROM accounts;

SELECT account_id, ROUND(balance, 2) AS rounded_balance
FROM accounts
WHERE balance > 10000;

SELECT c.name, a.account_type, a.balance
FROM customers c
Left outer JOIN accounts a ON c.customer_id = a.customer_id;

SELECT b.branch_name, SUM(a.balance) AS total_balance
FROM accounts a
JOIN branch b ON a.branch_id = b.branch_id
GROUP BY b.branch_name;

SELECT b.branch_name, SUM(a.balance) AS total_balance
FROM accounts a
JOIN branch b ON a.branch_id = b.branch_id
GROUP BY b.branch_name
HAVING SUM(a.balance) > 30000;

SELECT loan_type, SUM(loan_amount) AS total_loan
FROM loans
GROUP BY loan_type
HAVING SUM(loan_amount) > 100000;

SELECT account_type, AVG(balance) AS avg_balance
FROM accounts
GROUP BY account_type
HAVING AVG(balance) > 8000;


SELECT b.branch_name, SUM(l.loan_amount) AS total_loans
FROM loans l
Join customers c ON l.customer_id = c.customer_id
Join accounts a ON c.customer_id = a.customer_id
Join branch b ON a.branch_id = b.branch_id
Group By b.branch_name
Having SUM(l.loan_amount) > 200000;

SELECT c.name, a.account_type, a.balance, b.branch_name
FROM customers c
Inner Join accounts a 
ON c.customer_id = a.customer_id
Inner Join branch b
ON a.branch_id = b.branch_id;

SELECT c.name, a.account_id, t.amount, t.transaction_type
FROM customers c
Left outer Join accounts a 
ON c.customer_id = a.customer_id
Left outer Join transactions t
ON a.account_id = t.account_id;

SELECT b.branch_name,
       e.name AS employee_name,
       c.name AS customer_name,
       a.balance
FROM branch b
Left outer Join employees e
ON b.branch_id = e.branch_id
Left outer Join accounts a
ON b.branch_id = a.branch_id
Left outer Join customers c
ON a.customer_id = c.customer_id;

SELECT c.name,
       a.account_type,
       l.loan_amount,
       t.transaction_type,
       t.amount
FROM customers c
Left outer Join accounts a
ON c.customer_id = a.customer_id
LEFT outer Join loans l
ON c.customer_id = l.customer_id
Left outer Join transactions t
ON a.account_id = t.account_id;

SELECT c.name, a.account_id, a.balance
FROM customers c
RIGHT JOIN accounts a
ON c.customer_id = a.customer_id;

SELECT b.branch_name, a.account_id, a.balance
FROM branch b
Right outer join accounts a
ON b.branch_id = a.branch_id;

SELECT e.name AS employee_name,
       b.branch_name,
       a.account_id,
       a.balance
FROM employees e
Right outer join branch b
ON e.branch_id = b.branch_id
Right outer join accounts a
ON b.branch_id = a.branch_id;

SELECT e.name AS employee_name,
       b.branch_name,
       c.name AS customer_name,
       a.account_id,
       a.balance,
       t.amount,
       l.loan_amount
FROM employees e
RIGHT JOIN branch b
ON e.branch_id = b.branch_id
RIGHT JOIN accounts a
ON b.branch_id = a.branch_id
RIGHT JOIN customers c
ON a.customer_id = c.customer_id
Right outer Join transactions t
ON a.account_id = t.account_id
Right outer Join loans l
ON c.customer_id = l.customer_id;

SELECT 
    b.branch_name,
    COUNT(DISTINCT c.customer_id) AS total_customers,
    SUM(a.balance) AS total_branch_balance,
    COUNT(t.transaction_id) AS total_transactions
FROM branch b
JOIN accounts a 
    ON b.branch_id = a.branch_id
JOIN customers c 
    ON a.customer_id = c.customer_id
Left outer Join transactions t 
    ON a.account_id = t.account_id
Group By b.branch_name
Having SUM(a.balance) > 20000
Order By total_branch_balance DESC;

SELECT c.name, a.account_id, b.branch_name, t.amount
FROM customers c
Left outer Join accounts a
ON c.customer_id = a.customer_id
Left outer Join branch b
ON a.branch_id = b.branch_id
Left outer Join transactions t
ON a.account_id = t.account_id

UNION

SELECT c.name, a.account_id, b.branch_name, t.amount
FROM customers c
Right outer Join accounts a
ON c.customer_id = a.customer_id
Right outer Join branch b
ON a.branch_id = b.branch_id
Right outer Join transactions t
ON a.account_id = t.account_id;

SELECT c.name, a.account_id, b.branch_name
FROM customers c
Left outer Join accounts a
ON c.customer_id = a.customer_id
Left outer Join branch b
ON a.branch_id = b.branch_id

UNION

SELECT c.name, a.account_id, b.branch_name
FROM customers c
Right outer Join accounts a
ON c.customer_id = a.customer_id
Right outer Join branch b
ON a.branch_id = b.branch_id;

SELECT e.name AS employee_name, b.branch_name
FROM employees e
Cross Join branch b;

SELECT c.name, a.account_type, b.branch_name
FROM customers c
Cross Join accounts a
Cross Join branch b;

SELECT b.branch_name, c.name AS customer_name, l.loan_type
FROM branch b
Cross Join customers c
Cross Join loans l;

SELECT c.name, b.branch_name, t.transaction_type
FROM customers c
Cross Join branch b
Cross Join transactions t;

SELECT c.name,
       b.branch_name,
       e.name AS employee_name,
       a.account_type,
       l.loan_type
FROM customers c
Cross Join branch b
Cross Join employees e
Cross Join accounts a
Cross Join loans l;

CREATE INDEX idx_customer_name
ON customers(name);

CREATE VIEW customer_account_view AS
SELECT c.name, a.account_id, a.account_type, a.balance
FROM customers c
JOIN accounts a
ON c.customer_id = a.customer_id;

SELECT * FROM customer_account_view;

UPDATE accounts
SET balance = balance + 2000
WHERE account_id = 1;

START TRANSACTION;

UPDATE accounts
SET balance = balance - 500
WHERE account_id = 1;

UPDATE accounts
SET balance = balance + 500
WHERE account_id = 2;

COMMIT;

SELECT * FROM Accounts

SELECT 
    b.branch_name AS Branch,
    c.name AS Customer_Name,
    a.account_id AS Account_ID,
    a.account_type AS Account_Type,
    ROUND(a.balance,2) AS Account_Balance,
    ROUND(SUM(l.loan_amount),2) AS Total_Loan_Amount,
    MAX(t.transaction_date) AS Last_Transaction_Date,
    CONCAT(c.name, ' | ', a.account_type, ' | ', b.branch_name) AS Customer_Details
FROM branch b
JOIN accounts a 
    ON b.branch_id = a.branch_id
JOIN customers c 
    ON a.customer_id = c.customer_id
Left outer join loans l 
    ON c.customer_id = l.customer_id
Left outer Join transactions t
    ON a.account_id = t.account_id
Group by b.branch_id, c.customer_id, a.account_id
Having SUM(l.loan_amount) > 50000
Order By Total_Loan_Amount DESC, Account_Balance DESC;

SELECT 
    c.name AS Customer_Name,
    a.account_id AS Account_ID,
    a.account_type AS Account_Type,
    ROUND(a.balance,2) AS Balance,
    SUM(l.loan_amount) AS Total_Loans,
    b.branch_name AS Branch
FROM customers c
Join accounts a ON c.customer_id = a.customer_id
Join branch b ON a.branch_id = b.branch_id
Join loans l ON c.customer_id = l.customer_id
Group By c.customer_id, a.account_id
Having SUM(l.loan_amount) > 150000
Order By Total_Loans DESC;

DELIMITER $$
CREATE PROCEDURE show_customers()
BEGIN
    Declare done INT DEFAULT FALSE;
    Declare cname CHAR(100);

    Declare cur_customer CURSOR FOR
    Select name FROM customers;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN cur_customer;

    read_loop: LOOP
        FETCH cur_customer INTO cname;
        IF done THEN
            LEAVE read_loop;
        END IF;
        SELECT cname AS Customer_Name;
    END LOOP;

    CLOSE cur_customer;
END$$
DELIMITER ;