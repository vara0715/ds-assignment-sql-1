use sales;
CREATE TABLE SalesPeople(
snum int,
sname varchar(23),
city varchar(22),
comm int,
primary key(snum)
);
INSERT INTO salespeople
values(1001,'peel','london',12);
INSERT INTO salespeople
values(1002,'serres','sanjosen',13);
INSERT INTO salespeople
values(1004,'motika','london',11);
INSERT INTO salespeople
values(1007,'rifkin','barcelona',15);
INSERT INTO salespeople
values(1001,'axelod','newyork',10);
SELECT * FROM salespeople;


CREATE TABLE Customers(
cnum int,
cname varchar(34),
city  varchar(23) NOT NULL,
Snum int,
primary key(cnum),
foreign key(Snum) references salespeople(Snum)
);
SELECT * FROM Customers;
INSERT INTO Customers
values(2001,'hoffman','london',1001);
INSERT INTO Customers
values(2002,'giovanni','rome',1003);
INSERT INTO Customers
values(2003,'liu','sanjose',1002);
INSERT INTO Customers
values(2004,'grass','berlin',1002);
INSERT INTO Customers
values(2006,'clemens','london',1001);
INSERT INTO Customers
values(2008,'cisneros','sanjose',1007);
INSERT INTO Customers
values(2007,'pereira','rome',1004);
 CREATE TABLE ORDERS(
 onum int,
 amt float,
 odate date,
 cnum int,
 Snum int,
 primary key(onum),
 foreign key(cnum) references customers(cnum),
 foreign key(Snum) references salespeople(Snum)
 );
 INSERT INTO ORDERS
 VALUES(3001,18.69,'1990-10-3',2008,1007);
 INSERT INTO ORDERS
 VALUES(3003,767.19,'1990-10-3',2001,1001);
 INSERT INTO ORDERS
 VALUES(3002,1900.10,'1990-10-3',2007,1004);
 INSERT INTO ORDERS
 VALUES(3005,5160.45,'1990-10-3',2003,1002);
 INSERT INTO ORDERS
 VALUES(3006,1098.16,'1990-10-3',2008,1007);
 INSERT INTO ORDERS
 VALUES(3009,1713.23,'1990-10-4',2002,1003);
 INSERT INTO ORDERS
 VALUES(3007,75.75,'1990-10-4',2008,1002);
 INSERT INTO ORDERS
 VALUES(3008,4273.00,'1990-10-5',2004,1001);
 INSERT INTO ORDERS
 VALUES(3010,1309.95,'1990-10-6',2004,1002);
 INSERT INTO ORDERS
 VALUES(3011,9891.88,'1990-10-6',2006,1001);
 SELECT * FROM ORDERS;
 
 
SELECT count(sname) from salespeople where sname like 'a%' or sname like 'A%';
 
SELECT sname from salespeople where Snum in (SELECT Snum from orders where amt>2000);

SELECT COUNT(sname) from salespeople where city = 'Newyork';

SELECT COUNT(sname) from salespeople where city = 'London' AND city = 'Paris';

SELECT Odate, COUNT(Onum) FROM orders GROUP BY Odate;
SELECT Snum, COUNT(Onum) FROM orders GROUP BY Snum;


