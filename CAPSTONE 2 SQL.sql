--CAPSTONE (2)
/* CUSTOMER RELATIONSHIP MANAGEMENT SYSTEM (CRM) */

--CREATING DATABASE 
CREATE DATABASE Capstone2;
USE Capstone2;

--THIS DATABASE CONSIST OF TABLES CUSTOMER,ACCOUNTS,TRANSACTION,CUSTOMER SERVICE,FEEDBACK.

-- CREATING CUSTOMER TABLE
CREATE TABLE customers (
    customerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    JoiningDate DATE,
    Email VARCHAR(100)
);

-- CREATING ACCOUNTS TABLE
CREATE TABLE accounts (
    accountID INT PRIMARY KEY,
    customerID INT FOREIGN KEY REFERENCES customers(customerid),
    accountType VARCHAR(50),
    Balance DECIMAL(18, 2),
    OpeningDate DATE,
    Status VARCHAR(20),
);

-- CREATING TRANSACTION TABLE 
CREATE TABLE transactions (
    transactionID INT PRIMARY KEY,
    accountID INT FOREIGN KEY REFERENCES accounts(accountID),
    Date DATE,
    Amount DECIMAL(18, 2),
    TransactionType VARCHAR(50),
    Description VARCHAR(255),
    
);

-- CREATING CUSTOMER SERVICE TABLE
CREATE TABLE customerservice (
    interactionID INT PRIMARY KEY,
    customerID INT FOREIGN KEY REFERENCES customers(customerID),
    Date DATE,
    InteractionType VARCHAR(50),
    Description VARCHAR(255),
    ResolutionStatus VARCHAR(50), 
);

-- CREATING FEEDBACK TABLE
CREATE TABLE feedback (
    feedbackID INT PRIMARY KEY,
    customerID INT FOREIGN KEY REFERENCES customers(customerID),
    Date DATE,
    Score INT,
    Comments VARCHAR(255),
);

--INSERTING DATA INTO THE TABLES

-- INSERTING SAMPLE DATA IN CUSTOMER TABLE
INSERT INTO customers (customerID, FirstName, LastName, DateOfBirth, JoiningDate, Email)
VALUES
    (1, 'Aarav', 'Patel', '1992-03-15', '2010-05-20', 'aarav.p@gmail.com'),
    (2, 'Aisha', 'Sharma', '1988-06-25', '2012-07-10', 'aisha.sh@gmail.com'),
    (3, 'Arjun', 'Gupta', '1985-02-10', '2009-09-05', 'arjun.g@gmail.com'),
    (4, 'Ananya', 'Singh', '1992-11-20', '2015-03-15', 'ananya.s@gmail.com'),
    (5, 'Ishaan', 'Verma', '1987-04-30', '2011-11-25', 'ishaan.v@gmail.com'),
    (6, 'Khushi', 'Kumar', '1994-07-12', '2018-01-28', 'khushi.k@gmail.com'),
    (7, 'Riya', 'Reddy', '1983-09-05', '2007-08-10', 'riya.r@gmail.com'),
    (8, 'Vihaan', 'Yadav', '1991-03-18', '2013-06-20', 'vihaan.y@gmail.com'),
    (9, 'Saanvi', 'Malhotra', '1990-09-21', '2010-02-12', 'saanvi.m@gmail.com'),
    (10, 'Advik', 'Bose', '1989-01-05', '2014-05-30', 'advik.b@gmail.com'),
    (11, 'Anika', 'Chopra', '1986-07-02', '2008-04-17', 'anika.c@gmail.com'),
    (12, 'Kabir', 'Rai', '1993-12-11', '2016-10-22', 'kabir.r@gmail.com'),
    (13, 'Pari', 'Nair', '1984-05-08', '2017-09-08', 'pari.n@gmail.com'),
    (14, 'Rehan', 'Dutta', '1992-08-03', '2019-11-14', 'rehan.d@gmail.com'),
    (15, 'Shreya', 'Mukherjee', '1988-11-17', '2011-03-19', 'shreya.m@gmail.com'),
    (16, 'Vivaan', 'Joshi', '1983-04-26', '2009-08-07', 'vivaan.j@gmail.com'),
    (17, 'Zoya', 'Shah', '1995-02-28', '2018-12-31', 'zoya.s@gmail.com'),
    (18, 'Ansh', 'Gandhi', '1991-07-07', '2013-04-02', 'ansh.g@gmail.com'),
    (19, 'Ishika', 'Das', '1989-06-14', '2016-09-25', 'ishika.d@gmail.com'),
    (20, 'Kabir', 'Banerjee', '1987-10-09', '2010-11-16', 'kabir.b@gmail.com'),
    (21, 'Ria', 'Sen', '1993-03-24', '2015-08-05', 'ria.s@gmail.com'),
    (22, 'Shaurya', 'Roy', '1984-01-19', '2008-12-10', 'shaurya.r@gmail.com'),
    (23, 'Yashika', 'Mehta', '1986-06-28', '2012-06-23', 'yashika.m@gmail.com'),
    (24, 'Aayush', 'Sinha', '1990-08-07', '2017-10-11', 'aayush.s@gmail.com'),
    (25, 'Anvi', 'Kapoor', '1988-12-04', '2019-04-27', 'anvi.k@gmail.com'),
    (26, 'Dhruv', 'Sharma', '1994-10-31', '2011-07-14', 'dhruv.s@gmail.com'),
    (27, 'Ira', 'Patil', '1985-09-16', '2013-11-02', 'ira.p@gmail.com'),
    (28, 'Kabir', 'Naidu', '1992-11-23', '2015-12-18', 'kabir.n@gmail.com'),
    (29, 'Parth', 'Shah', '1987-07-30', '2009-06-29', 'parth.s@gmail.com'),
    (30, 'Riyaan', 'Singh', '1991-05-05', '2014-09-24', 'riyaan.s@gmail.com'),
    (31, 'Vidhi', 'Rao', '1986-03-12', '2016-08-03', 'vidhi.r@gmail.com'),
    (32, 'Zara', 'Mishra', '1993-04-20', '2018-02-19', 'zara.m@gmail.com');

