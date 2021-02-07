Declare @gpalow float = 2.7
Declare @gpahigh float = 3.5;
select lastname, GPA from Student
where GPA>=@gpalow and GPA<=@gpahigh
Order by SAT asc;