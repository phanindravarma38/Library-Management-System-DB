DROP TABLE Borrowed_By;
DROP TABLE Written_By;
DROP TABLE HasRel_AutPhone;
DROP TABLE Stored_on;
DROP TABLE HasRel_PubPhone;
DROP TABLE Phone;
DROP TABLE Author;
DROP TABLE Members;
DROP TABLE Books;
DROP TABLE Publisher;
DROP TABLE Shelf;
DROP TABLE Audit;
DROP TABLE Library;
create table Phone(
P_Number varchar(12) primary key,
Type varchar(3)
);
insert into Phone(P_Number,Type) values 
('970-555-1010','h'),
('970-555-1000','c'),
('970-555-1100','o'),
('303-555-1200','h'),
('303-555-1210','c'),
('970-555-1400','c'),
('970-555-1600','h'),
('970-555-1800','c'),
('970-555-1900','h'),
('970-555-2000','h'),
('970-555-2010','c'),
('970-555-2001','h'),
('970-555-2020','c'),
('970-555-2300','o'),
('970-555-2401','c'),
('970-555-2403','o'),
('970-555-2400','h'),
('970-555-2402','c'),
('970-555-5000','o'),
('970-555-5010','o'),
('970-555-5020','o'),
('970-555-5030','o'),
('970-555-5040','o'),
('970-555-5050','o'),
('970-555-5060','o'),
('970-555-5070','c'),
('970-555-5080','o');


create table Author(
AuthorID int primary key,
F_Name varchar(20),
L_Name varchar(20)
);
insert into Author (AuthorID, F_name , L_name ) values
 (101, 'Bobby', 'Ewing')
,(102, 'Red', 'Skelton')
,(201, 'Thomas', 'Magnum')
,(202, 'Julie' , 'Barnes')
,(203, 'Roger', 'Ramjet')
,(204, 'Mickey', 'Hart')
,(205, 'Grace', 'Slick')
,(206, 'Perry', 'Mason')
,(207, 'Dickey', 'Betts')
,(208, 'Waco' , 'Kid')
,(209, 'Roger', 'Thornhill')
,(210, 'Scottie', 'Ferguson')
,(301, 'Barbara', 'Wright')
,(302, 'John', 'Crichton')
,(303, 'Aeon', 'Flux')
,(304, 'Robert', 'Crawley');

create table Members(
MemberID int not null primary key,
F_Name varchar(20),
L_Name varchar(20),
DOB date
);
insert into Members(MemberID,F_name,L_name,DOB) values
 (1000, 'Wiley','Coyote','1961-9-10'),
 (1100,'Bugs','Bunny','1990-6-24'),
 (1200,'Olive','Oyl','1989-7-19'),
 (1300,'Alice','Wonderland','1989-7-19'),
 (1400,'Roger','Ramjet','1985-1-13'),
 (1500,'Larry','Lujack','1940-6-6'),
 (1600,'Thomas','Tankengine','1991-4-1'),
 (1700,'Amber','Corwin','1970-12-1'),
 (1800,'Dworkin','Barimen','1950-12-2'),
 (1900,'Bel','Garion','1983-01-01'),
 (2000,'Pol','Gara','1963-01-10'),
 (2001,'Art','Clark','2001-12-6'),
 (2002,'Edith','Crawley','1962-09-4'),
 (2003,'John','Bates','2001-12-12'),
 (2004,'Thomas','Barrow','2005-05-05'),
 (2005,'John','Watson','1975-02-22'),
 (2006,'Jim','Moriarty','1967-03-12'),
 (2007,'Walter','White','1983-05-14'),
 (2008,'Skyler','White','1983-04-12'),
 (2009,'Dexter','Morgan','1994-07-11'),
 (2010,'Rita','Bennett','2001-11-12'),
 (2011,'Sun','Kwon','1988-10-19'),
 (2012,'John','Locke','2000-01-01'),
 (2013,'Clair','Littleton','2001-02-01'),
 (2015,'Claire','Bennet','2001-03-11'),
 (2016,'Mohinder','Suresh','1993-04-15'),
 (2017,'Chloe','Sullivan','2007-05-16'),
 (2018,'Martha','Kent','1954-02-13'),
 (2019,'Paige','Matthews','1977-03-16'),
 (2020,'Leo','Wyatt','2000-10-01'),
 (2021,'Buffy','Summers','2000-05-26'),
 (2022,'Xander','Harris','2001-06-23');