-- INSERTING SAMPLE DATA IN ACCOUNTS TABLE
INSERT INTO accounts (accountID, customerID, AccountType, Balance, OpeningDate, Status)
VALUES
    (101, 1, 'Savings', 50000.00, '2010-05-20', 'Active'),
    (102, 2, 'Checking', 75000.00, '2012-07-10', 'Active'),
    (103, 3, 'Savings', 100000.00, '2009-09-05', 'Active'),
    (104, 4, 'Checking', 60000.00, '2015-03-15', 'Active'),
    (105, 5, 'Savings', 90000.00, '2011-11-25', 'Active'),
    (106, 6, 'Checking', 120000.00, '2018-01-28', 'Active'),
    (107, 7, 'Savings', 80000.00, '2007-08-10', 'Active'),
    (108, 8, 'Checking', 95000.00, '2013-06-20', 'Active'),
    (109, 9, 'Savings', 55000.00, '2010-02-12', 'Active'),
    (110, 10, 'Checking', 72000.00, '2014-05-30', 'Active'),
    (111, 11, 'Savings', 97000.00, '2008-04-17', 'Active'),
    (112, 12, 'Checking', 63000.00, '2016-10-22', 'Active'),
    (113, 13, 'Savings', 85000.00, '2017-09-08', 'Active'),
    (114, 14, 'Checking', 110000.00, '2019-11-14', 'Active'),
    (115, 15, 'Savings', 60000.00, '2011-03-19', 'Active'),
    (116, 16, 'Checking', 80000.00, '2009-08-07', 'Active'),
    (117, 17, 'Savings', 105000.00, '2018-12-31', 'Active'),
    (118, 18, 'Checking', 92000.00, '2013-04-02', 'Active'),
    (119, 19, 'Savings', 75000.00, '2016-09-25', 'Active'),
    (120, 20, 'Checking', 80000.00, '2010-11-16', 'Active'),
    (121, 21, 'Savings', 92000.00, '2015-08-05', 'Active'),
    (122, 22, 'Checking', 84000.00, '2008-12-10', 'Active'),
    (123, 23, 'Savings', 78000.00, '2012-06-23', 'Active'),
    (124, 24, 'Checking', 98000.00, '2017-10-11', 'Active'),
    (125, 25, 'Savings', 70000.00, '2019-04-27', 'Active'),
    (126, 26, 'Checking', 87000.00, '2011-07-14', 'Active'),
    (127, 27, 'Savings', 89000.00, '2013-11-02', 'Active'),
    (128, 28, 'Checking', 92000.00, '2015-12-18', 'Active'),
    (129, 29, 'Savings', 62000.00, '2009-06-29', 'Active'),
    (130, 30, 'Checking', 95000.00, '2014-09-24', 'Active'),
    (131, 31, 'Savings', 85000.00, '2016-08-03', 'Active'),
    (132, 32, 'Checking', 78000.00, '2018-02-19', 'Active');

