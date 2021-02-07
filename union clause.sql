Select Lastname, 'A' as 'ABC' from Student s 
where SAT > 1200
Union 
Select Lastname, 'B' as 'ABC' from Student
where SAT <=1200 and SAT > 1000
Union
Select Lastname, 'C' as 'ABC' from Student 
where SAT < 1000;