CREATE DATABASE MiniCompanyDB;
GO
USE MiniCompanyDB;
GO

--1. Bütün işçilərin adını, soyadını və maaşını göstər.
select name, surname, salary
from employees;


--2. Maaşı 2000-dən yüksək olan işçiləri tap.
select * 
from employees 
where salary > 2000;


--3. Müştərilərin adlarını və email ünvanlarını sırala.
select full_name, email 
from customers
order by full_name asc, email;


--4. Hər bir məhsulun adı və mövcud stokunu göstər.
select product_name, stock 
from products;


--5. Hər bir sifarişin ümumi məbləğini və sifariş tarixi ilə birlikdə göstər.
select total_amount, order_date
from orders;


--6. 100-dən çox qiymətli sifarişləri tap.
select * 
from orders
where total_amount > 100;


--7. Hər bir sifariş üçün məhsul adını, miqdarını və qiymətini göstər.
select p.product_name, 
	oi.quantity, 
	oi.price
from order_items oi
join products p
on oi.product_id = p.id;


--8. Müştəri “Zahra Yaghoubi”-nin bütün sifarişlərini tap.
select c.full_name, 
    COUNT(o.customer_id)
from customers c
join orders o
on c.id = o.customer_id
where c.full_name = 'Zahra Yaghoubi'
group by c.full_name;

select o.id as order_id, 
	o.order_date, 
	o.total_amount
from orders o
join customers c
on o.customer_id = c.id
where c.full_name = 'Zahra Yaghoubi';


--9. Hər bir sifariş üçün ümumi məhsul sayını hesabla.
select oi.order_id, 
	p.product_name, 
	SUM(oi.quantity) as total_quantity
from products p 
join order_items oi 
on oi.product_id = p.id
group by oi.order_id, p.product_name;


--10. Hər bir müştərinin toplam ödədiyi məbləği göstər.
select c.full_name, 
    SUM(o.total_amount) as totoal_amount
from customers c
join orders o
on c.id = o.customer_id
group by c.full_name;


--11. Müştərilərin sifarişləri
select c.full_name, 
	o.id as order_id, 
	o.total_amount
from customers c
join orders o 
on c.id = o.customer_id;


--12. Ən çox sifariş verən müştəri
select c.full_name, 
     COUNT(o.id) as count_order
from customers c
join orders o
on c.id = o.customer_id
group by c.full_name
order by count_order desc;


--13. Ən çox satılan məhsul
select top 1 p.product_name, 
     SUM(oi.quantity) as total_sold
from products p
join order_items oi
on p.id = oi.product_id
group by p.product_name
order by total_sold desc;


--14. Ümumi satış məbləği
select SUM(total_amount) as total_amount
from orders;