Insert Student (firstname, lastname, statecode, SAT, GPA, MajorID)
Values ('Noah','Phense','GA','1235','3.15',
(Select Id from Major where description ='Math'));