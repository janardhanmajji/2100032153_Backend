CREATE DATABASE retailstore;

USE retailstore;

CREATE TABLE Customers
(
	CustomerID int not null,
    FirstName varchar(255) not null,
    LastName varchar(255) not null,
    Email varchar(255) not null,
    DateOfBirth DATE not null,
    PRIMARY KEY (CustomerID)
);

INSERT INTO Customers(CustomerId, FirstName, LastName, Email, DateOfBirth)
VALUES (1, 'John', 'Doe', 'john.doe@example.com', '1985-01-15'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '1990-06-20');

CREATE TABLE Products
(
	ProductID int not null,
    ProductName varchar(255) not null,
    Price int not null,
    PRIMARY KEY (ProductID)
);

INSERT INTO Products(ProductID, ProductName, Price)
VALUES (1, 'Laptop', 1000),
(2, 'Smartphone', 600),
(3, 'Headphones', 100);


CREATE TABLE Orders
(
	OrderId int not null,
    CustomerID int not null,
    OrderDate DATE not null,
    PRIMARY KEY (OrderId),
    FOREIGN KEY (CustomerID)  REFERENCES Customers(CustomerID)
);


INSERT INTO Orders(OrderId, CustomerID, OrderDate)
VALUES (1, 1, '2023-01-10'),
(2, 2, '2023-01-12');


CREATE TABLE OrderItems
(
	OrderItemID int not null,
    OrderId int not null,
    ProductID int not null,
    Quantity int not null,
    PRIMARY KEY (OrderItemID),
    FOREIGN KEY (OrderId)  REFERENCES Orders(OrderId),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

INSERT INTO OrderItems(OrderItemID, OrderId, ProductID, Quantity)
VALUES(1,1,1,1),
(2,1,3,2),
(3,2,2,1),
(4,2,3,1);