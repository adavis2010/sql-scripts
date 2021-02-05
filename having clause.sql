select m.description as 'Major', Avg(gpa)
from Student s
join Major m on m.id = s.MajorId
group by m.Description
having avg (gpa) > = 3.0


