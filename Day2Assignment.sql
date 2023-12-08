create database Day2ExercizeDb

use Day2ExercizeDb

create table CompanyInfo(
CId int primary key identity,
CName nvarchar(20) not null)

insert into CompanyInfo values('SamSung'),('HP'),('Apple'),('Dell'),('Toshiba'),('Redmi')

select * from CompanyInfo

create table ProductInfo(
PId int primary key identity,
PName nvarchar(20) not null,
PPrice float,
PMDate date,
CId int foreign key references CompanyInfo(CId))

insert into ProductInfo values('Laptop',55000.90,'12/12/2023',1),('Laptop',35000.90,'12/12/2012',2),('Mobile',15000.90,'12/03/2012',2),
('Laptop',135000.90,'12/12/2012',3),('Mobile',65000.90,'12/12/2012',3),('Laptop',35000.90,'12/12/2012',5),('Mobile',35000.90,'12/01/2023',5),
('Earpod',1000.90,'12/01/2022',3),('Laptop',85000.90,'12/12/2021',6),('Mobile',55000.90,'12/12/2020',1)

select * from ProductInfo

--1.Show all company names and their product details
select c.CName,p.PId,p.PName,p.PPrice,p.PMDate
from CompanyInfo c join ProductInfo p on c.CId=p.CId

--2.Show all product names and their respective company names
select p.PName,c.CName
from CompanyInfo c  inner join ProductInfo p on  c.CId=p.CId

--3.Show all possible combinations of company and their products
select CName,PName from CompanyInfo cross join ProductInfo

