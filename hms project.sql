CREATE DATABASE HMS;
drop table if exists address;
CREATE TABLE  address ( id int (20) ,
country varchar(40) default null,
state varchar (25) default  null,
city varchar (40) default null,
street varchar(50) default null,
house_number varchar (30) default null,
primary key(id)
)

insert into  address values (1,'India','MP','Chhindwara','Sukludhana','321/12'),(2,'India','Bhopal','Bhopal','MP Naar','785/41'),
(3,'india','Maharastra','Nagpur','bardi road','221/52'),(4,'india','MP','indore','station road','102/2'),
(5,'india','MP','jabalpur','Ghama para','786/15'),(6,'india','MP','seoni','bus stand','152/45'),
(7,'india','Chattisgarh','gondi','by pass','89/80'),(8,'india','Chattisgarh','raipur','kota coloney','86/125'),
(9,'india','Haryana','Gurgaon','nirwana contry road ','452/78');
select * from address;

-- creating table bed
CREATE TABLE  bed ( id int (11) primary key,
bednumber varchar(40) default null,
supervised_by varchar (25) default  null);
-- duming value
insert into  bed values (1,1,25),(2,2,26),(3,3,20),(4,6,30);


DROP TABLE IF EXISTS `er_shift`;

-- crearting table er_shift 

