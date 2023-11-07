--Create database Library
--use library
create table Author 
(
id int primary key identity(2,2) ,
Name nvarchar(200) not null ,
Age  tinyint ,
salary decimal
)

create table Book 
(
Id int primary key identity,
Name nvarchar(150) not null ,
Price int default 150 ,
Edition nvarchar(50),
Description nvarchar(600) ,
AuthorId int 
)


alter table Book add constraint c1 
foreign key (AuthorId) references Author(id)
on delete set null on update cascade 

-- statement of create table and making relationship 
-- add update select 


select * from Author
-- catch collection . add(object ) context.savechanges()
insert into Author values 
('Emary',24,20000),
('abdelrahman',13,200),
('ahmed',30,5000)
update Author set age =25
where id=6

-- fetch  , entry . mo
update Author set salary+=7000
where id=6

-- context.where(id==6).firstOrDefault(); context.find(6);
select * from Author where id =6

select * from Book

insert into Book 
values 
('harry potter',1234,'2012v5','this is new description',2)