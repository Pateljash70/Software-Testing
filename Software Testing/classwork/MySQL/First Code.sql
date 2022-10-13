create database big_basket_db;
use big_basket_db;
create table customer(
	custID int auto_increment,
    cust_name varchar(50),
    cust_address varchar(50),
    cust_city varchar(50),
    cust_mob varchar(50),
    cust_email varchar(50),
    primary key (custID)
);
create table catagory(
	catID int auto_increment,
	Cat_name varchar(50),
	primary key (catID)
);
create table product(
product_id int auto_increment,
product_name varchar(50),
product_price int,
product_qty int,
product_desc varchar(100),
primary key (product_id)
);
create table order_tbl(
	order_ID int auto_increment,
    order_date datetime,
    cid int,
    pid int,
    qty int,
    total int,
    primary key (order_ID),
    foreign key (cid) references customer(custID),
    foreign key (pid) references product(product_id)
);
use big_basket_db;
insert into customer(cust_name,cust_address,cust_city,cust_mob,cust_email)
value ('amit','pandesara', 'surat', '52545655', 'amit@gmail.com'),
('jash', 'vesu', 'surat', '23214524', 'jash@gmail.com'),
('devanshi', 'parlepoint','mumbai', '23564646', 'devanshi@gmail.com'),
('kishor', 'citylight', 'pune', '4562354', 'kishor@gmail.com'),
('mamta', 'katch', 'bhuj', '45789987', 'mamta@gmail.com'),
('vaibhav', 'athwagate', 'surat', '4325446655', 'vaibhav@gmail.com'),
('nishit', 'malad', 'mumbai', '456524547', 'nishit@gmail.com'),
('abc', 'udhana', 'surat', '452135457', 'abc@gmail.com'),
('xzy', 'NRC', 'delhi', '43245433', 'xyz@gmail.com'),
('ruchi', 'ringroad', 'banglore','422564533', 'ruchi@gmail.com');
insert into catagory(cat_name)
value ('furit'), ('vegetable'), ('grains'),('breakry'), ('beauty'), ('homecare'),('cleaning'), ('Pants'), ('snackes');
insert into Product(product_name,product_price,product_qty,product_desc)
Value ('apple',150,50,'kjadccj'),
('tomato',50,150,'ljdlvnif'),
('Banana', 50, 120, 'bcjblw'),
('graps', 100, 130, 'hajajjs'),
('Poteto', 250, 130, 'hajajw'),
('dragon fruit', 390,500, 'khjkkbdc'),
('daimen', 1400,1000, 'jhckbodbw'),
('vacum', 25000, 500, 'hhbsucbub');
insert into order_tbl(order_date, cid, pid, qty, total)
Value (now(),1,1,10,100),
(now(),2,2,20,200),
(now(),3,3,30,300),
(now(),4,4,40,400),
(now(),5,5,50,500);