create table Publisher(
PubID int not null primary key,
Pub_name varchar(30)
);
insert into Publisher(PubID, Pub_name )values 
(10000,'Wiley'),
(10001,'McGraw-Hill'),
(10002,'Coyote Publishing'),
(10003,'Amazon'),
(10004,'Jerrys Ice Cream'),
(10005,'Buy a Boat'),
(10006,'Flagstaff Publishing'),
(10007,'Ram West');


create table Books(
ISBN varchar(15) primary key,
Title varchar(40),
Year_Pub int,
PubID int,
foreign key(PubID) references Publisher(PubID) on delete cascade
);

insert into Books(ISBN,Title,Year_Pub,PubID) values 
('96-42103-10001','How to Grow Tomatoes',1963,10006),
('96-42103-10002','Mr. Smith Goes to Washington',2010,10007),
('96-42103-10003','Studying is Your Friend',1955,10000),
('96-42103-10004','To Have and To Cherish',2011,10003),
('96-42103-10005','Hal Finds a Home',2001,10003),
('96-42103-10006','Last Train to Clarksville',1999,10004),
('96-42103-10007','How to Digitally Sign',2003,10004),
('96-42103-10008','Sam Needs a Friend',2013,10005),
('96-42103-10009','Downton Abbey',2005,10002),
('96-42103-10011','Database Theory',2010,10001),
('96-42103-10022','Challenging Puzzles',1988,10001),
('96-42103-10033','American Football',2011,10006),
('96-42103-10034','European Football',2015,10003),
('96-42103-10040','Where to Start',2012,10003),
('96-42103-10054','Lacey Discovers Herself',2013,10002),
('96-42103-10068','Mr. Ed',2009,10001),
('96-42103-10081','Escape from Gilligans Island',2009,10000),
('96-42103-10093','Fixing Computers',2010,10000),
('96-42103-10109','Red Burn',null,10000),
('96-42103-10206','Taks McGrill',2000,10003),
('96-42103-10300','Eating Healthy',1999,10004),
('96-42103-10401','How to Grow Cucumbers',1945,10006),
('96-42103-10502','Gardening Tips',1973,10007),
('96-42103-10604','Using the Library',1993,10003),
('96-42103-10709','Too Many Cooks',1983,10006),
('96-42103-10800','Green is Your Friend',2000,10006),
('96-42103-10907','Cubs Win!',2005,10002),
('96-42103-11003','Missing Tomorrow',2005,10001),
('96-42103-11604','Eating in the Fort',1993,10002),
('96-42103-11709','Green Eggs',1983,10003),
('96-42103-11800','Blue is Your Friend',2010,10002);


create table Borrowed_By(
ISBN varchar(15),
MemberID int,
Checkout_date date,
Checkin_date date,
primary key(Checkout_date,ISBN,MemberID),
foreign key(MemberID) references Members(MemberID) on delete cascade,
foreign key(ISBN) references Books(ISBN) on delete cascade
);

