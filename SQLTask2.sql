CREATE DATABASE MiniCompanyDB;
GO
USE MiniCompanyDB;
GO

/* 2. 1000-dən çox ümumi məbləği olan sifarişləri edən müştəriləri tap.

Məqsəd: yüksək dəyərli müştəriləri analiz etmək.

Hint: JOIN + WHERE total_amount > 1000. */

/* Task 2 - İlk cəhd */

select c.full_name, o.total_amount
from customers c
join orders o 
on o.customer_id = c.id
where total_amount > 1000;