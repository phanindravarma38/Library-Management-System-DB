Customer
ADMIN
Attendant
Vehicle
ParkingSpace


CREATE TABLE customer (
CustomerID INT Not NULL primary key,
FirstName VARCHAR(20),
LastName VARCHAR(20),
Start_Date DATE,
End_Date DATE,
Ticket_Number INT,
VehicleId INT, 
FOREIGN KEY(VehicleId) REFERENCES Vehicle(VehicleId) ON DELETE CASCADE
);

CREATE TABLE admin (
AdminId INT Not NULL primary key,
username VARCHAR(20),
password VARCHAR(20)
)

CREATE TABLE attendant (
AttendantId INT Not NULL primary key,
username VARCHAR(20),
password VARCHAR(20)
)

CREATE TABLE vehicle (
VehicleId INT Not NULL primary key,
Plate_Number VARCHAR(20),
Make VARCHAR(20),
Model VARCHAR(20),
Make_State VARCHAR(20),
Make_Year VARCHAR(20),
parking_space INT,
FOREIGN KEY(lotId) REFERENCES parking_space(lotId) ON DELETE CASCADE
);

CREATE TABLE parking_space (
lotId INT Not NULL primary key,
isOccupied BOOLEAN
);

INSERT INTO customer VALUES
(111, "Ben", "Franklin", 211, NULL, NULL, NULL),
(112, "Gen", "Neeson", 212, NULL, NULL, NULL),
(113, "Dan", "Smith", 213, NULL, NULL, NULL),
(114, "Amanda", "Cook", 214, NULL, NULL, NULL),
(115, "John", "Joy", 215, NULL, NULL, NULL),
(116, "Dave", "Williams", 216, NULL, NULL, NULL),
(117, "Matt", "Welsh", 217, NULL, NULL, NULL),
(118, "Brian", "Matthers", 218, NULL, NULL, NULL),
(119, "Kelly", "Marshal", 219, NULL, NULL, NULL),
(120, "Maria", "Acuna", 220, NULL, NULL, NULL),
(121, "Claudia", "Jin", 221, NULL, NULL, NULL),
(122, "Alvaro", "Quitral", 222, NULL, NULL, NULL),
(123, "Chad", "Peacock", 223, NULL, NULL, NULL);

INSERT INTO admin VALUES
(999, "admin", "admin")

INSERT INTO attendant VALUES
(888, "attendant1","attendant1"),
(889, "attendant2","attendant2");

INSERT INTO vehicle VALUES
(211, "ABS1231","Nissan","Altima","GA","2015",11100),
(212, "ABS1232","Hyundai","Elantra","GA","2012",11101),
(213, "ABS1233","Honda","CRV","TX","2013",11102),
(214, "ABS1234","Nissan","Sunny","CO","2011",11103),
(215, "ABS1235","Ford","Fiesta","GA","2011",11104),
(216, "ABS1236","Toyota","Odyssey","GA","2009",11105),
(217, "ABS1237","Ford","Figo","GA","2012",11106),
(218, "ABS1238","Honda","Accord","GA","2012",11107),
(219, "ABS1239","Chevrolet","Camaro","GA","2015",11108),
(220, "ABS1240","Porshe","911","GA","2016",11109),
(221, "ABS1241","Honda","CRV","GA","2013",11110),
(222, "ABS1242","Toyota","Corolla","GA","2011",11111),
(223, "ABS1243","Renault","Pulsa","GA","2013",11112);


INSERT INTO parking_space VALUES
(11100, true),
(11101, true),
(11102, true),
(11103, true),
(11104, true),
(11105, true),
(11106, true),
(11107, true),
(11108, true),
(11109, true),
(11110, true),
(11111, true),
(11112, true),
(11113, false),
(11114, false),
(11115, false),
(11116, false),
(11117, false),
(11118, false),
(11119, false),
(11120, false),
(11121, false),
(11122, false),
(11123, false),
(11124, false),
(11125, false),
(11126, false),
(11127, false),
(11128, false),
(11129, false),
(11130, false),
(11131, false),
(11132, false),
(11133, false),
(11134, false),
(11135, false),
(11136, false),
(11137, false),
(11138, false),
(11139, false),
(11140, false),
(11141, false),
(11142, false),
(11143, false),
(11144, false),
(11145, false),
(11146, false),
(11147, false),
(11148, false),
(11149, false),
(11150, false),
(11151, false),
(11152, false),
(11153, false),
(11154, false),
(11155, false),
(11156, false),
(11157, false),
(11158, false),
(11159, false),
(11160, false),
(11161, false),
(11162, false),
(11163, false),
(11164, false),
(11165, false),
(11166, false),
(11167, false),
(11168, false),
(11169, false),
(11170, false),
(11171, false),
(11172, false),
(11173, false),
(11174, false),
(11175, false),
(11176, false),
(11177, false),
(11178, false),
(11179, false),
(11180, false),
(11181, false),
(11182, false),
(11183, false),
(11184, false),
(11185, false),
(11186, false),
(11187, false),
(11188, false),
(11189, false),
(11190, false),
(11191, false),
(11192, false),
(11193, false),
(11194, false),
(11195, false),
(11196, false),
(11197, false),
(11198, false),
(11199, false),

