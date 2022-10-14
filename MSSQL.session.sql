--CREATE DATABASE LABORATORIO;
--USE LABORATORIO;
--CREATE SCHEMA DataRaw;
--CREATE SCHEMA DataModel;
--CREATE SCHEMA DataAnalytics;

/*
CREATE TABLE DataRaw.SalesData_CSV (
	[OrderID]                   [varchar](200) NOT NULL,
	[OrderDate]                 [varchar](200) NULL,
	[OrderRequiredDate]         [varchar](200) NULL,
	[OrderShippedDate]          [varchar](200) NULL,
	[OrderShipVia]              [varchar](200) NULL,
	[OrderFreight]              [varchar](200) NULL,
	[OrderShipName]             [varchar](200) NULL,
	[OrderShipAddress]          [varchar](200) NULL,
	[OrderShipCity]             [varchar](200) NULL,
	[OrderShipRegion]           [varchar](200) NULL,
	[OrderShipPostalCode]       [varchar](200) NULL,
	[OrderShipCountry]          [varchar](200) NULL,
	[CustomerID]                [varchar](200) NOT NULL,
	[CustCompanyName]           [varchar](200) NULL,
	[CustContactName]           [varchar](200) NULL,
	[CustContactTitle]          [varchar](200) NULL,
	[CustAddress]               [varchar](200) NULL,
	[CustCity]                  [varchar](200) NULL,
	[CustRegion]                [varchar](200) NULL,
	[CustPostalCode]            [varchar](200) NULL,
	[CustCountry]               [varchar](200) NULL,
	[CustPhone]                 [varchar](200) NULL,
	[CustFax]                   [varchar](200) NULL,
	[EmployeeID]                [varchar](200) NOT NULL,
	[EmployeeLastName]          [varchar](200) NULL,
	[EmployeeFirstName]         [varchar](200) NULL,
	[EmployeeTitle]             [varchar](200) NULL,
	[EmployeeTitleOfCourtesy]   [varchar](200) NULL,
	[EmployeeBirthDate]         [varchar](200) NULL,
	[EmployeeHireDate]          [varchar](200) NULL,
	[EmployeeAddress]           [varchar](200) NULL,
	[EmployeeCity]              [varchar](200) NULL,
	[EmployeeRegion]            [varchar](200) NULL,
	[EmployeePostalCode]        [varchar](200) NULL,
	[EmployeeCountry]           [varchar](200) NULL,
	[EmployeeHomePhone]         [varchar](200) NULL,
	[EmployeeExtension]         [varchar](200) NULL,
	[EmployeeNotes]             [varchar](2000) NULL,
	[EmployeeReportsTo]         [varchar](200) NULL,
	[UnitPrice]                 [varchar](200)  NULL,
	[Quantity]                  [varchar](200)  NULL,
	[Discount]                  [varchar](200)  NULL,
	[ProductID]                 [varchar](200) NOT NULL,
	[ProductName]               [varchar](200) NULL,
	[ProductSupplierID]         [varchar](200) NULL,
	[ProductQuantityPerUnit]    [varchar](200) NULL,
	[ProductUnitPrice]          [varchar](200) NULL,
	[ProductUnitsInStock]       [varchar](200) NULL,
	[ProductUnitsOnOrder]       [varchar](200) NULL,
	[ProductReorderLevel]       [varchar](200) NULL,
	[ProductDiscontinued]       [varchar](200) NULL,
	[SupplierID]                [varchar](200) NOT NULL,
	[SupplierCompanyName]       [varchar](200) NULL,
	[SupplierContactName]       [varchar](200) NULL,
	[SupplierContactTitle]      [varchar](200) NULL,
	[SupplierAddress]           [varchar](200) NULL,
	[SupplierCity]              [varchar](200) NULL,
	[SupplierRegion]            [varchar](200) NULL,
	[SupplierPostalCode]        [varchar](200) NULL,
	[SupplierCountry]           [varchar](200) NULL,
	[SupplierPhone]             [varchar](200) NULL,
	[SupplierFax]               [varchar](200) NULL,
	[CategoryID]                [varchar](200) NOT NULL,
	[CategoryName]              [varchar](200) NULL,
	[Description]               [varchar](200) NULL
)
;
*/

