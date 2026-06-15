create database trigg;
use trigg;


CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    Salary DECIMAL(10,2)
);

CREATE TABLE Employee_Log (
    LogID INT AUTO_INCREMENT PRIMARY KEY,
    EmpID INT,
    ActionType VARCHAR(20),
    ActionDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

insert into employee values
(01,"Anjith",50000),
(02,"Teja",30000)
;

select * from employee;
select * from Employee_Log;


create trigger trig_emp
after insert on employee
FOR EACH ROW
INSERT INTO Employee_Log(EmpID, ActionType)
VALUES(NEW.EmpID, 'INSERT');


insert into employee values
(03,"Sanju",76530);


CREATE TRIGGER trg_update
AFTER UPDATE
ON Employee
FOR EACH ROW
INSERT INTO Employee_Log(EmpID, ActionType)
VALUES(NEW.EmpID, 'UPDATE');

UPDATE Employee
SET Salary = 55400
WHERE EmpID = 01;

CREATE TRIGGER trg_delete
AFTER DELETE
ON Employee
FOR EACH ROW
INSERT INTO Employee_Log(EmpID, ActionType)
VALUES(OLD.EmpID, 'DELETE');

DELETE FROM Employee
WHERE EmpID = 03;





create table a (id int primary key, name varchar(50));
insert into a values 
(1,"a"),
(2,"b");

create table b (
SNO int auto_increment primary key,
id int,
Action_type varchar(20)
);

create trigger trig_a
after insert on a
for each row 
insert into b(id,Action_type)
values (id,'INSERT');

insert into  a values (3,"c");

select * from a;
select * from b;

SHOW TRIGGERS;