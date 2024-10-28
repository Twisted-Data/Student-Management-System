-- CREATING TABLE students.
create table students (
 student_id INT PRIMARY KEY, 
 first_name VARCHAR(50), 
 last_name VARCHAR(50), 
 dob DATE, 
 email VARCHAR(50), 
 phone_number INT
);
select * from students; 

-- CREATING TABLE courses: 
create table courses (
course_id INT PRIMARY KEY, 
course_name VARCHAR(50), 
course_code INT,
credits INT
);
select * from courses;

-- CREATING TABLE  enrollments:
CREATE TABLE enrollments(
 enrollment_id INT PRIMARY KEY,
 student_id INT, 
 course_id INT, 
enrollment_date DATE
);
select * from enrollments;

-- CREATING TABLE  grades: 
create table grades(
grade_id INT PRIMARY KEY,
enrollment_id INT, 
grade INT
);
select * from grades;

Alter table students Add address VARCHAR(50);

Alter table courses  Modify course_name VARCHAR(100);

Alter table grades  Modify grade INT;

Alter table courses  Modify course_code VARCHAR(100);

Alter table courses modify credits INT after course_code;

Alter table students rename column dob to date_of_birth;

insert into students (student_id, first_name, last_name, date_of_birth, email, phone_number, address) VALUES
(1, 'James', 'Benton',  '2009-10-23', 'jbutt@gmail.com', 6218927, '6649 N Blue Gum St'),
(2, 'Josephine', 'Darakjy', '1998-02-23', 'josephine_darakjy@darakjy.org', 3749840, '4B Blue Ridge Blvd'),
(3, 'Art', 'Venere', '1998-02-23', 'art@venere.org', 2644138, 'W Cerritos Ave #54'),
(4, 'Lenna', 'Paprocki', '1976-05-08', 'lpaprocki@hotmail.com', 9212010, '639 Main St'),	
(5, 'Donette', 'Foller', '1989-05-30', 'donette.foller@cox.net', 5701893, '34 Center St'),
(6, 'Simona', 'Morasca', '1978-08-05', 'simona@morasca.com', 8006759, '3 Mcauley Dr'),
(7, 'Mitsue', 'Tollner', '1970-09-03', 'mitsue_tollner@yahoo.com', 5736914, '7 Eads St'),	
(8, 'Leota', 'Dilliard', '1990-09-21', 'leota@hotmail.com', 8131105, '7 W Jackson Blvd'),
(9, 'Sage', 'Wieser', '1980-09-08', 'sage_wieser@cox.net', 7944895, '5 Boston Ave #88'),
(10, 'Kris', 'Marrier', '1980-09-08', 'kris@gmail.com', 8044694, '28 Runamuck Pl #2808'),
(11, 'Minna', 'Amigon',	'2000-02-03',	'minna_amigon@yahoo.com', 4228694, 'Jerrold Ave'),
(12, 'Abel', 'Maclead',	'1975-09-24', 'amaclead@gmail.com', 6773675, '37275 St  Rt 17m'),
(13, 'Kiley', 'Caldarera', '1984-05-02', 'kiley.caldarera@aol.com', 2543084, '25 E 75th St'), 
(14, 'Graciela', 'Ruta', '1970-04-25', 'gruta@cox.net', 5797763, '98 Connecticut Ave Nw'), 
(15, 'Cammy', 'Albares', '1971-01-09', 'calbares@gmail.com', 8417216, '56 E Morehead St'),
(16, 'Mattie', 'Poquette', '1998-12-09', 'mattie@aol.com', 9536360, '73 State Road 434 E'),
(17, 'Meaghan',	'Garufi', '1980-09-09', 'meaghan@hotmail.com', 2357959, '69734 E Carrillo St'),
(18, 'Gladys', 'Rim', '1979-10-09', 'gladys.rim@rim.org', 414-377-2880, '322 New Horizon Blvd'),
(19, 'Yuki', 'Wstudentshobrey', '1987-03-07', 'yuki_whobrey@aol.com', 3414470, 'Farmers	1 State Route 27'),
(20, 'Fletcher', 'Flosi', '1969-01-09', 'fletcher.flosi@yahoo.com', 815-426-5657, '394 Manchester Blvd'),
(21, 'Bette', 'Nicka', '1988-09-09', 'bette_nicka@cox.net', 4924643, '6S 33rd St'),
(22, 'Veronika', 'Inouye', '2000-05-01', 'vinouye@aol.com', 8134592, '6 Greenleaf Ave'),
(23, 'Willard', 'Kolmetz', '1991-02-09', 'willard@hotmail.com', 8964882, '618 W Yakima Ave'),
(24, 'Maryann',	'Royster', '1999-09-07', 'mroyster@royster.com', 4488982, '74 S Westgate St'),
(25, 'Alisha', 'Slusarski' , '1979-12-09', 'alisha@slusarski.com', 6353453, '3273 State St'),
(26, 'Allene',	'Iturbide', '1998-01-01', 'allene_iturbide@cox.net', 6626764, '1 Central Ave'),
(27, 'Chanel', 'Caudy', '2002-09-03', 'chanel.caudy@caudy.org', 8991103, '86 Nw 66th St #8673'),
(28, 'Ezekiel',	'Chui', '1997-09-02',  'ezekiel@chui.com', 2358738, '2 Cedar Ave #84'),
(29, 'Willow', 'Kusko', '1998-09-09', 'wkusko@yahoo.com', 9345167, '90991 Thorburn Ave'),
(30, 'Bernardo', 'Figeroa', '1999-01-02', 'bfigeroa@aol.com', 3363951, '386 9th Ave N');

