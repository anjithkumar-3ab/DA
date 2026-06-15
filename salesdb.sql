use salesdb;

desc products;
desc interactions;

select * from interactions;
select * from products;
select * from purchases;
select * from reviews;
select * from sessions;
select * from users;

select count(loyalty_tier) from users;

use salesdb;

select gender,count(*) from users
group by gender;

select category,count(*) from products
group by category;

select min(price) from products;

select max(price) from products;

select avg(price) from products;

select min(price), max(price), round(avg(price),2) from products;

use salesdb;

select city,count(*) as duplicate_city
from users group by city having count(*) >1;


select count(*) from users where income_level regexp 'l';

select count(*) from users where income_level like 'l%' or 'lo%';

select  income_level ,count(*) from users where income_level regexp '[low]' group by income_level;

select  income_level ,count(*) from users where income_level regexp '[l%m%v%]' group by income_level;