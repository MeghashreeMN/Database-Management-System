USE UNIVERSITY
GO

--Classroom
INSERT INTO [dbo].[Classroom]VALUES( 'Taft' ,500,60);
INSERT INTO [dbo].[Classroom]VALUES( 'Douglas' ,525,100);
INSERT INTO [dbo].[Classroom]VALUES( 'Stevenson' ,435,60);
INSERT INTO [dbo].[Classroom]VALUES( 'Burnham' ,420,80);
INSERT INTO [dbo].[Classroom]VALUES( 'Lincoln' ,300,120);
INSERT INTO [dbo].[Classroom]VALUES( 'Douglas' ,502,60);
INSERT INTO [dbo].[Classroom]VALUES( 'Stevenson' ,530,100);
INSERT INTO [dbo].[Classroom]VALUES( 'Burnham' ,440,60);
INSERT INTO [dbo].[Classroom]VALUES( 'Lincoln' ,425,80);
INSERT INTO [dbo].[Classroom]VALUES( 'Taft' ,305,120);
INSERT INTO [dbo].[Classroom]VALUES( 'Douglas' ,504,140);
INSERT INTO [dbo].[Classroom]VALUES( 'Stevenson' ,529,100);
INSERT INTO [dbo].[Classroom]VALUES( 'Burnham' ,439,60);
INSERT INTO [dbo].[Classroom]VALUES( 'Lincoln' ,424,60);
INSERT INTO [dbo].[Classroom]VALUES( 'Douglas' ,304,80);
INSERT INTO [dbo].[Classroom]VALUES( 'Douglas' ,506,120);
INSERT INTO [dbo].[Classroom]VALUES( 'Stevenson' ,531,140);
INSERT INTO [dbo].[Classroom]VALUES( 'Burnham' ,441,60);
INSERT INTO [dbo].[Classroom]VALUES( 'Lincoln' ,426,140);
INSERT INTO [dbo].[Classroom]VALUES( 'Stevenson' ,533,80);

--time_slot_id
INSERT INTO [dbo].[TimeSlot] VALUES( 1 ,'2021-08-23','09:00:00.000000','10:00:00.000000');
INSERT INTO [dbo].[TimeSlot] VALUES( 2 ,'2021-08-24','10:00:00.000000','11:00:00.000000');
INSERT INTO [dbo].[TimeSlot] VALUES( 3 ,'2021-08-25','09:00:00.000000','10:30:00.000000');
INSERT INTO [dbo].[TimeSlot] VALUES( 4 ,'2021-08-26','09:00:00.000000','11:30:00.000000');
INSERT INTO [dbo].[TimeSlot] VALUES( 5 ,'2021-08-31','06:00:00.000000','07:00:00.000000');
INSERT INTO [dbo].[TimeSlot] VALUES( 6 ,'2021-09-01','09:00:00.000000','10:45:00.000000');
INSERT INTO [dbo].[TimeSlot] VALUES( 7 ,'2021-09-03','06:00:00.000000','09:00:00.000000');
INSERT INTO [dbo].[TimeSlot] VALUES( 8 ,'2021-09-04','09:00:00.000000','10:30:00.000000');
INSERT INTO [dbo].[TimeSlot] VALUES( 9 ,'2021-09-06','09:00:00.000000','10:00:00.000000');
INSERT INTO [dbo].[TimeSlot] VALUES( 10 ,'2021-09-13','10:00:00.000000','11:00:00.000000');
INSERT INTO [dbo].[TimeSlot] VALUES( 11 ,'2021-09-23','09:00:00.000000','10:30:00.000000');
INSERT INTO [dbo].[TimeSlot] VALUES( 12 ,'2021-09-24','09:00:00.000000','11:30:00.000000');
INSERT INTO [dbo].[TimeSlot] VALUES( 13 ,'2021-10-01','06:00:00.000000','07:00:00.000000');
INSERT INTO [dbo].[TimeSlot] VALUES( 14 ,'2021-10-03','09:00:00.000000','10:45:00.000000');
INSERT INTO [dbo].[TimeSlot] VALUES( 15 ,'2021-10-05','06:00:00.000000','09:00:00.000000');
INSERT INTO [dbo].[TimeSlot] VALUES( 16 ,'2021-10-06','09:00:00.000000','10:30:00.000000');
INSERT INTO [dbo].[TimeSlot] VALUES( 17 ,'2021-10-09','09:00:00.000000','10:00:00.000000');
INSERT INTO [dbo].[TimeSlot] VALUES( 18 ,'2021-10-11','06:00:00.000000','09:00:00.000000');
INSERT INTO [dbo].[TimeSlot] VALUES( 19 ,'2021-10-13','09:00:00.000000','10:30:00.000000');
INSERT INTO [dbo].[TimeSlot] VALUES( 20 ,'2021-10-15','09:00:00.000000','10:00:00.000000');

