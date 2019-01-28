	-- CRRREATING TABLES --

drop table if exists Students;
go

drop table if exists Majors;
go


create table Majors(
	Id int not null primary key identity(1,1),
	Description nvarchar(50) not null
);
go

create table Students (
	Id int not null primary key identity(1,1),
	FirstName nvarchar(30) not null unique, -- nvarchar(MAX) no unlimited but very large.
	FavDate datetime,
	LovesGOT bit not null default 1, --default used when not inserting for column list
	RateGOT decimal(3,1) not null default 5.0 
		check(RateGOT >= 0.0 and RateGOT <= 10.0),
	MajorsId int foreign key references Majors(Id)
);
go

insert into Majors (Description) values ('Math')
insert into Majors (Description) values ('Engineering')
insert into Majors (Description) values ('Education')
insert into Majors (Description) values ('Managment')
insert into Majors (Description) values ('CS')
go

insert into Students (FirstName, FavDate, LovesGOT, RateGOT, MajorsId) values ('Kellan', '2019-01-22', 1, 9.9, 2);
insert into Students (FirstName, FavDate, LovesGOT, RateGOT, MajorsId) values ('Jim', '2019-05-30', 1, 7.6, 1);
insert into Students (FirstName, FavDate, LovesGOT, RateGOT, MajorsId) values ('Kim', '2019-07-29', 1, 2.4, 3);
insert into Students (FirstName, FavDate, LovesGOT, RateGOT) values ('John', '2019-08-26', 0, 0.0);
go

select * from Students;
go

update Students set RateGOT = 7.76;
go