-- INSERTING SAMPLE DATA IN TRANSACTION TABLE
INSERT INTO transactions (transactionID, accountID, Date, Amount, TransactionType, Description)
VALUES
    (201, 101, '2024-02-12', 5000.00, 'Deposit', 'Salary deposit'),
    (202, 102, '2024-02-11', 2500.00, 'Deposit', 'Bonus deposit'),
    (203, 103, '2024-02-10', 3000.00, 'Withdrawal', 'Shopping expenses'),
    (204, 104, '2024-02-09', 1500.00, 'Withdrawal', 'Grocery shopping'),
    (205, 105, '2024-02-08', 2000.00, 'Deposit', 'Savings deposit'),
    (206, 106, '2024-02-07', 4000.00, 'Deposit', 'Investment returns'),
    (207, 107, '2024-02-06', 1000.00, 'Withdrawal', 'Utility bill payment'),
    (208, 108, '2024-02-05', 3500.00, 'Withdrawal', 'Dining out'),
    (209, 109, '2024-02-04', 2200.00, 'Deposit', 'Bonus deposit'),
    (210, 110, '2024-02-03', 2800.00, 'Deposit', 'Salary deposit'),
    (211, 111, '2024-02-02', 2600.00, 'Withdrawal', 'Shopping expenses'),
    (212, 112, '2024-02-01', 1700.00, 'Withdrawal', 'Grocery shopping'),
    (213, 113, '2024-01-31', 2100.00, 'Deposit', 'Savings deposit'),
    (214, 114, '2024-01-30', 3800.00, 'Deposit', 'Investment returns'),
    (215, 115, '2024-01-29', 1500.00, 'Withdrawal', 'Utility bill payment'),
    (216, 116, '2024-01-28', 2900.00, 'Withdrawal', 'Dining out'),
    (217, 117, '2024-01-27', 2300.00, 'Deposit', 'Bonus deposit'),
    (218, 118, '2024-01-26', 2700.00, 'Deposit', 'Salary deposit'),
    (219, 119, '2024-01-25', 2500.00, 'Withdrawal', 'Shopping expenses'),
    (220, 120, '2024-01-24', 1800.00, 'Withdrawal', 'Grocery shopping'),
    (221, 121, '2024-01-23', 2000.00, 'Deposit', 'Savings deposit'),
    (222, 122, '2024-01-22', 3500.00, 'Deposit', 'Investment returns'),
    (223, 123, '2024-01-21', 1200.00, 'Withdrawal', 'Utility bill payment'),
    (224, 124, '2024-01-20', 3100.00, 'Withdrawal', 'Dining out'),
    (225, 125, '2024-01-19', 2400.00, 'Deposit', 'Bonus deposit'),
    (226, 126, '2024-01-18', 2600.00, 'Deposit', 'Salary deposit'),
    (227, 127, '2024-01-17', 2900.00, 'Withdrawal', 'Shopping expenses'),
    (228, 128, '2024-01-16', 1700.00, 'Withdrawal', 'Grocery shopping'),
    (229, 129, '2024-01-15', 2200.00, 'Deposit', 'Savings deposit'),
    (230, 130, '2024-01-14', 3800.00, 'Deposit', 'Investment returns'),
    (231, 131, '2024-01-13', 1500.00, 'Withdrawal', 'Utility bill payment'),
    (232, 132, '2024-01-12', 2900.00, 'Withdrawal', 'Dining out');