INSERT INTO courses (course_id, course_name, course_code, credits) Values
(1, 'Mathematics for dummies 1', 'MTH101', 3),
(2, 'Mathematics for dummies 2', 'MTH102', 3),
(3, 'Physical chemistry 1', 'CHM101', 2),
(4, 'Physical chemistry 2', 'CHM102', 2),
(5, 'Introductory Physics 1', 'PHY101', 3),
(6, 'Introductory Physics 2', 'PHY102', 3),
(7, 'Biology for sciences', 'BIO101', 2),
(8, 'Use of English', 'SER101', 2 ),
(9, 'Introductory Sociology', 'SOC101', 2),
(10, 'Introductory Psycology', 'PSY101', 2);

INSERT INTO enrollments (enrollment_id, student_id, course_id, enrollment_date) Values
(1001, 24, 3, '2010-03-12'),
(1002, 18, 5, '2010-04-05'),
(1003, 7, 7, '2010-03-27'),
(1004, 8, 8, '2010-04-03'),
(1005, 23, 6, '2010-03-20'),
(1006, 12, 2, '2010-04-04'),
(1007, 11, 4, '2010-03-09'),
(1008, 10, 1, '2010-04-01'),
(1009, 13, 9, '2010-04-02'),
(1010, 14, 10, '2010-03-09'),
(1011, 23, 7, '2010-04-03'),
(1012, 24, 9, '2010-03-27'),
(1013, 8, 2, '2010-03-28');

INSERT INTO grades (grade_id, enrollment_id, grade) Values
(1, 1001, 75),
(2, 1002, 65),
(3, 1003, 55),
(4, 1004, 60),
(5, 1005, 56),
(6, 1006, 60),
(7, 1007, 67),
(8, 1008, 87),
(9, 1009, 78),
(10, 1010, 50),
(11, 1011, 70),
(12, 1012, 75),
(13, 1013, 59);

select s.student_id, s.first_name, s.last_name, c.course_id, c.course_name, c.course_code
from students as s
left join courses as c
on s.student_id = c.course_id;

select s.student_id, first_name, last_name, e.student_id, e.enrollment_id, g.enrollment_id, grade, avg(grade)
from students as s
left join enrollments as e 
on s.student_id = e.student_id
left join grades as g
on e.enrollment_id = g.enrollment_id
WHERE grade is null;

select s.student_id, first_name, last_name, e.student_id, e.enrollment_id, g.enrollment_id, grade, avg(grade) as average_grade
from students as s
join enrollments as e 
on s.student_id = e.student_id
left join grades as g
on e.enrollment_id = g.enrollment_id
group by s.student_id, first_name, last_name, e.student_id, e.enrollment_id, g.enrollment_id, grade
order by s.student_id;

select s.student_id, first_name, last_name, e.student_id, e.enrollment_id, g.enrollment_id, grade,
CASE
when grade >= 70 then 'A'
when grade >= 60 then 'B'
when grade  >= 50 then 'C'
when grade >= 45 then 'D'
when grade > 40 then 'E'
else 'F'
end numerical_grade 
from students as s
inner join enrollments as e 
on s.student_id = e.student_id
left join grades as g
on e.enrollment_id = g.enrollment_id
order by s.student_id;


select s.student_id, first_name, last_name, e.student_id, e.enrollment_id, g.enrollment_id, g.grade
from students as s
join enrollments as e 
on s.student_id = e.student_id
left join grades as g
on e.enrollment_id = g.enrollment_id
where g.grade = (
SELECT MAX(g3.grade)
from grades as g3
where g3.enrollment_id = g.enrollment_id
)