CREATE TABLE `er_shift` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `startTime` time NOT NULL,
  `endTime` time NOT NULL,
  `inchargeStaffId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  
  KEY `FK-inchargeStaffId_idx` (`inchargeStaffId`),
  CONSTRAINT `FK-inchargeStaffId` FOREIGN KEY (`inchargeStaffId`) REFERENCES `staff` (`id`) 
) 
-- inserting value in er_shift table 
INSERT INTO `er_shift` VALUES (1,'Morning(M)','09:00:00','12:00:00',NULL),(2,'Afternoon(A)','12:00:00','06:00:00',NULL),(3,'Evening','06:00:00','09:00:00',NULL),(4,'Night','09:00:00','12:00:00',NULL);

-- create  MEDICATION tabel

CREATE TABLE `medication` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `dosage` decimal(2,0) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
)
-- insert value in medication table
INSERT INTO `medication` VALUES (1,'Zhandu bam',2);
select * from medication;
-- creating table PERSON 

CREATE TABLE `person` (
  `id` int(11) NOT NULL,
  `firstName` varchar(45) DEFAULT NULL,
  `middleName` varchar(45) DEFAULT NULL,
  `surname` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `contactNumber` bigint(10) NOT NULL,
  `dateOfBirth` date DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `emergancyContactNumber` bigint(10) DEFAULT NULL,
  `addressId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `contactNumber_UNIQUE` (`contactNumber`),
  KEY `FK-addressId_idx` (`addressId`),
  CONSTRAINT `FK-addressId` FOREIGN KEY (`addressId`) REFERENCES `address` (`id`) 
)
-- inserting value in person table 
INSERT INTO `person` VALUES 
(1,'Pankaj','kumar','jaiswal','pk@gmail.com',9806155360,'1991-12-15','male',9138155360,1),
(2,'Pavan','Kumar','khandelwal','pv@gmail.com',7845128956,'1991-07-15','male',9145568978,2),
(3,'reena','','khandelwal','pv@gmail.com',7889564512,'1991-07-15','female',9145568978,3),
(4,'leena','','khandelwal','pv@gmail.com',7823568945,'1991-07-15','female',9145568978,4),
(5,'dhawal','bhai','balar',NULL,4556897845,NULL,'male',NULL,NULL),(6,'tushar','bhai','balar',NULL,7845128950,NULL,'male',NULL,NULL),
(7,'shikha','','matur',NULL,2356457889,NULL,'female',NULL,NULL),(8,'poorvi','','awasthi',NULL,8945561223,NULL,'female',NULL,NULL),
(9,'pooja','','soni',NULL,1656894533,NULL,'female',NULL,NULL),(10,'rina','','uikey',NULL,9876543210,NULL,'female',NULL,NULL),
(11,'sourabh','Kumar','tomar',NULL,1232123121,NULL,'male',NULL,NULL),(12,'saurabh','Kumar','shukla',NULL,4566565555,NULL,'male',NULL,NULL),
(13,'amratesh','Kumar','shukla',NULL,4848965218,NULL,'male',NULL,NULL)
,(14,'rohitendra','Kumar','thakur',NULL,8985599599,NULL,'male',NULL,NULL),(15,'manoj','Kumar','soni',NULL,8956955555,NULL,'male',NULL,NULL),
(16,'yogesh',NULL,'sony',NULL,4848985945,NULL,'male',NULL,NULL),(17,'mayuri',NULL,'raghuwanshi',NULL,4964616589,NULL,'female',NULL,NULL),
(18,'Suman',NULL,'Khatri',NULL,5965566983,NULL,'female',NULL,NULL),(19,'Rakhi',NULL,'Malvi',NULL,5959359859,NULL,'female',NULL,NULL),
(20,'Aankesh',NULL,'juneja',NULL,8929556595,NULL,'male',NULL,NULL),(21,'ashish',NULL,'sarathe',NULL,5989595955,NULL,'male',NULL,NULL),
(22,'rajesh',NULL,'singh',NULL,5992296292,NULL,'male',NULL,NULL),(23,'rinku',NULL,'soni',NULL,9517895646,NULL,'male',NULL,NULL),
(24,'july',NULL,'sharma',NULL,9547786665,NULL,'female',NULL,NULL),(25,'vivek',NULL,'paliya',NULL,4584993587,NULL,'male',NULL,NULL),
(26,'akash',NULL,'garg',NULL,4565558996,NULL,'male',NULL,NULL),(27,'ruhi',NULL,'trivedi',NULL,1599745566,NULL,'female',NULL,NULL),
(28,'amisha',NULL,'patle',NULL,7531594658,NULL,'female',NULL,NULL),(29,'sheela',NULL,'barde',NULL,4563537888,NULL,'female',NULL,NULL),
(30,'Sunita',NULL,'day',NULL,8644484885,NULL,'female',NULL,NULL),(31,'Rani',NULL,'sharma',NULL,9484948994,NULL,'female',NULL,NULL),
(32,'amit',NULL,'sinha',NULL,5549656565,NULL,'male',NULL,NULL),(33,'hamant',NULL,'dubey',NULL,7561899999,NULL,'male',NULL,NULL),
(34,'rahul',NULL,'indorkar',NULL,4874585455,NULL,'male',NULL,NULL),(35,'atul',NULL,'sharma',NULL,7845122325,NULL,'male',NULL,NULL),
(36,'Pradeep',NULL,'sahu',NULL,7444444444,NULL,'male',NULL,NULL),(37,'Rakesh',NULL,'vishwa',NULL,1888888888,NULL,'male',NULL,NULL),
(38,'Jitesh',NULL,'vinod',NULL,9885555444,NULL,'male',NULL,NULL),(39,'Ritesh','','Soni',NULL,1552222544,NULL,'male',NULL,NULL),
(40,'Amit','','mishra',NULL,4445455454,NULL,'male',NULL,NULL),(41,'akanksha','','dohley',NULL,9595945565,NULL,'female',NULL,NULL),
(42,'rohit','','tiwari',NULL,9544458888,NULL,'male',NULL,NULL),(43,'awdhesh','','verma',NULL,4512222222,NULL,'male',NULL,NULL),
(44,'nitesh','','sahu',NULL,4545454512,NULL,'male',NULL,NULL),(45,'jitendra','','baghel',NULL,1245785621,NULL,'male',NULL,NULL),
(46,'sonali','','kushwah',NULL,4523122222,NULL,'female',NULL,NULL),(47,'mitali','','patel',NULL,9594664632,NULL,'female',NULL,NULL),
(48,'shaili','','sahu',NULL,4184158515,NULL,'female',NULL,NULL),(49,'vaishali','','thakur',NULL,4851545554,NULL,'female',NULL,NULL),
(50,'Anita','','Soni',NULL,5468651951,NULL,'female',NULL,NULL);

