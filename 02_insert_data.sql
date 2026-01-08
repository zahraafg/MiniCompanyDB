CREATE DATABASE MiniCompanyDB;
GO
USE MiniCompanyDB;
GO

--employees
INSERT INTO employees (name, surname, position, salary, hire_date)
VALUES
('Ali', 'Huseynov', 'Backend Developer', 2500, '2023-03-01'),
('Leyla', 'Mammadova', 'HR Manager', 1800, '2022-07-15');


--customers
INSERT INTO customers (full_name, phone, email)
VALUES
('Zahra Yaghoubi', '0773015914', 'zahra@mail.com'),
('Fatema Yaghoubi', '0773015913', 'fatima@mail.com');


--products
INSERT INTO products (product_name, price, stock)
VALUES
('Laptop', 1500, 10),
('Mouse', 25, 100),
('Keyboard', 45, 50);


--orders
INSERT INTO orders (customer_id, total_amount)
VALUES
(1, 1550),
(2, 70);


--order_items
INSERT INTO order_items (order_id, product_id, quantity, price)
VALUES
(1, 1, 1, 1500),
(1, 2, 2, 25),
(2, 3, 1, 45),
(2, 2, 1, 25);
