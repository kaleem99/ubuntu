Creating database called Umuzi

CREATE DATABASE Umuzi;

*******************************************************************************************

Creating Tables

CREATE TABLE Customers (
      CustomerID serial PRIMARY KEY,
      FirstName varchar(50) NOT NULL,
      LastName varchar(50) NOT NULL,
      Gender varchar(50) NOT NULL,
      Address varchar(200) NOT NULL,
      Phone Numeric(10) NOT NULL,
      Email varchar(100) NOT NULL,
      City varchar(20) NOT NULL,
      Country varchar(50) NOT NULL
);

CREATE TABLE Employees (
      EmployeesID serial PRIMARY KEY,
      FirstName varchar(50),
      LastName varchar(50),
      Email varchar(100),
      JobTitle varchar(20)
)

CREATE TABLE Orders (
      OrderID serial PRIMARY KEY,
      ProductID serial NOT NULL,
      PaymentID serial NOT NULL,
      FulfilledByEmployeeID serial NOT NULL,
      DateRequired DATE NOT NULL,
      DateShipped DATE,
      Status varchar(20),
      FOREIGN KEY(ProductID) REFERENCES Products(ProductID),
      FOREIGN KEY(PaymentID) REFERENCES Payments(PaymentID),
      FOREIGN KEY(FulfilledByEmployeeID) REFERENCES Employees(EmployeesID)
)

CREATE TABLE Products (
      ProductID serial PRIMARY KEY,
      ProductName varchar(100),
      Description varchar(300),
      BuyPrice Numeric(10 ,2)
)

CREATE TABLE Payments (
      CustomerID serial,
      PaymentID serial PRIMARY KEY NOT NULL,
      PaymentDate DATE NOT NULL,
      Amount Numeric(10, 2) NOT NULL,
      FOREIGN KEY(CustomerID) REFERENCES Customers(CustomerID)
)

*******************************************************************************************

Inserting Values IN Database;

INSERT INTO Customers (
      FirstName, LastName, Gender, Address, Phone, Email, City, Country
)
VALUES('Charl', 'Muller', 'Mal', '290A Dorset Ecke', 4856872553, 'Charl.muller@yahoo.com', 
'Berlin', 'Germany');


INSERT INTO Employees (
      FirstName, LastName, Email, JobTitle
)
VALUES('Kani', 'Matthew', 'mat@gmail.com', 'Manager');


INSERT INTO Products (
      ProductName, Description, BuyPrice
)
VALUES('Harley Davidson Chopper', 'This replica features working kickstand, front suspension, gear-shift lever',
R150, 75);


INSERT INTO Payments (
      PaymentDate, Amount
)
VALUES(01-09-2018, 150.75);


INSERT INTO Orders (
      ProductID, PaymentID, FulfilledByEmployeeID, DateRequired, Status
)
VALUES(3, 3, 3, '06-09-2018', ' Not shipped');


*******************************************************************************************


Part 2: Querying a database

1. SELECT * FROM Customers;

2. SELECT FirstName FROM Customers;

3. SELECT FirstName FROM Customers
   WHERE CustomerID = 1;

4. Update Customers
   SET FirstName='Lerato',
   LastName='Mabitsa'
   WHERE CustomerID = 1;

5. DELETE FROM Customers
   WHERE CustomerID = 2;

6. SELECT COUNT(DISTINCT Status)
   FROM Orders;

7. SELECT MAX(Amount)
   FROM Payments;

8. SELECT * 
   FROM Customers
   ORDER BY Country;

9. SELECT * 
   FROM products
   WHERE buyprice BETWEEN 100 AND 600;

10. SELECT * 
    FROM Customers
    Where Country = 'Germany'
    AND City = 'Berlin';

11. SELECT * 
    FROM Customers
    Where City = 'Cape Town'
    OR City = 'Durban';

12. SELECT * 
    FROM Products
    Where Buyprice > 500;

13. SELECT SUM(amount)
    FROM Payments;

14. SELECT COUNT(Dateshipped)
    FROM Orders;

15. 

16.

17.