insert into Borrowed_By(MemberID,ISBN,Checkout_date,Checkin_date) values 
(1100, '96-42103-10604', '2016-04-13', '2016-04-17'),
(1100, '96-42103-10604', '2016-03-09', '2016-03-10'),
(1100, '96-42103-10003', '2016-03-23', '2016-03-24'),
(1100, '96-42103-10401', '2016-05-14', '2016-05-16'),
(1100, '96-42103-10001', '2016-04-27', '2016-04-30'),
(1100, '96-42103-10040', '2016-05-16', '2016-05-16'),
(1100, '96-42103-10709', '2016-05-18', '2016-05-21'),
(1100, '96-42103-10081', '2016-03-15', '2016-03-17'),
(1200, '96-42103-10081', '2016-04-10', '2016-04-16'),
(1200, '96-42103-10093', '2016-03-27', '2016-03-29'),
(1200, '96-42103-10109', '2016-04-15', '2016-04-18'),
(1300, '96-42103-10022', '2016-03-09', '2016-03-10'),
(1300, '96-42103-10206', '2016-05-11', '2016-05-14'),
(1300, '96-42103-10007', '2016-05-11', '2016-05-12'),
(1300, '96-42103-10001', '2016-03-28', '2016-04-04'),
(1300, '96-42103-10008', '2016-04-20', '2016-04-26'),
(1400, '96-42103-10033', '2016-03-26', '2016-03-29'),
(1400, '96-42103-10800', '2016-03-04', '2016-03-06'),
(1400, '96-42103-10008', '2016-05-24', '2016-05-29'),
(1400, '96-42103-10007', '2016-05-06', '2016-05-11'),
(1400, '96-42103-11003', '2016-03-05', '2016-03-10'),
(1400, '96-42103-10022', '2016-03-04', '2016-03-07'),
(1500, '96-42103-10004', '2016-05-14', '2016-05-16'),
(1500, '96-42103-10800', '2016-04-02', '2016-04-05'),
(1600, '96-42103-10206', '2016-05-21', '2016-05-27'),
(1600, '96-42103-10002', '2016-05-04', '2016-05-09'),
(1600, '96-42103-10011', '2016-03-20', '2016-03-20'),
(1600, '96-42103-10800', '2016-05-10', '2016-05-13'),
(1600, '96-42103-10300', '2016-03-22', '2016-03-24'),
(1700, '96-42103-10040', '2016-05-18', '2016-05-21'),
(1700, '96-42103-10604', '2016-04-17', '2016-04-18'),
(1700, '96-42103-11003', '2016-04-17', '2016-04-20'),
(1700, '96-42103-10004', '2016-04-05', '2016-04-11'),
(1700, '96-42103-10081', '2016-03-05', '2016-03-08'),
(1700, '96-42103-10800', '2016-04-22', '2016-04-28'),
(1800, '96-42103-10011', '2016-04-25', '2016-04-26'),
(1900, '96-42103-10008', '2016-05-01', '2016-05-01'),
(2000, '96-42103-10093', '2016-04-12', '2016-04-12'),
(2000, '96-42103-10005', '2016-05-17', '2016-05-21'),
(2000, '96-42103-10109', '2016-05-09', '2016-05-11'),
(2000, '96-42103-10006', '2016-05-08', '2016-05-11'),
(2001, '96-42103-10040', '2016-04-22', '2016-04-25'),
(2002, '96-42103-10040', '2016-05-22', '2016-05-27'),
(2002, '96-42103-10081', '2016-03-04', '2016-3-6'),
(2002, '96-42103-10008', '2016-04-21', '2016-04-25'),
(2002, '96-42103-10006', '2016-04-27', '2016-05-02'),
(2003, '96-42103-10040', '2016-04-09', '2016-04-14'),
(2003, '96-42103-10033', '2016-03-14', '2016-03-15'),
(2003, '96-42103-10068', '2016-04-12', '2016-04-16'),
(2004, '96-42103-10800', '2016-05-13', '2016-05-17'),
(2004, '96-42103-10040', '2016-04-27', '2016-05-02'),
(2004, '96-42103-10007', '2016-04-21', '2016-04-23'),
(2004, '96-42103-10907', '2016-05-09', '2016-05-10'),
(2004, '96-42103-10800', '2016-05-24', '2016-05-28'),
(2005, '96-42103-10011', '2016-04-20', '2016-04-22'),
(2006, '96-42103-10800', '2016-04-04', '2016-04-04'),
(2007, '96-42103-10709', '2016-03-13', '2016-03-17'),
(2007, '96-42103-10033', '2016-03-19', '2016-03-24'),
(2007, '96-42103-10068', '2016-04-19', '2016-04-20'),
(2008, '96-42103-10502', '2016-03-12', '2016-03-14'),
(2008, '96-42103-11003', '2016-04-04', '2016-04-08'),
(2009, '96-42103-10022', '2016-03-24', '2016-03-30'),
(2009, '96-42103-10709', '2016-04-12', '2016-04-15'),
(2009, '96-42103-10022', '2016-04-10', '2016-04-10'),
(2009, '96-42103-10009', '2016-03-20', '2016-03-22'),
(2009, '96-42103-10033', '2016-04-30', '2016-05-02'),
(2009, '96-42103-10007', '2016-03-07', '2016-03-13'),
(2009, '96-42103-10002', '2016-04-12', '2016-04-13'),
(2009, '96-42103-10709', '2016-04-30', '2016-05-03'),
(2009, '96-42103-10054', '2016-04-29', '2016-05-02'),
(2011, '96-42103-10093', '2016-04-20', '2016-04-20'),
(2011, '96-42103-10011', '2016-03-09', '2016-03-11'),
(2011, '96-42103-10081', '2016-03-15', '2016-03-20'),
(2011, '96-42103-10800', '2016-05-29', null ),
(2011, '96-42103-11003', '2016-03-06', '2016-03-08'),
(2011, '96-42103-10040', '2016-03-10', '2016-03-16'),
(2012, '96-42103-10009', '2016-03-28', '2016-03-29'),
(2012, '96-42103-10006', '2016-03-24', '2016-03-28'),
(2012, '96-42103-11003', '2016-04-04', '2016-04-09'),
(2012, '96-42103-10008', '2016-04-26', '2016-04-28'),
(2012, '96-42103-10002', '2016-05-27', null ),
(2013, '96-42103-10008', '2016-04-09', '2016-04-23'),
(2013, '96-42103-10054', '2016-03-26', '2016-03-29'),
(2013, '96-42103-10033', '2016-05-17', '2016-05-21'),
(2015, '96-42103-10009', '2016-03-05', '2016-03-19'),
(2016, '96-42103-10033', '2016-04-28', '2016-04-30'),
(2016, '96-42103-10907', '2016-04-22', '2016-04-28'),
(2016, '96-42103-10206', '2016-05-09', '2016-05-14'),
(2016, '96-42103-10907', '2016-03-06', '2016-03-08'),
(2016, '96-42103-10907', '2016-03-21', '2016-03-22'),
(2016, '96-42103-10001', '2016-04-07', '2016-04-08'),
(2016, '96-42103-10206', '2016-05-15', '2016-05-15'),
(2017, '96-42103-10709', '2016-04-20', '2016-04-25'),
(2017, '96-42103-10300', '2016-05-20', '2016-05-26'),
(2017, '96-42103-10093', '2016-03-19', '2016-03-23'),
(2017, '96-42103-10300', '2016-05-01', '2016-05-05'),
(2017, '96-42103-10004', '2016-03-14', '2016-03-16'),
(2018, '96-42103-10033', '2016-03-05', '2016-03-07'),
(2018, '96-42103-10004', '2016-03-25', '2016-03-27'),
(2018, '96-42103-10907', '2016-03-16', '2016-03-20'),
(2018, '96-42103-10008', '2016-05-10', '2016-05-10'),
(2018, '96-42103-10033', '2016-04-01', '2016-04-07'),
(2018, '96-42103-10300', '2016-04-05', '2016-04-10'),
(2018, '96-42103-10206', '2016-03-05', '2016-03-11'),
(2018, '96-42103-10709', '2016-04-20', '2016-04-25'),
(2018, '96-42103-10206', '2016-05-12', '2016-05-17'),
(2019, '96-42103-10009', '2016-03-11', '2016-03-12'),
(2020, '96-42103-10022', '2016-04-09', '2016-04-10'),
(2020, '96-42103-10206', '2016-05-13', '2016-05-08'),
(2020, '96-42103-10093', '2016-04-08', '2016-04-12'),
(2020, '96-42103-10401', '2016-05-29', null ),
(2021, '96-42103-10033', '2016-03-14', '2016-03-16'),
(2021, '96-42103-10001', '2016-05-21', '2016-05-26'),
(2021, '96-42103-10054', '2016-04-29', '2016-04-30'),
(2022, '96-42103-10009', '2016-03-25', '2016-03-29'),
(2022, '96-42103-10011', '2016-05-03', '2016-05-06'),
(2022, '96-42103-10109', '2016-04-16', '2016-04-21'),
(2022, '96-42103-11003', '2016-06-01', null ),
(2022, '96-42103-10081', '2016-03-26', '2016-03-30'),
(2022, '96-42103-10093', '2016-03-27', '2016-03-29'),
(2022, '96-42103-10502', '2016-03-26', '2016-04-01'),
(2022, '96-42103-10003', '2016-05-06', '2016-05-09');




