declare @lowdate datetime ='2017-10-01 00:00:00';
declare @highdate datetime = '2017-12-31 23:59:59'

Select *
from Orders
where date >= @lowdate
and Date<= @highdate