-- INSERTING SAMPLE DATA IN CUSTOMER SERVICE TABLE
INSERT INTO customerservice (interactionID, customerID, Date, InteractionType, Description, ResolutionStatus)
VALUES
    (301, 1, '2024-02-12', 'Complaint', 'Issue with online banking', 'Resolved'),
    (302, 2, '2024-02-11', 'Query', 'Balance discrepancy', 'Pending'),
    (303, 3, '2024-02-10', 'Complaint', 'Credit card declined', 'Resolved'),
    (304, 4, '2024-02-09', 'Query', 'Transaction not reflecting', 'Resolved'),
    (305, 5, '2024-02-08', 'Complaint', 'Incorrect account statement', 'Pending'),
    (306, 6, '2024-02-07', 'Query', 'Lost debit card', 'Pending'),
    (307, 7, '2024-02-06', 'Complaint', 'Unauthorized transaction', 'Resolved'),
    (308, 8, '2024-02-05', 'Query', 'Forgot internet banking password', 'Resolved'),
    (309, 9, '2024-02-04', 'Complaint', 'Transaction error', 'Pending'),
    (310, 10, '2024-02-03', 'Query', 'Loan application status', 'Resolved'),
    (311, 11, '2024-02-02', 'Complaint', 'ATM cash withdrawal issue', 'Resolved'),
    (312, 12, '2024-02-01', 'Query', 'Credit card limit increase', 'Resolved'),
    (313, 13, '2024-01-31', 'Complaint', 'Online payment failure', 'Pending'),
    (314, 14, '2024-01-30', 'Query', 'Account statement request', 'Resolved'),
    (315, 15, '2024-01-29', 'Complaint', 'Fraudulent activity', 'Resolved'),
    (316, 16, '2024-01-28', 'Query', 'PIN reset', 'Resolved'),
    (317, 17, '2024-01-27', 'Complaint', 'ATM card not received', 'Resolved'),
    (318, 18, '2024-01-26', 'Query', 'Interest rate clarification', 'Resolved'),
    (319, 19, '2024-01-25', 'Complaint', 'Delayed transaction', 'Resolved'),
    (320, 20, '2024-01-24', 'Query', 'Account closure process', 'Pending'),
    (321, 21, '2024-01-23', 'Complaint', 'Bank statement error', 'Resolved'),
    (322, 22, '2024-01-22', 'Query', 'Cheque book request', 'Resolved'),
    (323, 23, '2024-01-21', 'Complaint', 'Unauthorized deduction', 'Resolved'),
    (324, 24, '2024-01-20', 'Query', 'Loan EMI calculation', 'Resolved'),
    (325, 9, '2024-01-04', 'Query', 'Account balance discrepancy', 'Resolved'),
    (326, 10, '2024-01-03', 'Complaint', 'Unauthorized transaction', 'Resolved'),
    (327, 11, '2024-01-02', 'Query', 'Loan application status', 'Pending'),
    (328, 12, '2024-01-01', 'Complaint', 'Issue with credit card billing', 'Resolved'),
    (329, 13, '2023-12-31', 'Query', 'Transaction not showing in statement', 'Resolved'),
    (330, 14, '2023-12-30', 'Complaint', 'Online banking login issue', 'Resolved'),
    (331, 15, '2023-12-29', 'Query', 'Interest rate inquiry', 'Resolved'),
    (332, 16, '2023-12-28', 'Complaint', 'Unusual account activity', 'Resolved'),
    (333, 17, '2023-12-27', 'Query', 'ATM withdrawal limit', 'Resolved'),
    (334, 18, '2023-12-26', 'Complaint', 'Delay in fund transfer', 'Pending');


