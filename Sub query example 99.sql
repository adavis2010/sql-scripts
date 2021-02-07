Select * from Student
Where GPA > (select avg(GPA) from Student);