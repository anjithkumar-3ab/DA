show databases;
use salesdb;
show tables;

select datediff(sysdate(),'2017-12-12');

select date_format(sysdate(),'%y');

select date_format(sysdate(),'%m');

select date_format(sysdate(),'%d');

select date_format(sysdate(),'%W');

select day(sysdate());

select month(sysdate());

select year(sysdate());

select week(sysdate());

select weekday(sysdate());

select quarter(sysdate());

select adddate(sysdate(),interval 10 day);

select adddate(sysdate(),interval 10 Year);

select adddate(sysdate(),interval 10 Month);

select adddate(sysdate(),interval 10 Quarter);
