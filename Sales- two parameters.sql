declare @custhigh decimal (9,2) =20000
declare @custlow decimal (9,2) =10000



Select *
from Customers
where Sales between @custlow 
and @custhigh