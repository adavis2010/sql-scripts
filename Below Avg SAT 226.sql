select Lastname, SAT
from Student 
where SAT < (select AVG (SAT)from Student);