--DEPARTMENT
INSERT INTO [dbo].[Department] VALUES( 'Marketing' ,'Taft',500000);
INSERT INTO [dbo].[Department] VALUES( 'Finance' ,'Douglas',300000);
INSERT INTO [dbo].[Department] VALUES( 'Accounting' ,'Stevenson',400000);
INSERT INTO [dbo].[Department] VALUES( 'Art History','Burnham',400000);
INSERT INTO [dbo].[Department] VALUES( 'Operations' ,'Lincoln',450000);
INSERT INTO [dbo].[Department] VALUES( 'Business Analytics' ,'Quad1',500000);
INSERT INTO [dbo].[Department] VALUES( 'Statistics' ,'Quad2',550000);
INSERT INTO [dbo].[Department] VALUES( 'Applied Health Sciences' ,'Lincoln',500000);
INSERT INTO [dbo].[Department] VALUES( 'Architecture' ,'Taft',450000);
INSERT INTO [dbo].[Department] VALUES( 'Information Decision Sciences' ,'Quad3',600000);
INSERT INTO [dbo].[Department] VALUES( 'Business Administration' ,'Stevenson',450000);
INSERT INTO [dbo].[Department] VALUES( 'Chemistry' ,'Quad4',350000);
INSERT INTO [dbo].[Department] VALUES( 'Computer Science' ,'Lincoln',650000);
INSERT INTO [dbo].[Department] VALUES( 'Dental Administration' ,'Quad5',450000);
INSERT INTO [dbo].[Department] VALUES( 'French' ,'Burnham',400000);
INSERT INTO [dbo].[Department] VALUES( 'Humanities' ,'Lincoln',450000);
INSERT INTO [dbo].[Department] VALUES( 'Intellectual Property' ,'Taft',650000);
INSERT INTO [dbo].[Department] VALUES( 'Italian' ,'Burnham',350000);
INSERT INTO [dbo].[Department] VALUES( 'Mathematics' ,'Lincoln',700000);
INSERT INTO [dbo].[Department] VALUES( 'Music' ,'Quad6',450000);

--Course
INSERT INTO [dbo].[Course] VALUES( 1 ,'Intro to Marketing',4,'Marketing');
INSERT INTO [dbo].[Course] VALUES( 2 ,'Basics of Finance',2,'Finance');
INSERT INTO [dbo].[Course] VALUES( 3 ,'Accounting Foundation',2,'Accounting');
INSERT INTO [dbo].[Course] VALUES( 4 ,'BDV basics',2, 'Information Decision Sciences');
INSERT INTO [dbo].[Course] VALUES( 5 ,'Operations management',4,'Operations');
INSERT INTO [dbo].[Course] VALUES( 6 ,'ISSP',2, 'Information Decision Sciences');
INSERT INTO [dbo].[Course] VALUES( 7 ,'Intro to Statistics',4, 'Information Decision Sciences');
INSERT INTO [dbo].[Course] VALUES( 8 ,'Data Mining',2, 'Business Analytics');
INSERT INTO [dbo].[Course] VALUES( 9 ,'Project Management',2, 'Business Administration');
INSERT INTO [dbo].[Course] VALUES( 10 ,'Web Analytics',4, 'Business Administration');
INSERT INTO [dbo].[Course] VALUES( 11 ,'ADBMS',3, 'Information Decision Sciences');
INSERT INTO [dbo].[Course] VALUES( 12 ,'Java Foundations',3, 'Information Decision Sciences');
INSERT INTO [dbo].[Course] VALUES( 13 ,'Python',2, 'Information Decision Sciences');
INSERT INTO [dbo].[Course] VALUES( 14 ,'Vendor Management',2, 'Business Administration');
INSERT INTO [dbo].[Course] VALUES( 15 ,'Co-Op',4,'Computer Science' );
INSERT INTO [dbo].[Course] VALUES( 16 ,'Machine Learning',4,'Computer Science');
INSERT INTO [dbo].[Course] VALUES( 17 ,'Modern Architecture',4,'Architecture');
INSERT INTO [dbo].[Course] VALUES( 18 ,'Intermediate French',2, 'French');
INSERT INTO [dbo].[Course] VALUES( 19 ,'Engaged Humatities',2,'Humanities');
INSERT INTO [dbo].[Course] VALUES( 20 ,'World History of Art',4,'Art History');
 