CREATE TABLE `petient` (`id` int(11) NOT NULL,
  `personId` int(11) DEFAULT NULL,
  `admittedBy` int(11) DEFAULT NULL,
  `supervisedBy` int(11) DEFAULT NULL,
  `bedId` int(11) DEFAULT NULL,
  `medicationId` int(11) DEFAULT NULL,
  `admittedDate` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK-doctor-staff_idx` (`supervisedBy`),
  KEY `FK-petient-bed_idx` (`bedId`),
  KEY `FK-medication_idx` (`medicationId`),
  CONSTRAINT `FK-doctor-staff` FOREIGN KEY (`supervisedBy`) REFERENCES `staff` (`id`) ,
  CONSTRAINT `FK-medication` FOREIGN KEY (`medicationId`) REFERENCES `medication` (`id`) ,
  CONSTRAINT `FK-petient-bed` FOREIGN KEY (`bedId`) REFERENCES `bed` (`id`) 
)
-- inserting values in petient tabel
INSERT INTO `petient` VALUES (1,20,26,30,1,1,'2018-10-30',26),(2,49,26,30,2,NULL,'2018-08-31',24),(3,45,24,30,3,NULL,'2018-08-31',22);
select * from petient;

-- creating staff table 
DROP TABLE IF EXISTS `staff`;

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `staffCategoryId` int(11) DEFAULT NULL,
  `staffGradeId` int(11) DEFAULT NULL,
  `staffTypeId` int(11) DEFAULT NULL,
  `personId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK-staffCategoryId_idx` (`staffCategoryId`),
  KEY `FK-staffGradeId_idx` (`staffGradeId`),
  KEY `FK-staffTypeId_idx` (`staffTypeId`),
  KEY `FK-personId_idx` (`personId`),
  CONSTRAINT `FK-personId` FOREIGN KEY (`personId`) REFERENCES `person` (`id`) ,
  CONSTRAINT `FK-staffCategoryId` FOREIGN KEY (`staffCategoryId`) REFERENCES `staff_category` (`id`) ,
  CONSTRAINT `FK-staffGradeId` FOREIGN KEY (`staffGradeId`) REFERENCES `staff_grade` (`id`) ,
  CONSTRAINT `FK-staffTypeId` FOREIGN KEY (`staffTypeId`) REFERENCES `staff_type` (`id`)
) 
-- inserting value in stff table 
INSERT INTO `staff` VALUES (1,1,1,3,1),(2,1,1,2,2),(3,1,1,3,3),(4,1,1,2,4),(5,1,2,3,5),(6,2,2,2,6),(7,1,2,3,7),(8,2,2,2,8)
,(9,1,2,3,9),(10,2,2,2,10),(11,1,2,3,11),(12,2,3,2,12),(13,1,3,3,13),(14,2,3,2,14),(15,1,3,3,15),(16,2,3,2,16),(17,1,3,3,17),
(18,2,3,2,18),(19,1,4,3,19),(20,2,4,1,20),(21,1,4,1,21),(22,2,4,2,22),(23,1,4,2,23),(24,2,4,2,24),(25,1,1,2,30),(26,2,1,2,29),
(27,1,1,2,28),(28,2,1,1,27),(29,1,1,1,26),(30,2,2,2,25);


-- crating tbale staff_category
DROP TABLE IF EXISTS `staff_category`;
CREATE TABLE `staff_category` (
  `id` int(11) NOT NULL,
  `category` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
)
-- dumming the values in staff_category table
INSERT INTO `staff_category` VALUES (1,'Permanent'),(2,'Contractual');

-- creating table staff_grade
DROP TABLE IF EXISTS `staff_grade`;
CREATE TABLE `staff_grade` (
  `id` int(11) NOT NULL,
  `grade` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
)
-- inserting values in staff_grade
INSERT INTO `staff_grade` VALUES (1,'N1'),(2,'N2'),(3,'N3'),(4,'N4');




-- creating table staff_type
DROP TABLE IF EXISTS `staff_type`;

create table staff_type( `id` int(11) NOT NULL,
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type_UNIQUE` (`type`)
)
-- inserting values in staff type table
INSERT INTO `staff_type` VALUES (3,'Doctor'),(2,'Nurse'),(1,'Receptionist');
select * from staff_type;

-- creating shift_assigned table 
DROP TABLE IF EXISTS `shift_assigned`;
CREATE TABLE `shift_assigned` (
  `id` int(11) NOT NULL,
  `emergancyRoomShifId` int(11) DEFAULT NULL,
  `staffId` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK-staffId` FOREIGN KEY (`staffId`) REFERENCES `staff` (`id`) 
)
-- inserting values in shift_assigned table 
INSERT INTO `shift_assigned` VALUES (1,1,1,'2018-10-30'),(2,1,2,'2018-10-30'),(3,1,3,'2018-10-30'),(4,1,4,'2018-10-30'),
(5,1,30,'2018-10-30'),(6,1,29,'2018-10-30');
select * from shift_assigned;





  