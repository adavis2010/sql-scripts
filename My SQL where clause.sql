select * from student;

INSERT Student
(Firstname, Lastname, SAT, GPA)
VALUES
('Andrea', 'Davis', 1800, 3.75);

INSERT student
(Firstname, Lastname, SAT, GPA, MajorId)
VALUES
('Smart1', 'Engineer', 1200, 3.5),
('Smart2', 'Engineer', 1200, 3.5),
('Smart3', 'Engineer', 1200, 3.5);
(Select Id from Major where description = 'Engineering')
);