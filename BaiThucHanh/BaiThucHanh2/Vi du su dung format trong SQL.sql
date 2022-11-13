/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [OrderID]
      ,[CustomerID]
      ,[EmployeeID]
      ,Format([OrderDate], 'dd/MM/yyyy') AS NgayDatHang
      ,Format([RequiredDate], 'dd/MM/yyyy') AS NgayYeuCauHoanThanhDH
      ,Format([ShippedDate], 'dd/MM/yyyy') AS NgayChuyenHang
      ,[ShipVia]
      ,Format([Freight], 'c') AS CuocVanChuyen
      ,[ShipName]
      ,[ShipAddress]
      ,[ShipCity]
      ,[ShipRegion]
      ,[ShipPostalCode]
      ,[ShipCountry]
  FROM [Northwind].[dbo].[Orders]