CREATE DATABASE MiniCompanyDB;
GO
USE MiniCompanyDB;
GO

--employees
CREATE TABLE employees (
id INT IDENTITY PRIMARY KEY,
name NVARCHAR(50) NOT NULL,
surname NVARCHAR(50) NOT NULL,
position NVARCHAR(50),
salary DECIMAL(10,2),
hire_date DATE
);


--customers
CREATE TABLE customers (
id INT IDENTITY PRIMARY KEY,
full_name NVARCHAR(100) NOT NULL,
phone NVARCHAR(20),
email NVARCHAR(100),
created_at DATETIME DEFAULT GETDATE()
);


--products
CREATE TABLE products (
id INT IDENTITY PRIMARY KEY,
product_name NVARCHAR(100) NOT NULL,
price DECIMAL(10,2) NOT NULL,
stock INT NOT NULL
);


--orders
CREATE TABLE orders (
id INT IDENTITY PRIMARY KEY,
customer_id INT NOT NULL,
order_date DATETIME DEFAULT GETDATE(),
total_amount DECIMAL(10,2),
FOREIGN KEY (customer_id) REFERENCES customers(id)
);


--order_items
CREATE TABLE order_items (
id INT IDENTITY PRIMARY KEY,
order_id INT NOT NULL,
product_id INT NOT NULL,
quantity INT NOT NULL,
price DECIMAL(10,2) NOT NULL,
FOREIGN KEY (order_id) REFERENCES orders(id),
FOREIGN KEY (product_id) REFERENCES products(id)
);

