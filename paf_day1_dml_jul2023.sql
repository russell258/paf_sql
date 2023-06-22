use paf_jul2023;
/*
insert into customer (first_name, last_name) values ('Swee Kiat', 'Heng');
insert into customer (first_name, last_name) values ('Desmond', 'Koh');
insert into customer (first_name, last_name) values ('Shanmugan', 'Law');
insert into customer (first_name, last_name) values ('Hsien Loong', 'Lee');
insert into customer (first_name, last_name) values ('Vivien', 'Bala');
insert into customer (first_name, last_name) values ('Chun Sing', 'Chan');
insert into customer (first_name, last_name) values ('Josephine', 'Teo');
insert into customer (first_name, last_name) values ('Chee Hean', 'Teo');

insert into room (room_type, price) values ('single',50);
insert into room (room_type, price) values ('standard',100);
insert into room (room_type, price) values ('double', 150);
insert into room (room_type, price) values ('deluxe',200);
insert into room (room_type, price) values ('prestige',250);
insert into room (room_type, price) values ('president', 300);
insert into room (room_type, price) values ('suite', 350);
*/

/*
insert into reservation (customer_id, room_id, start_date, end_date, total_cost) values (1, 1, '2023-07-01', '2023-07-02',100);
insert into reservation (customer_id, room_id, start_date, end_date, total_cost) values (2, 2, '2023-07-11', '2023-07-12',200);
insert into reservation (customer_id, room_id, start_date, end_date, total_cost) values (3, 3, '2023-07-21', '2023-07-22',300);
insert into reservation (customer_id, room_id, start_date, end_date, total_cost) values (4, 4, '2023-07-12', '2023-07-13',400);
*/

select * from customer limit 5;

select id, first_name, last_name from customer limit 2;

-- offset X will skip by the number X
select id, first_name, last_name from customer limit 2 offset 2;

select * from customer where last_name = 'Teo';

-- % is a wildcard. %on as in ends with 'on'. 'on%' starts with on. 
-- wildcard means any number of characters

select * from customer where last_name like '%o%';

select * from reservation;

select * from reservation where start_date >= '2023-07-01' and start_date <= '2023-07-05';

select * from reservation where start_date between '2023-07-01' and '2023-07-15';

-- can pull data from outside the date range with 'not', like union subset rule

select * from reservation where start_date not between '2023-07-01' and '2023-07-15';

select * from room where room_type in ('single','double');


