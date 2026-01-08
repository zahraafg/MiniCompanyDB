CREATE DATABASE MiniCompanyDB;
GO
USE MiniCompanyDB;
GO

/* 4. Hər bir müştərinin orta sifariş məbləğini tap və sırala, ən çox ödəyən müştəri yuxarıda olsun.

Məqsəd: müştəri dəyərləndirməsi.

Hint: AVG(total_amount) + GROUP BY + ORDER BY DESC. */

/* Task 4 - İlk cəhd */

select c.full_name, AVG(total_amount) as total_amount
from customers c
join orders o
on c.id = o.customer_id
group by c.full_name
order by total_amount desc;