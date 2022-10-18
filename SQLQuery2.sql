--Select

Select * from Customers

Select ContactName, CompanyName, City from Customers 
--Select ContactName Adi, CompanyName Sirketadi, City Sehir from Customers

Select * from Customers where City = 'London'

Select * from Products where CategoryID = 1 or CategoryID = 3

Select * from Products where CategoryID = 1 and UnitPrice >= 10

Select * from Products order by UnitPrice asc
Select * from Products order by UnitPrice desc

Select * from Products where CategoryID = 1 order by ProductName asc

Select count(*) from Product
Select count(*) Adet from Product where CategoryID = 2

Select CategoryID, count(*) from products where UnitPrice > 20 group by CategoryID having count(*) < 10

Select * from Products inner join Categories on Products.CategoryID = Categories.CategoryID

Select Products.ProductID, Products.ProductName, Products.UnitPrice, Categories.CategoryName 
from Products inner join Categories 
on Products.CategoryID = Categories.CategoryID
where Products.UnitPrice > 10

Select * from Products p left join [Order Details] od on p.ProductID = od.ProductID

Select * from Customers c left join Orders o on c.CustomerID = o.CustomerID where o.CustomerID is null