-- INSERTING SAMPLE DATA IN FEEDBACK TABLE
INSERT INTO feedback (feedbackID, customerID, Date, Score, Comments)
VALUES
    (401, 1, '2024-02-12', 4, 'Prompt resolution'),
    (402, 2, '2024-02-11', 3, 'Satisfactory response'),
    (403, 3, '2024-02-10', 5, 'Excellent service'),
    (404, 4, '2024-02-09', 2, 'Delayed resolution'),
    (405, 5, '2024-02-08', 4, 'Helpful staff'),
    (406, 6, '2024-02-07', 3, 'Average response time'),
    (407, 7, '2024-02-06', 5, 'Very satisfied'),
    (408, 8, '2024-02-05', 4, 'Resolved my issue quickly'),
    (409, 9, '2024-02-04', 3, 'Needs improvement in response time'),
    (410, 10, '2024-02-03', 4, 'Clear explanation provided'),
    (411, 11, '2024-02-02', 2, 'Issue took too long to resolve'),
    (412, 12, '2024-02-01', 5, 'Quick and efficient service'),
    (413, 13, '2024-01-31', 3, 'Repeated failure in online payments'),
    (414, 14, '2024-01-30', 4, 'Received statement promptly'),
    (415, 15, '2024-01-29', 5, 'Fraud detected and resolved immediately'),
    (416, 16, '2024-01-28', 4, 'PIN reset successfully'),
    (417, 17, '2024-01-27', 3, 'Delayed delivery of ATM card'),
    (418, 18, '2024-01-26', 5, 'Clear explanation provided'),
    (419, 19, '2024-01-25', 4, 'Issue resolved eventually'),
    (420, 20, '2024-01-24', 2, 'Slow response in account closure process'),
    (421, 21, '2024-01-23', 5, 'Bank statement error rectified'),
    (422, 22, '2024-01-22', 4, 'Cheque book received on time'),
    (423, 23, '2024-01-21', 5, 'Unauthorized deduction refunded promptly'),
    (424, 24, '2024-01-20', 3, 'Confusing loan EMI calculation resolved'),
    (425, 25, '2024-01-19', 4, 'Resolved my query efficiently'),
    (426, 26, '2024-01-18', 3, 'Response time could be improved'),
    (427, 27, '2024-01-17', 5, 'Very satisfied with the service'),
    (428, 28, '2024-01-16', 4, 'Helpful customer support'),
    (429, 29, '2024-01-15', 2, 'Unresolved issue'),
    (430, 30, '2024-01-14', 4, 'Quick resolution'),
    (431, 31, '2024-01-13', 3, 'Average service experience'),
    (432, 32, '2024-01-12', 5, 'Resolved my complaint promptly'),
    (433, 1, '2024-01-11', 4, 'Responsive customer support'),
    (434, 2, '2024-01-10', 3, 'Issue resolved after multiple follow-ups');


--WRITE A QUERY TO SEGMENT CUSTOMERS BASED ON THEIR TRANSACTION VOLUMES AND ACCOUNT TYPES
SELECT t1.accountType,SUM(t2.amount) AS Transaction_volume
FROM accounts AS t1
INNER JOIN transactions AS t2
ON t1.accountID = t2.accountID
GROUP BY accountType;

--CREATE A QUERY TO FIND CUSTOMERS WITH TRANSACTION VOLUMES ABOVE A CERTAIN THRESHOLD IN THE PAST YEAR.
--WHERE THE THRESHOLD IS MAX AMOUNT = 2000/-

SELECT t2.FirstName,t2.LastName,t3.Amount AS Transaction_voulume,YEAR(t3.Date) AS Past_year_transaction
FROM accounts AS t1
INNER JOIN customers AS t2
ON t1.customerID = t2.customerID
INNER JOIN transactions AS t3
ON t1.accountID  = t3.accountID
WHERE YEAR(t3.Date)> DATEADD(YEAR,-1,GETDATE()) AND Amount>2000;

--WRITE AN SQL QUERY TO ANALYZE THE MONTHLY TRANSACTION PATTERNS FOR EACH CUSTOMER.
SELECT t2.FirstName,t2.LastName,t3.Amount,t3.Date,t3.TransactionType,t3.Description
FROM accounts AS t1
INNER JOIN customers AS t2
ON t1.customerID = t2.customerID
INNER JOIN transactions AS t3
ON t1.accountID  = t3.accountID
WHERE t2.customerID = 1;

--WRITE A QUERY TO FIND THE MOST COMMON TYPES OF CUSTOMER SERVICE REQUESTS
SELECT InteractionType , COUNT(InteractionType) AS Total_Interaction
FROM customerservice
GROUP BY InteractionType;