create table Written_By(
ISBN varchar(15),
AuthorID int,
primary key(ISBN,AuthorID),
foreign key(AuthorID) references Author(AuthorID) on delete cascade,
foreign key(ISBN) references Books(ISBN) on delete cascade
);

insert into Written_By(ISBN, AuthorID) values 
('96-42103-10001',  101),
('96-42103-10001',  208),
('96-42103-10002',  102),
('96-42103-10003',  203),
('96-42103-10003',  201),
('96-42103-10004',  209),
('96-42103-10004',  302),
('96-42103-10004',  304),
('96-42103-10005',  204),
('96-42103-10006',  101),
('96-42103-10007',  102),
('96-42103-10007',  302),
('96-42103-10008',  209),
('96-42103-10008',  210),
('96-42103-10008',  301),
('96-42103-10009',  304),
('96-42103-10011',  207),
('96-42103-10011',  208),
('96-42103-10022',  203),
('96-42103-10033',  202),
('96-42103-10034',  202),
('96-42103-10040',  205),
('96-42103-10040',  203),
('96-42103-10054',  201),
('96-42103-10054',  202),
('96-42103-10068',  210),
('96-42103-10081',  101),
('96-42103-10081',  204),
('96-42103-10093',  102),
('96-42103-10109',  304),
('96-42103-10109',  208),
('96-42103-10206',  210),
('96-42103-10206',  301),
('96-42103-10300',  207),
('96-42103-10300',  208),
('96-42103-10401',  101),
('96-42103-10401',  203),
('96-42103-10502',  201),
('96-42103-10502',  202),
('96-42103-10604',  201),
('96-42103-10709',  303),
('96-42103-10709',  201),
('96-42103-10800',  301),
('96-42103-10800',  302),
('96-42103-10907',  102),
('96-42103-10907',  301),
('96-42103-11003',  204),
('96-42103-11003',  205),
('96-42103-11003',  206),
('96-42103-11003',  207),
('96-42103-11604',  201),
('96-42103-11709',  303),
('96-42103-11709',  201),
('96-42103-11800',  301),
('96-42103-11800',  302);