--Prereq
INSERT INTO [dbo].[Prereq] VALUES( 1 ,NULL);
INSERT INTO [dbo].[Prereq] VALUES( 2 ,2);
INSERT INTO [dbo].[Prereq] VALUES( 3 ,4);
INSERT INTO [dbo].[Prereq] VALUES( 4 ,NULL);
INSERT INTO [dbo].[Prereq] VALUES( 5 ,3);
INSERT INTO [dbo].[Prereq] VALUES( 6 ,7);
INSERT INTO [dbo].[Prereq] VALUES( 7 ,2);
INSERT INTO [dbo].[Prereq] VALUES( 8 ,NULL);
INSERT INTO [dbo].[Prereq] VALUES( 9 ,18);
INSERT INTO [dbo].[Prereq] VALUES( 10, 9);
INSERT INTO [dbo].[Prereq] VALUES( 11 ,19);
INSERT INTO [dbo].[Prereq] VALUES( 12 ,NULL);
INSERT INTO [dbo].[Prereq] VALUES( 13 ,NULL);
INSERT INTO [dbo].[Prereq] VALUES( 14 ,NULL);
INSERT INTO [dbo].[Prereq] VALUES( 15 ,7);
INSERT INTO [dbo].[Prereq] VALUES( 16 ,8);
INSERT INTO [dbo].[Prereq] VALUES( 17 ,9);
INSERT INTO [dbo].[Prereq] VALUES( 18 ,10);
INSERT INTO [dbo].[Prereq] VALUES( 19 ,NULL);
INSERT INTO [dbo].[Prereq] VALUES( 20 ,NULL);

--Section
INSERT INTO [dbo].[Section] VALUES( 3211,'1',2021,1 ,'Taft',500,1);
INSERT INTO [dbo].[Section] VALUES( 3244,'1',2021,2 ,'Douglas',525,2);
INSERT INTO [dbo].[Section] VALUES( 3212,'1',2021,3 ,'Stevenson',435,3);
INSERT INTO [dbo].[Section] VALUES( 3245,'1',2021,4 ,'Burnham',420,4);
INSERT INTO [dbo].[Section] VALUES( 3213,'1',2021,5 ,'Lincoln',424,5);
INSERT INTO [dbo].[Section] VALUES( 3246,'2',2022,6 ,'Douglas',502,6);
INSERT INTO [dbo].[Section] VALUES( 3214,'2',2022,7 ,'Stevenson',530,7);
INSERT INTO [dbo].[Section] VALUES( 3247,'2',2022,8 ,'Burnham',440,8);
INSERT INTO [dbo].[Section] VALUES( 3215,'2',2022,9 ,'Lincoln',425,9);
INSERT INTO [dbo].[Section] VALUES( 3248,'2',2022,10 ,'Taft',305,10);
INSERT INTO [dbo].[Section] VALUES( 3216,'3',2022,11 ,'Douglas',504,11);
INSERT INTO [dbo].[Section] VALUES( 3249,'3',2022,12 ,'Stevenson',529,12);
INSERT INTO [dbo].[Section] VALUES( 3217,'3',2022,13 ,'Burnham',420,13);
INSERT INTO [dbo].[Section] VALUES( 3250,'3',2022,14 ,'Lincoln',424,14);
INSERT INTO [dbo].[Section] VALUES( 3218,'3',2022,15 ,'Lincoln',425,15);
INSERT INTO [dbo].[Section] VALUES( 3251,'4',2023,16 ,'Douglas',506,16);
INSERT INTO [dbo].[Section] VALUES( 3219,'4',2023,17 ,'Stevenson',531,17);
INSERT INTO [dbo].[Section] VALUES( 3252,'4',2023,18 ,'Stevenson',435,18);
INSERT INTO [dbo].[Section] VALUES( 3220,'4',2023,19 ,'Lincoln',426,19);
INSERT INTO [dbo].[Section] VALUES( 3253,'5',2023,20 ,'Stevenson',533,20);

