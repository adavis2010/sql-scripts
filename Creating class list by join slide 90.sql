Select m.description, c.Code, c.subject
from Major m
Join Majorclass mc on m.id = mc.Majorid
join class c on c.id = mc.classid;