create table HasRel_AutPhone(
P_Number varchar(12),
AuthorID int not null,
primary key(AuthorID, P_Number),
foreign key(AuthorID) references Author(AuthorID) on delete cascade
);
insert into HasRel_AutPhone(AuthorID,P_Number) values
 (101,'970-555-1010'),
 (101,'970-555-1000'),
 (102,'970-555-1100'),
 (201,'303-555-1200'),
 (202,'303-555-1200'),
 (202,'303-555-1210'),
 (203,'970-555-1400'),
 (205,'970-555-1600'),
 (206,'970-555-1600'),
 (207,'970-555-1800'),
 (208,'970-555-1900'),
 (209,'970-555-2000'),
 (209,'970-555-2010'),
 (210,'970-555-2001'),
 (301,'970-555-2020'),
 (302,'970-555-2300'),
 (303,'970-555-2400'),
 (303,'970-555-2401'),
 (303,'970-555-2403'),
 (304,'970-555-2400'),
 (304,'970-555-2402'),
 (304,'970-555-2403');

create table HasRel_PubPhone(
P_Number varchar(12),
PubID int not null,
primary key(PubID, P_Number),
foreign key(PubID) references Publisher(PubID) on delete cascade
);
insert HasRel_PubPhone(PubID,P_Number) values 
(10000, '970-555-5000'),
(10001,'970-555-5010'),
(10002,'970-555-5020'),
(10003,'970-555-5030'),
(10004,'970-555-5040'),
(10005,'970-555-5050'),
(10006,'970-555-5060'),
(10006,'970-555-5070'),
(10007,'970-555-5080');



create table Library(
Lib_name varchar(20) not null,
Street varchar(30),
City varchar(20),
State varchar(5),
primary key(Lib_name)
);

insert Library(Lib_name,Street,City,State) values 
('South Park','South College','Fort Collins', 'CO'),
('Main', 'South Main', 'Fort Collins', 'CO');



