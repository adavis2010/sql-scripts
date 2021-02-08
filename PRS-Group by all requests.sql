select r.description, sum(p.price * li.quantity) as 'Total'
	from requests r 
	Join users u on u.id = r.userid
	join lineitems li on li.requestid = r.id
	join products p on p.id = li.productid
    join vendors v on v.id =p.vendorid
    Group by r.description;
    