--CREATE A TRIGGER THAT AUTOMATICALLY UPDATES CUSTOMER ACCOUNT STATUS BASED ON CERTAIN TRANSACTION CRITERIA
GO
CREATE OR ALTER TRIGGER UpdateAccountStatus
ON transactions
AFTER INSERT, UPDATE
AS
BEGIN
    -- UPDATE ACCOUNT STATUS BASED ON TRANSACTION CRITERIA
    UPDATE accounts
    SET Status =
        CASE
            WHEN (SELECT SUM(Amount) FROM inserted WHERE customerID = accounts.customerID) > 3000 THEN 'Gold'
            WHEN (SELECT SUM(Amount) FROM inserted WHERE customerID = accounts.customerID) > 2000 THEN 'Silver'
            ELSE 'Bronze'
        END
    FROM accounts
END;

/*WRITE A STORED PROCEDURE TO DETERMINE LOAN ELIGIBILITY FOR CUSTOMERS BASED ON 
THEIR TRANSACTION HISTORY AND ACCOUNT BALANCES */

CREATE OR ALTER PROCEDURE Check_Loan_Eligibility
   ( @accountID INT)
AS
BEGIN
   
    DECLARE @Total_TransactionAmount DECIMAL(10, 2);
    DECLARE @AccBalance DECIMAL(10, 2);
    DECLARE @Eligibility_Status VARCHAR(50);

    --CALCULATE TOTAL TRANSACTION AMOUNT FOR THE CUSTOMER
    SELECT @Total_TransactionAmount = SUM(Amount)
    FROM transactions
    WHERE accountID = @accountID;

    --GET ACCOUNT BALANCE FOR THE CUSTOMER
    SELECT @AccBalance = Balance
    FROM accounts
    WHERE accountID = @accountID;

    -- DETERMINE LOAN ELIGIBILITY BASED ON CRITERIA
    IF @Total_TransactionAmount > 2000 AND @AccBalance > 30000
    BEGIN
        SET @Eligibility_Status = 'Eligible';
    END
    ELSE
    BEGIN
        SET @Eligibility_Status = 'Not Eligible';
    END

    -- RETURN LOAN ELIGIBILITY STATUS
    SELECT @Eligibility_Status AS LoanEligibility;
END;

EXEC Check_Loan_Eligibility @accountID = 101;/* ELIGIBLE ACCOUNT ID */
EXEC Check_Loan_Eligibility @accountID = 104;/* NOT ELIGIBLE ACCOUNT ID */

-- ACCOUNTS WHICH SATISFY THE LOAN CRITERIA
SELECT accountID FROM accounts 
WHERE Balance>30000 AND accountID IN (SELECT accountID FROM transactions WHERE Amount>2000);

--USE WINDOW FUNCTIONS TO ANALYZE CUSTOMER RETENTION OVER THE YEARS
SELECT
    YEAR(JoiningDate) AS Joining_Year,
    COUNT(DISTINCT customerID) AS Total__Customers,
    LAG(COUNT(DISTINCT customerID)) OVER (ORDER BY YEAR(JoiningDate)) AS Previous_Year_Customers,
    ROUND((COUNT(DISTINCT customerID) * 100.0) / LAG(COUNT(DISTINCT customerID)) OVER (ORDER BY YEAR(JoiningDate)),2) AS Retention_Rate

FROM customers
GROUP BY YEAR(JoiningDate);

--CREATE AN ADVANCED QUERY TO FLAG POTENTIALLY FRAUDULENT TRANSACTIONS BASED ON UNUSUAL PATTERNS.
SELECT * FROM(
SELECT 
    transactionID,
    accountID,
    Date,
    Amount,
    CASE
        WHEN Amount > 3000 THEN 'HighAmount'
        WHEN Amount < 0 THEN 'NegativeAmount'
        ELSE NULL
    END AS Flag_Reason
FROM
    transactions) AS FLAG
WHERE Flag_Reason IS NOT NULL;

--WRITE A QUERY TO CALCULATE THE AVERAGE CUSTOMER SATISFACTION SCORE FROM FEEDBACK DATA
SELECT AVG(Score) AS Avg_customer_satisfactionScore FROM feedback; 