create table Shelf(
Lib_name varchar(20),
Shelf_number int(5) not null,
floor_num int(5),
primary key(Lib_name,Shelf_number),
foreign key(Lib_name)references Library(Lib_name) on delete cascade
);

insert Shelf(Lib_name,Shelf_number,floor_num) values 
('Main',1,1),
('Main',2,1),
('Main',3,1),
('Main',4,1),
('Main',5,2),
('Main',6,2),
('Main',7,2),
('Main',8,2),
('South Park',8,3),
('South Park',7,3),
('South Park',4,2),
('South Park',3,2);


create table Stored_on(
ISBN varchar(15) not null,
Shelf_number int(5) not null,
Lib_name varchar(20),
Total_Copies int,
primary key(ISBN,Shelf_number,Lib_name),
foreign key(ISBN) references Books(ISBN) on delete cascade,
foreign key(Lib_name,Shelf_number) references Shelf(Lib_name,Shelf_number) on delete cascade
);

insert Stored_on(ISBN,Shelf_number,Lib_name,Total_Copies) values 
('96-42103-10001',1,'Main',3),
('96-42103-10002',1,'Main',1),
('96-42103-10003',1,'Main',1),
('96-42103-10004',2,'Main',2),
('96-42103-10005',2,'Main',1),
('96-42103-10006',2,'Main',1),
('96-42103-10007',3,'Main',2),
('96-42103-10008',3,'Main',2),
('96-42103-10009',3,'Main',2),
('96-42103-10011',4,'Main',2),
('96-42103-10022',4,'Main',3),
('96-42103-10033',4,'Main',3),
('96-42103-10034',5,'Main',1),
('96-42103-10040',5,'Main',2),
('96-42103-10054',5,'Main',2),
('96-42103-10068',6,'Main',1),
('96-42103-10081',6,'Main',1),
('96-42103-10093',6,'Main',1),
('96-42103-10109',6,'Main',1),
('96-42103-10206',7,'Main',1),
('96-42103-10300',7,'Main',2),
('96-42103-10401',7,'Main',2),
('96-42103-10502',7,'Main',1),
('96-42103-10604',8,'Main',2),
('96-42103-10709',8,'Main',3),
('96-42103-10800',8,'Main',2),
('96-42103-10907',8,'Main',7),
('96-42103-11003',8,'Main',3),
('96-42103-10001',8,'South Park',1),
('96-42103-10002',8,'South Park',1),
('96-42103-10003',8,'South Park',1),
('96-42103-10004',8,'South Park',1),
('96-42103-10005',8,'South Park',1),
('96-42103-10006',8,'South Park',1),
('96-42103-10007',7,'South Park',3),
('96-42103-10008',7,'South Park',3),
('96-42103-10009',7,'South Park',1),
('96-42103-10011',7,'South Park',1),
('96-42103-10022',7,'South Park',2),
('96-42103-10033',7,'South Park',3),
('96-42103-10040',4,'South Park',1),
('96-42103-10054',4,'South Park',1),
('96-42103-10068',4,'South Park',1),
('96-42103-10081',4,'South Park',1),
('96-42103-10093',4,'South Park',1),
('96-42103-10109',4,'South Park',1),
('96-42103-10206',4,'South Park',1),
('96-42103-10300',4,'South Park',1),
('96-42103-10401',3,'South Park',1),
('96-42103-10502',3,'South Park',1),
('96-42103-10907',3,'South Park',7),
('96-42103-11003',3,'South Park',2),
('96-42103-11604',3,'South Park',2),
('96-42103-11709',3,'South Park',1),
('96-42103-11800',3,'South Park',2);

create table Audit(
l_table_name varchar(30), 
action_type char(10),
date_time datetime,
log_id int not null auto_increment, primary key(log_id));

select * from Library order by Lib_name;
select * from Shelf order by Lib_name,floor_num;
select * from Stored_on order by ISBN;
select b.Title, so.Shelf_number, so.Lib_name from Books as b natural join Stored_on as so  where ISBN in ( select distinct s01.ISBN from Stored_on as s01, Stored_on as s02 where s01.ISBN=s02.ISBN and s01.Lib_name<>s02.Lib_name);
select Shelf_number,Lib_name,Total_Copies from Shelf natural join Stored_on order by Lib_name,Shelf_number;

