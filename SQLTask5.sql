CREATE DATABASE MiniCompanyDB;
GO
USE MiniCompanyDB;
GO

/* 5. 2023-cü ildə verilmiş sifarişləri tap və hansı məhsulların daha çox satıldığını göstərin.

Məqsəd: il üzrə satış analiz.

Hint: YEAR(order_date) = 2023 + JOIN + SUM(quantity) + GROUP BY product_id. */

/* Task 5 - İlk cəhd */

select p.product_name, SUM(oi.quantity) as sum_quantity
from products p
join order_items oi 
on p.id = oi.product_id
join orders o 
on o.id = oi.order_id
where YEAR(order_date) = 2023
group by p.product_name
order by sum_quantity desc;