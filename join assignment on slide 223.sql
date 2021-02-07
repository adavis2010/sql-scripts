Select s.lastname, c.subject, c.code
from Student s 
join StudentClass sc on s.Id = sc.StudentId
join class c on sc.ClassId = c.Id;
