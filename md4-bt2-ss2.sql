create database qlybanhang;
use qlybanhang;
create table customer(
cid int primary key auto_increment,
cname varchar(255) not null,
cage int not null
);

create table product(
pid int primary key auto_increment,
pname varchar(255) not null,
pPrice float not null
);

create table `order`(
oid int primary key auto_increment,
odate date not null,
ototalprice float not null,
cid int,
foreign key(cid) references customer(cid)
);

create table orderdetail(
odi int,
foreign key(odi) references `order`(oid),
pid int,
foreign key(pid) references product(pid)
);