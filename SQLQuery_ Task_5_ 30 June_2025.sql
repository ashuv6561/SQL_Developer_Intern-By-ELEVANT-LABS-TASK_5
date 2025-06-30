select * from Customer

drop table Orders

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name TEXT,
    City TEXT
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    Product TEXT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
)

INSERT INTO Customers VALUES (1, 'Alice', 'Delhi'),
                             (2, 'Bob', 'Mumbai'),
                             (3, 'Charlie', 'Chennai');

INSERT INTO Customers VALUES (4, 'Daisy', 'Kolkata')



--INNER JOIN (only matching rows)

SELECT Customers.Name, Orders.Product
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID


-- LEFT JOIN (all from left + matches from right

SELECT Customers.Name, Orders.Product
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID

-- RIGHT JOIN (all from right + matches from left) 

SELECT Customers.Name, Orders.Product
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID

--Full outer join
SELECT Customers.Name, Orders.Product
FROM Customers
FULL OUTER JOIN Orders ON Customers.CustomerID = Orders.CustomerID


select *  from Customers