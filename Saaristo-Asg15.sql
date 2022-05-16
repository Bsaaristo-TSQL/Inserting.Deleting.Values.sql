USE [MyGuitarShop]
GO
--15 #1
INSERT INTO [dbo].[Categories]
           (CategoryName
		   )
     VALUES
           ('BONGOS')
GO
INSERT INTO [dbo].[Categories]
           (CategoryName
		   )
     VALUES
           ('TRUMPETS')
GO
INSERT INTO [dbo].[Categories]
           (CategoryName
		   )
     VALUES
           ('VIOLINS')
GO


--15 #2

use MyGuitarShop
UPDATE top (1) [dbo].[Categories]
set CategoryName = 'Bongos'
 WHERE CategoryName = 'BONGOS' 
GO
UPDATE top (1) [dbo].[Categories]
set CategoryName = 'Trumpets'
 WHERE CategoryName = 'TRUMPETS' 
GO
UPDATE top (1) [dbo].[Categories]
set CategoryName = 'Violins'
 WHERE CategoryName = 'VIOLINS'
GO

--15 #3

select * 
from Categories
where CategoryID in( '6', '7' )

DELETEx top (2) FROM [dbo].[Categories]
      WHERE categoryname in( 'Trumpets', 'Violins' )
GO

--15 #4

select * into CustomersBackup
from Customers
drop table CustomersBackup

--15 #5

select AddressID, City, State, ShippingAddressID 
from Addresses a
join Customers c  on a.CustomerID = c.CustomerID
where City = 'Milwaukee'

deletex top (10) from dbo.Addresses
where AddressID in ( 291,292,293,294,295 )
--5 records

--15 #6

insert into dbo.Customers
(FirstName,
LastName,
EmailAddress,
[Password])
values
('Christopher',
'Pike',
'cpike@federation.gov',
'NCC-1701')
go

--15 #7

update Addresses
set state = 'WI', City = 'New Richmond'
where addressID = 15

select * from Addresses
select * from Customers