/*
BULK INSERT DataRaw.SalesData_CSV
FROM '/files/DataSales.csv'
WITH (FIRSTROW = 2,
    FIELDTERMINATOR = ';',
    ROWTERMINATOR='\n',
    BATCHSIZE=250000,
    MAXERRORS=2);

*/
/*
CREATE TABLE DataModel.productCategory (

	[CategoryID]                INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[CategoryName]              [varchar](200) NULL,
	[Description]               [varchar](200) NULL
)
;
*/
/*
CREATE TABLE DataModel.supplier (

	[SupplierID]                INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[SupplierCompanyName]       [varchar](200) NULL,
	[SupplierContactName]       [varchar](200) NULL,
	[SupplierContactTitle]      [varchar](200) NULL,
	[SupplierAddress]           [varchar](200) NULL,
	[SupplierCity]              [varchar](200) NULL,
	[SupplierRegion]            [varchar](200) NULL,
	[SupplierPostalCode]        [varchar](200) NULL,
	[SupplierCountry]           [varchar](200) NULL,
	[SupplierPhone]             [varchar](65) NULL,
	[SupplierFax]               [varchar](65) NULL
)
;
*/

/*
CREATE TABLE DataModel.productMaster (

	

	[ProductID]                 INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[UnitPrice]                 NUMERIC NULL,
	[ProductName]               [varchar](200) NULL,
	[ProductSupplierID]         INT NULL FOREIGN KEY REFERENCES DataModel.supplier(SupplierID),
	[ProductQuantityPerUnit]    [varchar](200) NULL,
	[ProductUnitPrice]          NUMERIC NULL,
	[ProductUnitsInStock]       INT NULL,
	[ProductUnitsOnOrder]       INT NULL,
	[ProductReorderLevel]       INT NULL,
	[ProductDiscontinued]       BIT NULL
)
;
*/

/*
CREATE TABLE DataModel.employee (

[EmployeeID]               INT NOT NULL IDENTITY PRIMARY KEY,
	[EmployeeLastName]          [varchar](200) NULL,
	[EmployeeFirstName]         [varchar](200) NULL,
	[EmployeeTitle]             [varchar](200) NULL,
	[EmployeeTitleOfCourtesy]   [varchar](200) NULL,
	[EmployeeBirthDate]         DATE NULL,
	[EmployeeHireDate]          DATE NULL,
	[EmployeeAddress]           [varchar](200) NULL,
	[EmployeeCity]              [varchar](200) NULL,
	[EmployeeRegion]            [varchar](200) NULL,
	[EmployeePostalCode]        [varchar](200) NULL,
	[EmployeeCountry]           [varchar](200) NULL,
	[EmployeeHomePhone]         [varchar](25) NULL,
	[EmployeeExtension]         [varchar](200) NULL,
	[EmployeeNotes]             [varchar](2000) NULL,
	[EmployeeReportsTo]         INT NULL
)
;
*/
/*

CREATE TABLE DataModel.customer (

[CustomerID]                INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[CustCompanyName]           [varchar](200) NULL,
	[CustContactName]           [varchar](200) NULL,
	[CustContactTitle]          [varchar](200) NULL,
	[CustAddress]               [varchar](200) NULL,
	[CustCity]                  [varchar](200) NULL,
	[CustRegion]                [varchar](200) NULL,
	[CustPostalCode]            [varchar](200) NULL,
	[CustCountry]               [varchar](200) NULL,
	[CustPhone]                 [varchar](25) NULL,
	[CustFax]                   [varchar](25) NULL
)
;
*/

