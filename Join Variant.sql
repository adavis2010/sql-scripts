select s.Lastname, m.Description
from Student s
left join Major m on s.MajorId = m.id
where s.id <=10;
