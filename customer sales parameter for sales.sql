declare @custsales decimal (9,2) =20000



Select *
from Customers
where Sales <=@custsales  
