use AJ_Automation

create table customers(primary key(CustomerID), CustomerID int, CustomerName char(100),ContactName char(100),vAddress char(200),City char(100),PostalCode char(50), Country char(100))
create table Categories(primary key(CategoryID), CategoryID int, CategoryName char(100),vDescription char(100))
create table Employees(primary key(EmployeeID), EmployeeID int, LastName char(100),FirstName char(100),BirthDate date,Photo char(100),Notes text)
create table OrderDetails(primary key(OrderDetailID), OrderDetailID int, OrderID int,ProductID int,Quantity int)
create table Orders(primary key(OrderID), OrderID int, CustomerID int,EmployeeID int,OrderDate date,ShipperID int)
create table Products(primary key(ProductID), ProductID int, ProductName char(200),SupplierID int,CategoryID int,Unit char(200),Price float)
create table Shippers(primary key(ShipperID), ShipperID int, ShipperName char(200),Phone char(200))
create table Suppliers(primary key(SupplierID), SupplierID int, SupplierName char(200),ContactName char(200),vAddress char(200),City char(100),PostalCode char(50), Country char(100),Phone char(200))

insert into customers(CustomerID,CustomerName,ContactName,vAddress,City,PostalCode,Country) values($vCustomers(1,1)$,'$vCustomers(1,2)$','$vCustomers(1,3)$','$vCustomers(1,4)$','$vCustomers(1,5)$','$vCustomers(1,6)$','$vCustomers(1,7)$')
insert into Categories(CategoryID,CategoryName,vDescription) values($vCustomers(1,1)$,'$vCustomers(1,2)$','$vCustomers(1,3)$')
insert into Employees(EmployeeID,LastName,FirstName,BirthDate,Photo,Notes) values($vCustomers(1,1)$,'$vCustomers(1,2)$','$vCustomers(1,3)$','$vCustomers(1,4)$','$vCustomers(1,5)$','$vCustomers(1,6)$')
insert into OrderDetails(OrderDetailID,OrderID,ProductID,Quantity) values($vCustomers(1,1)$,$vCustomers(1,2)$,$vCustomers(1,3)$,$vCustomers(1,4)$)
insert into Orders(OrderID,CustomerID,EmployeeID,OrderDate,ShipperID) values($vCustomers(1,1)$,$vCustomers(1,2)$,$vCustomers(1,3)$,'$vCustomers(1,4)$',$vCustomers(1,5)$)
insert into Products(ProductID,ProductName,SupplierID,CategoryID,Unit,Price) values($vCustomers(1,1)$,'$vCustomers(1,2)$',$vCustomers(1,3)$,$vCustomers(1,4)$,'$vCustomers(1,5)$',$vCustomers(1,6)$)
insert into Shippers(ShipperID,ShipperName,Phone) values($vCustomers(1,1)$,'$vCustomers(1,2)$','$vCustomers(1,3)$')
insert into Suppliers(SupplierID,SupplierName,ContactName,vAddress,City,PostalCode,Country,Phone) values($vCustomers(1,1)$,'$vCustomers(1,2)$','$vCustomers(1,3)$','$vCustomers(1,4)$','$vCustomers(1,5)$','$vCustomers(1,6)$','$vCustomers(1,7)$','$vCustomers(1,8)$')

truncate table customers;
truncate table Categories;
truncate table Employees;
truncate table OrderDetails;
truncate table Orders;
truncate table Products;
truncate table Shippers;
truncate table Suppliers;

select * from customers;
select * from Categories;
select * from Employees;
select * from OrderDetails;
select * from Orders;
select * from Products;
select * from Shippers;
select * from Suppliers;

create table vdata(customername char(200),customercity char(200));

insert into vdata(customername,customercity) values('hakuna1','matata1');
insert into vdata(customername,customercity) values('hakuna2','matata2');
insert into vdata(customername,customercity) values('hakuna3','matata3');
insert into vdata(customername,customercity) values('hakuna4','matata4');
insert into vdata(customername,customercity) values('hakuna5','matata5');

select * from vdata;

delete from vdata where customername='SP hakuna5';

create PROCEDURE Createdata
as
insert into vdata(customername,customercity) values('SP hakuna5','SP matata5');
go

exec Createdata