/*
CREATE TABLE DataModel.orderHeader (
[OrderID]                   INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[OrderDate]                 DATETIME NULL,
	[OrderRequiredDate]         DATETIME NULL,
	[OrderShippedDate]          DATETIME NULL,
	[OrderShipVia]              [varchar](200) NULL,
	[OrderFreight]              NUMERIC NULL,
	[OrderShipName]             [varchar](200) NULL,
	[OrderShipAddress]          [varchar](200) NULL,
	[OrderShipCity]             [varchar](200) NULL,
	[OrderShipRegion]           [varchar](200) NULL,
	[OrderShipPostalCode]       [varchar](200) NULL,
	[OrderShipCountry]          [varchar](200) NULL,
	[CustomerID]				INT FOREIGN KEY REFERENCES DataModel.customer(CustomerID),
	[EmployeeID]				INT FOREIGN KEY REFERENCES DataModel.employee(EmployeeID),
	[SupplierID]				INT FOREIGN KEY REFERENCES DataModel.supplier(SupplierID)

)
;
*/
/*
CREATE TABLE DataModel.orderProduct (
[OrderProductID]                   INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[UnitPrice]                 NUMERIC NULL,
	[Quantity]                  INT NULL,
	[Discount]                  NUMERIC  NULL,
	[ProductID]				INT FOREIGN KEY REFERENCES DataModel.productMaster(ProductID),
	[OrderID]				INT FOREIGN KEY REFERENCES DataModel.orderHeader(OrderID)

)
;
*/

/*
CREATE PROCEDURE INSCATEGORY
AS
INSERT INTO DataModel.productCategory (
    [CategoryName] ,
    [Description]  
)
SELECT DISTINCT
    [CategoryName] ,
    [Description]     
FROM DataRaw.SalesData_CSV
GO

*/

/*
CREATE PROCEDURE INSEMPLOYEE
AS
INSERT INTO DataModel.employee (
    [EmployeeLastName]      ,
	[EmployeeFirstName]         ,
	[EmployeeTitle]             ,
	[EmployeeTitleOfCourtesy]   ,
	[EmployeeBirthDate]        ,
	[EmployeeHireDate]         ,
	[EmployeeAddress]           ,
	[EmployeeCity]              ,
	[EmployeeRegion]            ,
	[EmployeePostalCode]        ,
	[EmployeeCountry]           ,
	[EmployeeHomePhone]         ,
	[EmployeeExtension]         ,
	[EmployeeNotes]             ,
	[EmployeeReportsTo] 
)
SELECT DISTINCT
    [EmployeeLastName]      ,
	[EmployeeFirstName]         ,
	[EmployeeTitle]             ,
	[EmployeeTitleOfCourtesy]   ,
	[EmployeeBirthDate]        ,
	[EmployeeHireDate]         ,
	[EmployeeAddress]           ,
	[EmployeeCity]              ,
	[EmployeeRegion]            ,
	[EmployeePostalCode]        ,
	[EmployeeCountry]           ,
	[EmployeeHomePhone]         ,
	[EmployeeExtension]         ,
	[EmployeeNotes]             ,
	[EmployeeReportsTo]       

FROM DataRaw.SalesData_CSV
GO
EXEC INSEMPLOYEE;
*/
/*

CREATE PROCEDURE INSCUSTOMER
AS
INSERT INTO DataModel.customer (
    	[CustCompanyName]        ,
	[CustContactName]           ,
	[CustContactTitle]          ,
	[CustAddress]               ,
	[CustCity]                  ,
	[CustRegion]                ,
	[CustPostalCode]            ,
	[CustCountry]               ,
	[CustPhone]                 ,
	[CustFax]                   
)
SELECT DISTINCT
   [CustCompanyName]        ,
	[CustContactName]           ,
	[CustContactTitle]          ,
	[CustAddress]               ,
	[CustCity]                  ,
	[CustRegion]                ,
	[CustPostalCode]            ,
	[CustCountry]               ,
	[CustPhone]                 ,
	[CustFax]                   
FROM DataRaw.SalesData_CSV
GO
exec INSCUSTOMER;
*/

