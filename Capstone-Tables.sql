	-- Creating Tables for Capstone --
use master;
go
alter database PrsDb set single_user with rollback immediate
go
drop database if exists PrsDb;
go
create database PrsDb;
go
use PrsDb;
go

	-- After this create tables --

create table Users(
	Id int not null primary key identity(1,1),
	Username nvarchar(30) not null unique,
	Password nvarchar(30) not null, 
	Firstname nvarchar(30) not null,
	Lastname nvarchar(30) not null,
	Phone nvarchar(12),
	Email nvarchar(255),
	Isreviewer bit not null default 0,
	IsAdmin bit not null default 0,
	Active bit not null default 1
);
go

create table Vendors(
	Id int not null primary key identity(1,1),
	Code nvarchar(4) not null unique,
	Name nvarchar(50) not null,
	Address nvarchar(30),
	City nvarchar(30),
	State nvarchar(2),
	Zip nvarchar(10),
	Phone nvarchar(12),
	Email nvarchar(255),
	IsPreferred bit not null default 1,
	Active bit not null default 1
);
go

create table Products(
	Id int not null primary key identity(1,1),
	PartName nvarchar(30) not null,
	VendorsId int foreign key references Vendors(Id),
	Name nvarchar(30) not null,
	Price decimal(9,2) not null default 0,
	Unit nvarchar(30) not null default 'each',
	PhotoPath nvarchar(255),
	Active bit not null default 1
);
go

create table Requests(
	Id int not null primary key identity(1,1),
	UsersId int foreign key references Users(Id),
	Description nvarchar(80),
	Justification nvarchar(80),
	Rejustification nvarchar(80),
	DeliveryMode nvarchar(80) default 'Pickup',
	ReviewDate datetime not null default getdate(),
	Status nvarchar(10) not null default 'NEW',
		check (Status in ('New', 'Review', 'Approved', 'Rejected')),
	Total decimal (11,2) not null default 0,
	Active bit not null default 1
);
go

create table RequestLines(
	Id int not null primary key identity(1,1),
	RequestsId int foreign key references Requests(Id),
	ProductsId int foreign key references Products(Id),
	Quantity int not null default 1
);
go

insert into Users (Username, Password, Firstname, Lastname, Isreviewer, IsAdmin) values('karick', '123', 'Kellan', 'Arick', 1, 1);
insert into Users (Username, Password, Firstname, Lastname, Isreviewer) values('rpid', '456', 'Rodger', 'Pidactor', 1);
insert into Users (Username, Password, Firstname, Lastname) values('Tcal', '789', 'Tommy', 'Callahan');
go

insert into Vendors (Code, Name) values ('AMAZ', 'Amazon');
insert into Vendors (Code, Name) values ('APPL', 'Apple');
insert into Vendors (Code, Name) values ('MAX', 'Max Technical Training');
go

insert into Products (VendorsId, PartName, Name, Price) values (1, 'Tablet', 'Echo', 99.99);
insert into Products (VendorsId, PartName, Name, Price) values (2, 'Tabelt', 'IPad', 299.99);
insert into Products (VendorsId, PartName, Name, Price) values (3, 'Training', 'Skills Training', 14000.00);
go

insert into requests (UsersId, Description) values (1, 'Training');
insert into requests (UsersId, Description) values (2, 'New Speaker');
insert into requests (UsersId, Description) values (3, 'New Tablet');
go

insert into RequestLines (RequestsId, ProductsId) values (1, 3);
insert into RequestLines (RequestsId, ProductsId) values (2, 1);
insert into RequestLines (RequestsId, ProductsId) values (3, 2);
go

/*
select * from Users;
go
select * from Vendors;
go
select * from Products;
go
select * from Requests;
go
select * from RequestLines;
go
*/
select r.Description, r.Status, CONCAT(u.Firstname, ' ', u.Lastname) as 'Full Name',
	 v.Name as 'Vendors Name', p.Name as 'Product', rl.Quantity, format(p.Price, 'c') as Price, format(rl.Quantity * p.Price, 'c') as 'Line Total'
from requests r
join users u
	on r.usersid = u.id
join Requestlines rl
	on r.id = rl.RequestsId
join Products p
	on rl.ProductsId = p.Id
join Vendors v
	on p.VendorsId = v.Id	