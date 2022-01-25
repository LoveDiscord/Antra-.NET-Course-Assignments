/* Nekiah Jefferies 
   Assignment 1
*/

-- Query 1 --
Select ProductID, Name, Color, ListPrice
From Production.Product

-- Query 2 --
Select ProductID, Name, Color, ListPrice
From Production.Product
Where ListPrice Not in (0.00)

-- Query 3 --
Select ProductID, Name, Color, ListPrice
From Production.Product
Where Color Is Null

-- Query 4 --
Select ProductID, Name, Color, ListPrice 
From Production.Product
Where Color Is Not NULL

-- Query 5 --
Select ProductID, Name, Color, ListPrice 
From Production.Product
Where Color is not NULL AND ListPrice > 0.00

-- Query 6 --
Select Concat(Name, ' ', Color) as Name
From Production.Product
Where Color Is Not NULL

-- Query 7 -- 
Select Concat('NAME: ', Name, ' -- COLOR: ', Color) as List
From Production.Product
Where Color is not NULL

-- Query 8 --
Select ProductID, Name
From Production.Product
Where ProductID >= 400 AND ProductID <= 500

-- Query 9 --
Select ProductID, Name, Color
From Production.Product
Where Color In ('Black', 'Blue')

-- Query 10 --
Select Name
From Production.Product
Where Name Like 'S%'

-- Query 11 --
Select Name, ListPrice
From Production.Product
Where Name Like 'S%'
Order By Name

-- Query 12 --
Select Name, ListPrice
From Production.Product
Where Name Like '[as]%'
Order By Name

-- Query 13 --
Select Name
From Production.Product
Where Name Like 'SPO___%' and Name Not Like 'SPOK%'
Order By Name

-- Query 14 --
Select Distinct Color
From Production.Product
Order By Color Desc

-- Query 15 --
Select Distinct ProductSubcategoryID, Color
From Production.Product
Where Color is Not NULL and ProductSubcategoryID is not NULL
