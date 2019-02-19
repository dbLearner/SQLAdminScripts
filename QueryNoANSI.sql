SELECT SOH.*, PC.FirstName + ' ' + PC.LastName As Salesman, PD.Name As Product, SOD.LineTotal 
FROM 	Sales.SalesOrderDetail SOD, 
	Production.Product PD, 
	Sales.SalesOrderHeader SOH, 
	Person.Person PC 
WHERE	SOD.ProductID = PD.ProductID
	and SOD.SalesOrderID = SOH.SalesOrderID
	and SOH.SalesPersonID =* PC.BusinessEntityID
	and SOD.LineTotal < 1000
	
ALTER DATABASE AdventureWorks2008 SET COMPATIBILITY_LEVEL = 100

SELECT PC.FirstName + ' ' + PC.LastName As Salesman, PD.Name AS Product, SOD.LineTotal
FROM Sales.SalesOrderDetail AS SOD 
  INNER JOIN Production.Product AS PD ON 
    SOD.ProductID = PD.ProductID 
  INNER JOIN Sales.SalesOrderHeader AS SOH ON 
    SOD.SalesOrderID = SOH.SalesOrderID 
  LEFT JOIN Person.Person AS PC ON 
    SOH.SalesPersonID = PC.BusinessEntityID
WHERE SOD.LineTotal < 1000