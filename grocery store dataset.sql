create database project
use project
select * from orders
select * from products
select o.orderid , o.date , o.store ,p.product , p.category  ,o.quantity , p.unitprice , p.unitprice*o.quantity as total_revenue , o.city , o.paymentmethod , o.customertype into grocery_store_dataset from orders as o join products as p on o.orderid = p.orderid
select * from grocery_store_dataset
select * from grocery_store_dataset where product is null
select count(*) as total_rows from grocery_store_dataset
select orderid , count(*) from grocery_store_dataset group by orderid having count(*) >1
select sum(total_revenue) as total_sales from grocery_store_dataset
select category , sum(total_revenue) as total_sales from grocery_store_dataset group by category order by total_sales desc
select product , sum(quantity) as total_sold from grocery_store_dataset group by product order  by total_sold desc
select city , sum(total_revenue) as total_sales from grocery_store_dataset group by city order by total_sales desc
select paymentmethod , count(*) as transactions from grocery_store_dataset group by paymentmethod 
select customertype , sum(total_revenue) as total_sales from grocery_store_dataset group by customertype

