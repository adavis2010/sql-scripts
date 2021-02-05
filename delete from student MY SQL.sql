delete from Student
where id in ( 
select id from student 
where gpa = 4.24
and lastname = 'Engineer'
and firstname = 'Smart');


select id from student 
where gpa = 4.24
and lastname = 'Engineer'
and firstname = 'Smart';
