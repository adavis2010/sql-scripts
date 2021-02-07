select s.lastname, m.description 
from Student s
left join Major m on m.Id = s.MajorId;