Declare @sat int = 1200
select * from Student
where SAT >=@sat
Order by SAT desc, Lastname asc;