create database test_env;
use test_env;
select *from inventory_dataset;
select *from products;
select distinct Availability from inventory_dataset;
select a.`Order Date (DD/MM/YYYY)`,
a.`Product ID`,a.Availability,a.Demand,b.`Product Name`,b.`Unit Price ($)`
from inventory_dataset as a
 left join products as b 
 on a.`Product ID`=b.`Product ID`;
 
create table new_table as
select * 
from
 (select a.`Order Date (DD/MM/YYYY)`,
a.`Product ID`,a.Availability,a.Demand,b.`Product Name`,b.`Unit Price ($)`
from inventory_dataset as a
 left join products as b 
 on a.`Product ID`=b.`Product ID`)as x;
 
 select *from new_table;
 show databases;
 select user();
 
 -----------------------------------------------------------------------
 
 create database PROD;
USE PROD;
select * from prod_inventory;
 select distinct `Order Date (DD/MM/YYYY)`
 from prod_inventory
where `Order Date (DD/MM/YYYY)`is null or `Order Date (DD/MM/YYYY)`=' ';
 
 select distinct `Product ID`
 from prod_inventory;
 
 set sql_safe_updates=0;
 
 
  update prod_inventory
 set `Product ID`=7 
 WHERE`Product ID`=21;
  update prod_inventory
 set `Product ID`=11
 WHERE`Product ID`=22;
 
 select distinct Availability
 from prod_inventory;
 select distinct Demand
 from prod_inventory;
 
 create table new_table as
select * 
from
 (select a.`Order Date (DD/MM/YYYY)`,
a.`Product ID`,
a.Availability,
a.Demand,b.
`Product Name`,
b.`Unit Price ($)`
from prod_inventory as a
 left join test_env.products as b 
 on a.`Product ID`=b.`Product ID`
 )as x;
 
 show tables
 
 
 
 
 