--INSTRUCTOR
INSERT INTO [dbo].[Instructor] VALUES( 101 ,'Arsh Khan',70000,'Marketing');
INSERT INTO [dbo].[Instructor] VALUES( 103 ,'Robert Hill',80000,'Finance');
INSERT INTO [dbo].[Instructor] VALUES( 105 ,'John Botts',75000,'Accounting');
INSERT INTO [dbo].[Instructor] VALUES( 107 ,'Yingda Jang',65000,'Art History');
INSERT INTO [dbo].[Instructor] VALUES( 109 ,'Matt Channel',90000,'Business Analytics');
INSERT INTO [dbo].[Instructor] VALUES( 111 ,'Frank Vickers',76000,'Marketing');
INSERT INTO [dbo].[Instructor] VALUES( 113 ,'Patricia King',86000,'Applied Health Sciences');
INSERT INTO [dbo].[Instructor] VALUES( 115 ,'Michael Naidu',81000,'Accounting');
INSERT INTO [dbo].[Instructor] VALUES( 117 ,'Bill Watts',71000,'Chemistry');
INSERT INTO [dbo].[Instructor] VALUES( 119 ,'Martha Sargent',96000,'Operations');
INSERT INTO [dbo].[Instructor] VALUES( 121 ,'Ann Varela',76000,'French');
INSERT INTO [dbo].[Instructor] VALUES( 123 ,'Christian Fraust',86000,'Finance');
INSERT INTO [dbo].[Instructor] VALUES( 125 ,'Fred Schuler',81000,'Accounting');
INSERT INTO [dbo].[Instructor] VALUES( 127 ,'Arvind Nair',71000,'Humanities');
INSERT INTO [dbo].[Instructor] VALUES( 129 ,'Eva Lord',96000,'Operations');
INSERT INTO [dbo].[Instructor] VALUES( 131 ,'Hasan Minhaj',70000,'Italian');
INSERT INTO [dbo].[Instructor] VALUES( 133 ,'Teresa Lisbon',80000,'Finance');
INSERT INTO [dbo].[Instructor] VALUES( 135 ,'Amit Jha',75000,'Accounting');
INSERT INTO [dbo].[Instructor] VALUES( 137 ,'Patrick Jane',65000,'Music');
INSERT INTO [dbo].[Instructor] VALUES( 139 ,'Wylie Shaw',90000,'Mathematics');

--Student
INSERT INTO [dbo].[Student] VALUES( 660225277,'Anne Sullivan' ,32,'Finance', 101);
INSERT INTO [dbo].[Student] VALUES( 660225301,'Erin Gruwell' ,44,'Marketing', 103);
INSERT INTO [dbo].[Student] VALUES( 660225325,'Frederick Douglass' ,32,'Accounting', 105);
INSERT INTO [dbo].[Student] VALUES( 660225349,'Friedrich Froebel' ,32,'Humanities', 107);
INSERT INTO [dbo].[Student] VALUES( 660225373,'Maria Montessori' ,44,'Operations', 111);
INSERT INTO [dbo].[Student] VALUES( 660225397,'Spike Lee' ,40,'Marketing', 137);
INSERT INTO [dbo].[Student] VALUES( 660225421,'Toni Morrison' ,36,'Finance', 139);
INSERT INTO [dbo].[Student] VALUES( 660225445,'Toru Kumon' ,44,'Marketing', 133);
INSERT INTO [dbo].[Student] VALUES( 660225469,'Dan Dunne' ,46,'Operations', 139);
INSERT INTO [dbo].[Student] VALUES( 660225493,'Marva Collins' ,34,'Accounting', 119);
INSERT INTO [dbo].[Student] VALUES( 660225517,'Gerald Lambeau' ,44,'Marketing', 121);
INSERT INTO [dbo].[Student] VALUES( 660225541,'Joe Clark' ,44,'Operations', 113);
INSERT INTO [dbo].[Student] VALUES( 660225565,'Naina Mathur ' ,28,'Italian', 115);
INSERT INTO [dbo].[Student] VALUES( 660225589,'Albus Dumbledore' ,26,'Italian', 107);
INSERT INTO [dbo].[Student] VALUES( 660225613,'George Feeny' ,46,'Finance',105);
INSERT INTO [dbo].[Student] VALUES( 660225637,'Shota Aizawa' ,32,'Accounting',137);
INSERT INTO [dbo].[Student] VALUES( 660225661,'Yukio Okumura' ,32,'Operations', 139);
INSERT INTO [dbo].[Student] VALUES( 660225685,'Izumi Curtis' ,44,'Finance', 101);
INSERT INTO [dbo].[Student] VALUES( 660225709,'Dewey Finn' ,46,'Operations', 105);
INSERT INTO [dbo].[Student] VALUES( 660225733,'Hitesh Asnani' ,42,'Finance',115);
 