--CREATE A USER-DEFINED FUNCTION TO CALCULATE INTEREST FOR DIFFERENT ACCOUNT TYPES
GO
CREATE OR ALTER FUNCTION Calculate_Interest(
@AccountType VARCHAR(50)
)
RETURNS DECIMAL(18, 2)
AS
BEGIN
DECLARE @Interest_rate DECIMAL(18, 2);
SET @Interest_rate = 
			CASE
			WHEN @AccountType = 'Savings'  THEN  0.02 -- 2% INTEREST RATE FOR SAVINGS ACCOUNT
            WHEN @AccountType = 'Checking' THEN  0.01-- 1% INTEREST RATE FOR SAVINGS ACCOUNT
            ELSE 0 -- NO INTEREST FOR OTHER ACCOUNT TYPES
			END
			RETURN @Interest_rate
END

--INTEREST RATE FOR THE CUSTOMER BASED ON ACCOUNT TYPE	
SELECT 
accountID,
accountType,
Balance,
Interest_rate = Balance + ( Balance * dbo.Calculate_Interest(AccountType)) 
FROM accounts

--DEVELOP A USER-DEFINED FUNCTION TO ASSESS CREDIT SCORES BASED ON CUSTOMER TRANSACTION HISTORY AND ACCOUNT BALANCES
CREATE OR ALTER FUNCTION AssessCreditScore
(
    @CustomerID INT
)
RETURNS INT
AS
BEGIN
    DECLARE @CreditScore INT;

   -- CALCULATE CREDIT SCORE BASED ON AVERAGE ACCOUNT BALANCE
    SELECT @CreditScore = 
        CASE 
            WHEN AVG(Balance) > 10000 THEN 800
            WHEN AVG(Balance) > 5000 THEN 700
            ELSE 600
        END
    FROM 
        accounts
    WHERE 
        CustomerID = @CustomerID;

    RETURN @CreditScore;
END;


--WRITE A SQL TRANSACTION SCRIPT THAT ROLLS BACK A TRANSACTION IF AN ATTEMPT TO UPDATE AN ACCOUNT BALANCE FAILS.
BEGIN TRANSACTION;

UPDATE accounts
SET Balance = Balance - 100 -- HERE WE ARE DEBITING A AMOUNT OF 100/-
WHERE accountID = 101; -- ACCOUNT ID OF THE USER

IF @@ROWCOUNT = 0
BEGIN
    ROLLBACK TRANSACTION;
    PRINT 'Failed to update account balance. Transaction rolled back.';
END
ELSE
BEGIN
    COMMIT TRANSACTION;
    PRINT 'Account balance updated successfully.';
END

SELECT * FROM accounts;

/*IMPLEMENT A SEQUENCE TO AUTOMATICALLY GENERATE UNIQUE TRANSACTION ID 
VALUES FOR NEW ENTRIES IN THE TRANSACTIONS TABLE.*/

-- ALTER THE TABLE TO ADD AN IDENTITY COLUMN
ALTER TABLE transactions
ADD transactionID INT IDENTITY(1,1) PRIMARY KEY;

--DEVELOP A TRIGGER ON THE TRANSACTIONS TABLE THAT PREVENTS AN ACCOUNT BALANCE FROM GOING BELOW ZERO
CREATE OR ALTER TRIGGER PreventNegativeBalance
ON transactions
AFTER INSERT
AS
BEGIN
    -- CHECK FOR NEGATIVE ACCOUNT BALANCES AFTER THE NEW TRANSACTION
    IF EXISTS (
        SELECT 1
        FROM accounts i
        JOIN Transactions t 
		ON i.accountID = t.accountID
        WHERE i.Balance + t.Amount < 0
    )
    BEGIN
       -- ROLLBACK THE TRANSACTION IF A NEGATIVE BALANCE OCCURS
        ROLLBACK TRANSACTION;
        PRINT 'Transaction rollback: Negative balance prevented.';
    END
END;

/*WINDOW FUNCTION FOR RUNNING ACCOUNT BALANCE: USE A WINDOW FUNCTION TO CALCULATE A
RUNNING TOTAL OF EACH ACCOUNT'S BALANCE OVER TIME.*/

SELECT
    customerID,
    accountID,
    OpeningDate,
    Balance,
    SUM(Balance) OVER (PARTITION BY accountID ORDER BY OpeningDate) AS Running_Balance
FROM
    accounts;



