-- Step 1: Create a database for the bookshop
CREATE DATABASE Bookshop;

-- Step 2: Use the Bookshop database
USE Bookshop;

-- Step 3: Create a table for books
CREATE TABLE Books (
    BookID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    Author VARCHAR(255) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    Category VARCHAR(100) NOT NULL,
    Stock INT NOT NULL
);

-- Step 4: Insert some dummy data into the Books table
INSERT INTO Books (Title, Author, Price, Category, Stock) VALUES
('The Great Gatsby', 'F. Scott Fitzgerald', 10.99, 'Fiction', 10),
('To Kill a Mockingbird', 'Harper Lee', 12.99, 'Fiction', 15),
('1984', 'George Orwell', 8.99, 'Science Fiction', 20),
('Pride and Prejudice', 'Jane Austen', 7.99, 'Romance', 25),
('The Catcher in the Rye', 'J.D. Salinger', 9.99, 'Fiction', 5);

-- Step 5: Create a table for categories
CREATE TABLE Categories (
    CategoryID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL
);

-- Step 6: Insert some dummy data into the Categories table
INSERT INTO Categories (Name) VALUES
('Fiction'),
('Non-Fiction'),
('Children'),
('Mystery'),
('Fantasy'),
('Science');

-- Step 7: Create a table for customers
CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    Phone VARCHAR(15),
    Address TEXT
);

-- Step 8: Insert some dummy data into the Customers table
INSERT INTO Customers (Name, Email, Phone, Address) VALUES
('John Doe', 'johndoe@example.com', '123-456-7890', '123 Main St, Anytown, USA'),
('Jane Smith', 'janesmith@example.com', '234-567-8901', '456 Elm St, Othertown, USA');

-- Step 9: Create a table for orders
CREATE TABLE Orders (
    OrderID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT NOT NULL,
    OrderDate DATE NOT NULL,
    TotalAmount DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Step 10: Insert some dummy data into the Orders table
INSERT INTO Orders (CustomerID, OrderDate, TotalAmount) VALUES
(1, '2025-01-01', 30.97),
(2, '2025-01-02', 15.98);

-- Step 11: Create a table for order details
CREATE TABLE OrderDetails (
    OrderDetailID INT AUTO_INCREMENT PRIMARY KEY,
    OrderID INT NOT NULL,
    BookID INT NOT NULL,
    Quantity INT NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);

-- Step 12: Insert some dummy data into the OrderDetails table
INSERT INTO OrderDetails (OrderID, BookID, Quantity, Price) VALUES
(1, 1, 2, 10.99),
(1, 2, 1, 12.99),
(2, 3, 1, 8.99);
