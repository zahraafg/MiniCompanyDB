CREATE DATABASE MiniCompanyDB;
GO
USE MiniCompanyDB;
GO

/* 1. Hər bir müştərinin ən son sifariş tarixini tap və sifarişin ümumi məbləğini göstər.

Məqsəd: müştərinin son sifarişini görmək.

Hint: JOIN + MAX(order_date) və ya subquery istifadə oluna bilər. */

/* Task 1 - İlk cəhd */

select c.full_name, o.order_date, o.total_amount
from customers c
join orders o 
on c.id = o.customer_id
where o.order_date = (
	select MAX(order_date) 
	from orders
	where c.id = o.customer_id
	);