--TAKES
INSERT INTO [dbo].[Takes] VALUES( 660225277,3211 ,1,2021, 'A');
INSERT INTO [dbo].[Takes] VALUES( 660225301,3244 ,1,2021, 'A');
INSERT INTO [dbo].[Takes] VALUES( 660225325,3212 ,1,2021, 'A');
INSERT INTO [dbo].[Takes] VALUES( 660225349,3245 ,1,2021, 'B');
INSERT INTO [dbo].[Takes] VALUES( 660225373,3213 ,1,2021, 'A');
INSERT INTO [dbo].[Takes] VALUES( 660225397,3246 ,2,2022, 'B');
INSERT INTO [dbo].[Takes] VALUES( 660225421,3214 ,2,2022, 'B');
INSERT INTO [dbo].[Takes] VALUES( 660225445,3247 ,2,2022, 'A');
INSERT INTO [dbo].[Takes] VALUES( 660225469,3215 ,2,2022, 'A');
INSERT INTO [dbo].[Takes] VALUES( 660225493,3248 ,2,2022, 'B');
INSERT INTO [dbo].[Takes] VALUES( 660225517,3216 ,3,2022, 'A');
INSERT INTO [dbo].[Takes] VALUES( 660225541,3249 ,3,2022, 'A');
INSERT INTO [dbo].[Takes] VALUES( 660225565,3217 ,3,2022, 'A');
INSERT INTO [dbo].[Takes] VALUES( 660225589,3250 ,3,2022, 'B');
INSERT INTO [dbo].[Takes] VALUES( 660225613,3218 ,3,2022, 'B');
INSERT INTO [dbo].[Takes] VALUES( 660225637,3251 ,4,2023, 'A');
INSERT INTO [dbo].[Takes] VALUES( 660225661,3219 ,4,2023, 'A');
INSERT INTO [dbo].[Takes] VALUES( 660225685,3252 ,4,2023, 'B');
INSERT INTO [dbo].[Takes] VALUES( 660225709,3220 ,4,2023, 'A');
INSERT INTO [dbo].[Takes] VALUES( 660225733,3253 ,5,2023, 'A');

 
--Teaches
INSERT INTO [dbo].[Teaches] VALUES( 101 , 3211 ,1,2021);
INSERT INTO [dbo].[Teaches] VALUES( 103 , 3244 ,1,2021);
INSERT INTO [dbo].[Teaches] VALUES( 105 , 3212 ,1,2021);
INSERT INTO [dbo].[Teaches] VALUES( 107 , 3245 ,1,2021);
INSERT INTO [dbo].[Teaches] VALUES( 109 , 3213 ,1,2021);
INSERT INTO [dbo].[Teaches] VALUES( 111 , 3246 ,2,2022);
INSERT INTO [dbo].[Teaches] VALUES( 113 , 3214 ,2,2022);
INSERT INTO [dbo].[Teaches] VALUES( 115 , 3247 ,2,2022);
INSERT INTO [dbo].[Teaches] VALUES( 117 , 3215 ,2,2022);
INSERT INTO [dbo].[Teaches] VALUES( 119 , 3248 ,2,2022);
INSERT INTO [dbo].[Teaches] VALUES( 121 , 3216 ,3,2022);
INSERT INTO [dbo].[Teaches] VALUES( 123 , 3249 ,3,2022);
INSERT INTO [dbo].[Teaches] VALUES( 125 , 3217 ,3,2022);
INSERT INTO [dbo].[Teaches] VALUES( 127 , 3250 ,3,2022);
INSERT INTO [dbo].[Teaches] VALUES( 129 , 3218 ,3,2022);
INSERT INTO [dbo].[Teaches] VALUES( 131 , 3251 ,4,2023);
INSERT INTO [dbo].[Teaches] VALUES( 133 , 3219 ,4,2023);
INSERT INTO [dbo].[Teaches] VALUES( 135 , 3252 ,4,2023);
INSERT INTO [dbo].[Teaches] VALUES( 137 , 3220 ,4,2023);
INSERT INTO [dbo].[Teaches] VALUES( 139 , 3253 ,5,2023);    
 
 

 
 
