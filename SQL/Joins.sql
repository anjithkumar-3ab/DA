create database joins;
use joins;

create table cust_info
(
customername varchar(100),
customerid int primary key,
city varchar(50),
postalcode varchar(50),
country varchar(20)
);


create table order_info
(
orderid int primary key,
customerid int,
employeeid int,
orderdate datetime,
shipperid int);

insert into cust_info values
("Anjith",1,"Amaravati",123456,"India"),
("Teja",2,"MPL",546643,"India"),
("Mohith",3,"Kadapa",653215,"India"),
("Groot",4,"Berlin",012300,"Germany"),
("Oggy",5,"Frankfut",555555,"Germany"),
("Olly",6,"Honkong",300021,"China"),
("Jack",7,"Chigago",333665,"America")
;
insert into cust_info values
("Bob",12,"Lahore",656325,"PAK");
select * from cust_info;

insert into order_info values
(1,"1",1,sysdate(),50000),
(2,"2",2,sysdate(),50001),
(3,"3",3,sysdate(),50002),
(4,"4",4,sysdate(),50003),
(5,"5",5,sysdate(),50004),
(6,"6",6,sysdate(),50005),
(7,"7",7,sysdate(),50006),
(8,"8",8,sysdate(),50007);

select * from order_info;

desc cust_info;
desc order_info;

select c.customername,c.customerid,c.country,o.orderid,o.orderdate from cust_info c,order_info o where c.customerid = o.customerid;

select * from cust_info c inner join order_info o on c.customerid = o.customerid;

select * from cust_info c left join order_info o on c.customerid = o.customerid;

select * from cust_info c right join order_info o on c.customerid = o.customerid;

select * from cust_info c left join order_info o on c.customerid = o.customerid union
select * from cust_info c right join order_info o on c.customerid = o.customerid;



use student;

select trim(concat(first_name,last_name)) from emp;

select substring(concat(first_name,last_name),5,8) from emp;

SELECT 
    UPPER(first_name), 
    LOWER(last_name)
FROM emp;


select character_length(first_name) from emp;


select mid(first_name,2,3) from emp;


