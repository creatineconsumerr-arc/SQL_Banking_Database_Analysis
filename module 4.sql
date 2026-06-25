# DQL DEMONSTRATON #
USE BankingDB ;
SELECT * FROM Customers ;
SELECT * FROM Accounts ;
SELECT * FROM Branches ;
SELECT * FROM Loans ;
SELECT * FROM AccountBranches ;
SELECT * FROM Transactions ;
CREATE DATABASE SQL_PRACTICE ;
USE SQL_PRACTICE ;
SELECT * FROM Accounts 
where Accounttype ="savings";
SELECT *
FROM Accounts
WHERE Balance > 25000;
SELECT *
FROM Transactions
WHERE Amount between 5000 AND 20000;
SELECT * FROM Transactions 
where amount>=5000
 and amount<=20000 ;
 
SELECT *
FROM Customers
WHERE CustomerID IN (101,102,103) ;

SELECT * FROM CUSTOMERS 
WHERE FIRSTNAME LIKE 'R%' ;

SELECT * FROM Customers 
ORDER BY FIRSTNAME ASC;

SELECT * FROM Accounts 
ORDER BY BALANCE DESC ;

SELECT DISTINCT AccountType
FROM Accounts;

SELECT * FROM ACCOUNTS 
ORDER BY BALANCE DESC 
limit 1 OFFSET 2;

SELECT * FROM TRANSACTIONS
LIMIT 5 OFFSET 2 ;

SELECT * FROM TRANSACTIONS ; 

USE BankingDB;

INSERT INTO CUSTOMERS(CustomerID , Firstname , Lastname , Email ,Accountcreationdate,dateofbirth)
VALUES ( 109 ,'pranit','tarade','rpnitptarade@gmal.com','2-04-26','2-4-26');

SELECT AccountID,
       Balance,
       CASE
           WHEN Balance >= 50000 THEN 'Premium Account'
           WHEN Balance >= 25000 THEN 'Standard Account'
           ELSE 'Basic Account'
       END AS AccountCategory
FROM Accounts;
SELECT AccountID,
       Balance,
       RANK() OVER (ORDER BY Balance DESC) AS BalanceRank
FROM Accounts;

SELECT TransactionID,
       Amount,
       SUM(Amount) OVER (ORDER BY TransactionDate) AS runningtotal
FROM Transactions;

SELECT TransactionID,
       Amount,
       AVG(Amount) OVER () AS AverageTransaction
FROM Transactions;