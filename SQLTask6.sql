CREATE DATABASE MiniCompanyDB;
GO
USE MiniCompanyDB;
GO

/* 6. Hər bir məhsulun stokunu sifariş miqdarı ilə müqayisə et və azalan məhsulları tap.

Məqsəd: stok idarəsi.

Hint: JOIN order_items + SUM(quantity) + HAVING SUM(quantity) > stock. */

/* Task 6 - İlk cəhd */

select p.product_name, p.stock, SUM(oi.quantity) as total_quantity
from products p
join order_items oi 
on p.id = oi.product_id
group by p.product_name, p.stock
having SUM(oi.quantity) > p.stock;