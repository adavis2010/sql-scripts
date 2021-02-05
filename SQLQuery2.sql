select * 
from Customers c
left join Orders o on o.CustomerId = c.Id
left join OrderLines ol on ol.OrdersId = o.Id
order by c.name 