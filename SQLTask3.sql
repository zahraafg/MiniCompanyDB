CREATE DATABASE MiniCompanyDB;
GO
USE MiniCompanyDB;
GO

/* 3. Hər bir sifariş üçün məhsul adları ilə birlikdə toplam qiyməti hesabla və sifarişin total_amount ilə uyğun olub olmadığını yoxla.

Məqsəd: data doğruluğunu yoxlamaq.

Hint: SUM(quantity * price) + JOIN + müqayisə. */

/* Task 3 - Düzəliş edilmiş versiya */

select oi.order_id, SUM(oi.quantity * oi.price) as calculated_total, o.total_amount
from order_items oi
join orders o on oi.order_id = o.id
group by oi.order_id, o.total_amount
having SUM(oi.quantity * oi.price) <> o.total_amount;