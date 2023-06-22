use northwind;

select * from customers;

select * from customers 
where job_title = 'Purchasing Representative'
or
company = 'Company A';

select distinct job_title, city from customers;

select count(job_title)
from customers
where city = 'Seattle';