delimiter |

create trigger t1 after insert on Author for each row begin insert into Audit (l_table_name,action_type,date_time) values('Author table','Inserted',now()); end;|

create trigger t2 after insert on Stored_on for each row begin insert into Audit (l_table_name,action_type,date_time) values('Stored_on table','Inserted',now()); end;|

create trigger t3 after delete on Stored_on for each row begin insert into Audit (l_table_name,action_type,date_time) values('Stored_on table','Deleted',now()); end;|

create trigger t4 after update on Stored_on for each row begin insert into Audit (l_table_name,action_type,date_time) values('Stored_on table','Updated',now()); end;|

delimiter ;

CREATE SQL SECURITY INVOKER
VIEW my_view AS
    (SELECT 
        Books.Title,
        GROUP_CONCAT(CONCAT(`F_Name`, ' ', `L_Name`)
            SEPARATOR ',') AS Authors,
        Stored_on.Shelf_Number,
        shelf.Floor_num,
        Stored_on.Library_name
    FROM
        Books
            JOIN
        Written_By ON Books.ISBN = Written_By.ISBN
            JOIN
        Author ON Written_By.AuthorID = Author.AuthorID
            JOIN
        Stored_on ON Books.ISBN = Stored_on.ISBN
            JOIN
        Shelf ON Shelf.Lib_Name = Stored_on.Library_name
            AND Shelf.Shelf_number = Stored_on.Shelf_number
    GROUP BY Books.ISBN , Stored_on.Library_name);

CREATE SQL SECURITY INVOKER
VIEW phani1 AS
    (SELECT 
        ISBN,
        GROUP_CONCAT(CONCAT(F_Name, ' ', L_Name)) AS Authors
    FROM
        Written_By
            NATURAL JOIN
        Author
    GROUP BY (ISBN));
    
    CREATE SQL SECURITY INVOKER
VIEW phani2 AS
    ( select ISBN, Title, Authors from phani1 natural join Books);
        
        
CREATE SQL SECURITY INVOKER
VIEW phani3 AS
    (SELECT 
        ISBN,
        GROUP_CONCAT(Floor_num) AS floors,
        GROUP_CONCAT(Shelf_number) AS shelves,
        GROUP_CONCAT(Lib_name) AS Library
    FROM
        Stored_on
            NATURAL JOIN
        Shelf
    GROUP BY ISBN);
    
CREATE SQL SECURITY INVOKER
VIEW phani4 AS
    (select Title, Authors, floors,shelves,Library from phani2 natural join phani3);
    
select * from phani4;



insert into Books(ISBN,Title,Year_Pub,PubID) values ('96-42013-10510', 'Growing your own Weeds', 2012, 10000);
insert into Stored_on(ISBN,Shelf_number,Lib_name) values ('96-42013-10510', 8, 'Main');

update Stored_on set Total_copies=8 where Lib_name ="Main" and ISBN = "96-42103-10907" ;

delete Author.* from Author where F_name ="Grace" and L_name="Slick";

insert into Author(AuthorID, F_name , L_name ) values (305, "Commander" ,"Adams");
insert into Phone(P_Number,Type) values ('970-555-5555','o');
insert into HasRel_AutPhone values ('970-555-5555',305);

insert into Books(ISBN,Title,Year_Pub,PubID) values ('96-42013-10510', 'Growing your own Weeds', 2012, 10000);
insert into Stored_on(ISBN,Shelf_number,Lib_name) values ('96-42013-10510', 8, 'South Park');

delete from Stored_on where Lib_name ="Main" and ISBN in (select ISBN from Books where Title='Missing Tomorrow') ;

update Stored_on set Total_copies=Total_copies+2 where Lib_name="South Park" and ISBN in (select ISBN from Books where Title="Eating in the Fort");


insert into Books(ISBN,Title,Year_Pub,PubID) values ('96-42013-10513', 'Growing your own Weeds', 2012, 90000);
insert into Stored_on(ISBN,Shelf_number,Lib_name) values ('96-42013-10513', 8, 'Main');

select * from Audit;