/*
CREATE PROCEDURE INSSUPPLIER
AS
INSERT INTO DataModel.supplier (

	[SupplierCompanyName]       ,
	[SupplierContactName]       ,
	[SupplierContactTitle]      ,
	[SupplierAddress]           ,
	[SupplierCity]              ,
	[SupplierRegion]            ,
	[SupplierPostalCode]        ,
	[SupplierCountry]           ,
	[SupplierPhone]             ,
	[SupplierFax]                                
)
SELECT DISTINCT
	[SupplierCompanyName]       ,
	[SupplierContactName]       ,
	[SupplierContactTitle]      ,
	[SupplierAddress]           ,
	[SupplierCity]              ,
	[SupplierRegion]            ,
	[SupplierPostalCode]        ,
	[SupplierCountry]           ,
	[SupplierPhone]             ,
	[SupplierFax]                 
FROM DataRaw.SalesData_CSV
GO
EXEC INSSUPPLIER;
*/
/*
CREATE PROCEDURE INSPRODUCTMASTER
AS
INSERT INTO DataModel.productMaster (

	[UnitPrice]                 ,
	[ProductName]               ,
	[ProductSupplierID]         ,
	[ProductQuantityPerUnit]    ,
	[ProductUnitPrice]          ,
	[ProductUnitsInStock]       ,
	[ProductUnitsOnOrder]       ,
	[ProductReorderLevel]       ,
	[ProductDiscontinued]                                
)
SELECT DISTINCT
	[UnitPrice]                 ,
	[ProductName]               ,
	[ProductSupplierID]         ,
	[ProductQuantityPerUnit]    ,
	[ProductUnitPrice]          ,
	[ProductUnitsInStock]       ,
	[ProductUnitsOnOrder]       ,
	[ProductReorderLevel]       ,
	[ProductDiscontinued]                   
FROM DataRaw.SalesData_CSV
GO
*/
/*
CREATE PROCEDURE INSorderHeader
AS
INSERT INTO DataModel.orderHeader (
	[OrderDate]                 ,
	[OrderRequiredDate]         ,
	[OrderShippedDate]          ,
	[OrderShipVia]              ,
	[OrderFreight]              ,
	[OrderShipName]             ,
	[OrderShipAddress]          ,
	[OrderShipCity]             ,
	[OrderShipRegion]           ,
	[OrderShipPostalCode]       ,
	[OrderShipCountry]          ,
	[CustomerID]				,
	[EmployeeID]                              
)
SELECT DISTINCT
	[OrderDate]                 ,
	[OrderRequiredDate]         ,
	[OrderShippedDate]          ,
	[OrderShipVia]              ,
	[OrderFreight]              ,
	[OrderShipName]             ,
	[OrderShipAddress]          ,
	[OrderShipCity]             ,
	[OrderShipRegion]           ,
	[OrderShipPostalCode]       ,
	[OrderShipCountry]          ,
	[CustomerID]				,
	[EmployeeID]							              
FROM DataRaw.SalesData_CSV
GO
*/

CREATE PROCEDURE INSorderProduct
AS
INSERT INTO DataModel.orderProduct(
	[OrderDate]                 ,
	[OrderRequiredDate]         ,
	[OrderShippedDate]          ,
	[OrderShipVia]              ,
	[OrderFreight]              ,
	[OrderShipName]             ,
	[OrderShipAddress]          ,
	[OrderShipCity]             ,
	[OrderShipRegion]           ,
	[OrderShipPostalCode]       ,
	[OrderShipCountry]          ,
	[CustomerID]				,
	[EmployeeID]                              
)
SELECT DISTINCT
[OrderProductID]                   ,
	[UnitPrice]                 ,
	[Quantity]                  ,
	[Discount]                  ,
	[ProductID]				,
	[OrderID]				

					              
FROM DataRaw.SalesData_CSV
GO