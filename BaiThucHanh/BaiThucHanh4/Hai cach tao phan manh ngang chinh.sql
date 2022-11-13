Create Database Northwind1
go
use Northwind1
go
-- Có 2 cách tạo phân mảnh ngang chính

--Cách 1: gồm 2 bước, áp dụng được cho mọi bảng toàn cục
--Bước 1: Tạo thiết kế 2 phân mảnh ngang của bảng Customers
CREATE TABLE [dbo].[KH1](
	[CustomerID] [nchar](5) NOT NULL,
	[CompanyName] [nvarchar](40) NOT NULL,
	[ContactName] [nvarchar](30) NULL,
	[ContactTitle] [nvarchar](30) NULL,
	[Address] [nvarchar](60) NULL,
	[City] [nvarchar](15) NULL,
	[Region] [nvarchar](15) NULL,
	[PostalCode] [nvarchar](10) NULL,
	[Country] [nvarchar](15) NULL,
	[Phone] [nvarchar](24) NULL,
	[Fax] [nvarchar](24) NULL
	)
CREATE TABLE [dbo].[KH2](
	[CustomerID] [nchar](5) NOT NULL,
	[CompanyName] [nvarchar](40) NOT NULL,
	[ContactName] [nvarchar](30) NULL,
	[ContactTitle] [nvarchar](30) NULL,
	[Address] [nvarchar](60) NULL,
	[City] [nvarchar](15) NULL,
	[Region] [nvarchar](15) NULL,
	[PostalCode] [nvarchar](10) NULL,
	[Country] [nvarchar](15) NULL,
	[Phone] [nvarchar](24) NULL,
	[Fax] [nvarchar](24) NULL
	)
--Bước 2: Lấy dữ liệu 2 phân mảnh ngang của bảng Customers
INSERT INTO dbo.KH1
SELECT *
FROM Northwind.dbo.Customers
WHERE Country= N'USA' OR Country= N'UK'

INSERT INTO dbo.KH2
SELECT *
FROM Northwind.dbo.Customers
WHERE Country<>N'USA' AND Country<> N'UK'

--Cách 2: cách này ngắn gọn chỉ viết 1 câu lệnh nhưng chỉ áp dụng được các bảng toàn cục không có khóa chính là Identity (Auto number)
--Tạo thiết kế và lấy dữ liệu 2 phân mảnh ngang của bảng Customers
--Chú ý: phải xóa (nếu có) 2 phân mảnh KH1 và KH2 mới chạy 2 câu SELECT INTO được

SELECT *INTO dbo.KH1
FROM Northwind.dbo.Customers
WHERE Country= N'USA' OR Country= N'UK'

SELECT * INTO dbo.KH2
FROM Northwind.dbo.Customers
WHERE Country<>N'USA' AND Country<> N'UK'