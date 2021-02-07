select lastname, 
ISNULL(m.description, 'Undeclared') as 'Major'
From Student s
left join Major m on m.id = s.MajorId
where statecode = 'MI';