-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 21, 2024 at 07:29 PM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";




-- Database: `gym`


--
-- Table structure for table `attend`
--

DROP TABLE IF EXISTS `attend`;
CREATE TABLE IF NOT EXISTS `attend` (
  `Member_ID` int NOT NULL,
  `Class_ID` int NOT NULL,
  KEY `Class_ID` (`Class_ID`),
  KEY `Member_ID` (`Member_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `attend`
--

INSERT INTO `attend` (`Member_ID`, `Class_ID`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
CREATE TABLE IF NOT EXISTS `class` (
  `Class_ID` int NOT NULL AUTO_INCREMENT,
  `ClassName` varchar(20) NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  `Capacity` int NOT NULL,
  `Staff_ID` int NOT NULL,
  PRIMARY KEY (`Class_ID`),
  KEY `Staff_ID` (`Staff_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`Class_ID`, `ClassName`, `Date`, `Time`, `Capacity`, `Staff_ID`) VALUES
(1, 'Yoga', '2024-01-01', '10:00:00', 20, 1),
(2, 'Pilates', '2024-01-02', '12:00:00', 15, 2),
(3, 'Zumba', '2024-01-03', '14:00:00', 25, 3),
(4, 'HIIT', '2024-01-04', '16:00:00', 30, 4),
(5, 'Strength Training', '2024-01-05', '18:00:00', 30, 5),
(6, 'Spin Class', '2024-01-06', '20:00:00', 10, 6),
(7, 'Aerobics', '2024-01-07', '08:00:00', 12, 7),
(8, 'CrossFit', '2024-01-08', '07:00:00', 10, 8),
(9, 'Dance', '2024-01-09', '19:00:00', 18, 9),
(10, 'Cardio', '2024-01-10', '17:00:00', 20, 10);

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

DROP TABLE IF EXISTS `equipment`;
CREATE TABLE IF NOT EXISTS `equipment` (
  `Equipment_ID` int NOT NULL AUTO_INCREMENT,
  `Type` varchar(20) NOT NULL,
  `Quantity` int NOT NULL,
  PRIMARY KEY (`Equipment_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `equipment`
--

INSERT INTO `equipment` (`Equipment_ID`, `Type`, `Quantity`) VALUES
(1, 'Treadmill', 5),
(2, 'Dumbbell', 50),
(3, 'Barbell', 30),
(4, 'Rowing Machine', 3),
(5, 'Kettlebell', 20),
(6, 'Resistance Band', 40),
(7, 'Pull-Up Bar', 10),
(8, 'Yoga Mat', 25),
(9, 'Medicine Ball', 15),
(10, 'Step Platform', 12);

-- --------------------------------------------------------

--
-- Table structure for table `gymwear`
--

DROP TABLE IF EXISTS `gymwear`;
CREATE TABLE IF NOT EXISTS `gymwear` (
  `GymWear_ID` int NOT NULL AUTO_INCREMENT,
  `Category` varchar(20) NOT NULL,
  `Size` varchar(10) NOT NULL,
  `Price` int NOT NULL,
  `QuantityinStock` int NOT NULL,
  PRIMARY KEY (`GymWear_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `gymwear`
--

INSERT INTO `gymwear` (`GymWear_ID`, `Category`, `Size`, `Price`, `QuantityinStock`) VALUES
(1, 'T-Shirt', 'M', 200, 50),
(2, 'Shorts', 'L', 250, 40),
(3, 'Leggings', 'S', 300, 30),
(4, 'Jacket', 'XL', 500, 10),
(5, 'Tank Top', 'M', 150, 60),
(6, 'Cap', 'One Size', 100, 20),
(7, 'Socks', 'L', 50, 100),
(8, 'Shoes', '1000', 75, 25),
(9, 'Wristband', 'One Size', 80, 30),
(10, 'Hoodie', 'L', 450, 15);

-- --------------------------------------------------------

--
-- Table structure for table `have`
--

DROP TABLE IF EXISTS `have`;
CREATE TABLE IF NOT EXISTS `have` (
  `Member_ID` int NOT NULL,
  `Membership_ID` int NOT NULL,
  `Payment_ID` int NOT NULL,
  KEY `have_ibfk_1` (`Membership_ID`),
  KEY `Member_ID` (`Member_ID`),
  KEY `Payment_ID` (`Payment_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `have`
--

INSERT INTO `have` (`Member_ID`, `Membership_ID`, `Payment_ID`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
CREATE TABLE IF NOT EXISTS `member` (
  `Member_ID` int NOT NULL AUTO_INCREMENT,
  `PhoneNumber` int NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  PRIMARY KEY (`Member_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`Member_ID`, `PhoneNumber`, `FirstName`, `LastName`) VALUES
(1, 1012345678, 'John', 'Doe'),
(2, 1019876543, 'Jane', 'Smith'),
(3, 1015556677, 'Alice', 'Brown'),
(4, 1014445566, 'Bob', 'Davis'),
(5, 1013332211, 'Charlie', 'Wilson'),
(6, 1019998877, 'Emily', 'Johnson'),
(7, 1017778899, 'Frank', 'White'),
(8, 1012223344, 'Grace', 'Hall'),
(9, 1018887766, 'Hannah', 'King'),
(10, 1011122233, 'Ian', 'Lee');

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

DROP TABLE IF EXISTS `membership`;
CREATE TABLE IF NOT EXISTS `membership` (
  `Membership_ID` int NOT NULL AUTO_INCREMENT,
  `Duration` varchar(20) NOT NULL,
  `Cost` int NOT NULL,
  PRIMARY KEY (`Membership_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `membership`
--

INSERT INTO `membership` (`Membership_ID`, `Duration`, `Cost`) VALUES
(1, '1 Month', 500),
(2, '3 Months', 1200),
(3, '6 Months', 2000),
(4, '12 Months', 4000),
(5, '1 Week', 150),
(6, '2 Weeks', 350),
(7, '12 months', 4000),
(8, '2 years', 8000),
(9, '6 months', 2000),
(10, '4 months', 1500);

-- --------------------------------------------------------

--
-- Table structure for table `membership_type`
--

DROP TABLE IF EXISTS `membership_type`;
CREATE TABLE IF NOT EXISTS `membership_type` (
  `Type` varchar(20) NOT NULL,
  `Membership_ID` int NOT NULL,
  PRIMARY KEY (`Type`),
  KEY `Membership_ID` (`Membership_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `membership_type`
--

INSERT INTO `membership_type` (`Type`, `Membership_ID`) VALUES
('Standard', 1),
('Premium', 2),
('Student', 3),
('Corporate', 4),
('Family', 5),
('Pay-as-you-go', 6),
('Weekly', 7),
('Monthly', 8),
('Annual', 9),
('Custom', 10);

-- --------------------------------------------------------

--
-- Table structure for table `member_email`
--

DROP TABLE IF EXISTS `member_email`;
CREATE TABLE IF NOT EXISTS `member_email` (
  `Email` varchar(30) NOT NULL,
  `Member_ID` int NOT NULL,
  PRIMARY KEY (`Email`),
  KEY `Member_ID` (`Member_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `member_email`
--

INSERT INTO `member_email` (`Email`, `Member_ID`) VALUES
('john.doe@gmail.com', 1),
('jane.smith@gmail.com', 2),
('alice.brown@gmail.com', 3),
('bob.davis@gmail.com', 4),
('charlie.wilson@gmail.com', 5),
('emily.johnson@gmail.com', 6),
('frank.white@gmail.com', 7),
('grace.hall@gmail.com', 8),
('hannah.king@gmail.com', 9),
('ian.lee@gmail.com', 10);

-- --------------------------------------------------------

--
-- Table structure for table `member_fitnessgoal`
--

DROP TABLE IF EXISTS `member_fitnessgoal`;
CREATE TABLE IF NOT EXISTS `member_fitnessgoal` (
  `FitnessGoal` varchar(50) NOT NULL,
  `Member_ID` int NOT NULL,
  PRIMARY KEY (`FitnessGoal`),
  KEY `Member_ID` (`Member_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `member_fitnessgoal`
--

INSERT INTO `member_fitnessgoal` (`FitnessGoal`, `Member_ID`) VALUES
('Lose Weight', 1),
('Build Muscle', 2),
('Increase Stamina', 3),
('Improve Flexibility', 4),
('General Fitness', 5),
('Rehabilitation', 6),
('Athletic Training', 7),
('Tone Body', 8),
('Mental Health', 9),
('Social Interaction', 10);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `Payment_ID` int NOT NULL AUTO_INCREMENT,
  `Date` date NOT NULL,
  `Method` varchar(20) NOT NULL,
  `Amount` int NOT NULL,
  PRIMARY KEY (`Payment_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`Payment_ID`, `Date`, `Method`, `Amount`) VALUES
(1, '2024-01-01', 'Credit Card', 500),
(2, '2024-01-02', 'Debit Card', 1200),
(3, '2024-01-03', 'Cash', 2000),
(4, '2024-01-04', 'PayPal', 3500),
(5, '2024-01-05', 'Bank Transfer', 2000),
(6, '2024-01-06', 'Credit Card', 3500),
(7, '2024-01-07', 'Cash', 5000),
(8, '2024-01-08', 'Debit Card', 1000),
(9, '2024-01-09', 'PayPal', 3000),
(10, '2024-01-10', 'Bank Transfer', 2500);

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

DROP TABLE IF EXISTS `purchase`;
CREATE TABLE IF NOT EXISTS `purchase` (
  `Member_ID` int NOT NULL,
  `Payment_ID` int NOT NULL,
  `GymWear_ID` int NOT NULL,
  `Supplement_ID` int NOT NULL,
  KEY `GymWear_ID` (`GymWear_ID`),
  KEY `Member_ID` (`Member_ID`),
  KEY `Payment_ID` (`Payment_ID`),
  KEY `Supplement_ID` (`Supplement_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`Member_ID`, `Payment_ID`, `GymWear_ID`, `Supplement_ID`) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 3),
(4, 4, 4, 4),
(5, 5, 5, 5),
(6, 6, 6, 6),
(7, 7, 7, 7),
(8, 8, 8, 8),
(9, 9, 9, 9),
(10, 10, 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
CREATE TABLE IF NOT EXISTS `staff` (
  `Staff_ID` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `PhoneNumber` int NOT NULL,
  `Salary` int NOT NULL,
  PRIMARY KEY (`Staff_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`Staff_ID`, `FirstName`, `LastName`, `PhoneNumber`, `Salary`) VALUES
(1, 'Alice', 'Joseph', 1011223344, 4000),
(2, 'Bob', 'Michael', 1022334455, 3500),
(3, 'Charlie', 'Robert', 1033445566, 4500),
(4, 'Diana', 'Robertson', 1044556677, 3000),
(5, 'Eve', 'Parkinson', 1055667788, 3200),
(6, 'Frank', 'Ocean', 1066778899, 3700),
(7, 'Grace', 'Wallace', 1077889900, 4200),
(8, 'Hank', 'Brown', 1088990011, 3100),
(9, 'Ivy', 'Gray', 1099001122, 4300),
(10, 'Jack', 'Black', 1010101010, 3900);

-- --------------------------------------------------------

--
-- Table structure for table `staff_role`
--

DROP TABLE IF EXISTS `staff_role`;
CREATE TABLE IF NOT EXISTS `staff_role` (
  `Role` varchar(20) NOT NULL,
  `Staff_ID` int NOT NULL,
  PRIMARY KEY (`Role`),
  KEY `Staff_ID` (`Staff_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `staff_role`
--

INSERT INTO `staff_role` (`Role`, `Staff_ID`) VALUES
('Trainer', 1),
('Receptionist', 2),
('Manager', 3),
('Cleaner', 4),
('Dietitian', 5),
('Physiotherapist', 6),
('Coach', 7),
('Assistant', 8),
('Technician', 9),
('Intern', 10);

-- --------------------------------------------------------

--
-- Table structure for table `supplements`
--

DROP TABLE IF EXISTS `supplements`;
CREATE TABLE IF NOT EXISTS `supplements` (
  `Supplement_ID` int NOT NULL AUTO_INCREMENT,
  `Type` varchar(20) NOT NULL,
  `Price` int NOT NULL,
  `Quantity` int NOT NULL,
  PRIMARY KEY (`Supplement_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `supplements`
--

INSERT INTO `supplements` (`Supplement_ID`, `Type`, `Price`, `Quantity`) VALUES
(1, 'Protein Powder', 30, 50),
(2, 'Creatine', 25, 40),
(3, 'BCAA', 20, 60),
(4, 'Pre-Workout', 35, 30),
(5, 'Vitamin D', 10, 100),
(6, 'Fish Oil', 15, 70),
(7, 'Magnesium', 12, 80),
(8, 'Zinc', 8, 90),
(9, 'Glutamine', 22, 40),
(10, 'Electrolytes', 18, 50);

-- --------------------------------------------------------

--
-- Table structure for table `trainer_booking`
--

DROP TABLE IF EXISTS `trainer_booking`;
CREATE TABLE IF NOT EXISTS `trainer_booking` (
  `Username` varchar(50) NOT NULL,
  `Full Name` varchar(100) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Date of Birth` date NOT NULL,
  `Email Address` varchar(50) NOT NULL,
  `Weight` int NOT NULL,
  `Height` int NOT NULL,
  `Fitness Goal` varchar(50) NOT NULL,
  `Exercise Frequency` varchar(100) NOT NULL,
  `Activity Level` varchar(50) NOT NULL,
  `Workout Location` varchar(20) NOT NULL,
  `Smoker` tinyint(1) NOT NULL,
  `Pregnant` tinyint(1) NOT NULL,
  `Health Problems` varchar(50) NOT NULL,
  `Injuries` varchar(50) NOT NULL,
  `Trainer` varchar(100) NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `trainer_booking`
--

INSERT INTO `trainer_booking` (`Username`, `Full Name`, `Gender`, `Date of Birth`, `Email Address`, `Weight`, `Height`, `Fitness Goal`, `Exercise Frequency`, `Activity Level`, `Workout Location`, `Smoker`, `Pregnant`, `Health Problems`, `Injuries`, `Trainer`) VALUES
('user10', 'Ava Robinson', 'Female', '1998-04-14', 'ava.robinson@example.com', 58, 162, 'Weight Management', '4-5 times/week', 'Active', 'Outdoor', 0, 0, 'None', 'None', 'Alex Smith'),
('user9', 'Daniel Garcia', 'Male', '1991-06-22', 'daniel.garcia@example.com', 78, 174, 'Lose Weight', '3-4 times/week', 'Moderate', 'Home', 0, 0, 'None', 'Ankle Pain', 'Emily Brown'),
('user7', 'David Lee', 'Male', '1980-12-18', 'david.lee@example.com', 95, 178, 'Improve Flexibility', '2-3 times/week', 'Moderate', 'Outdoor', 0, 0, 'Hypertension', 'None', 'Alex Smith'),
('user8', 'Olivia Taylor', 'Female', '1993-09-09', 'olivia.taylor@example.com', 62, 170, 'Build Muscle', '5-6 times/week', 'Active', 'Gym', 0, 0, 'None', 'Shoulder Pain', 'James Wilson'),
('user6', 'Sophia Martinez', 'Female', '1996-02-25', 'sophia.martinez@example.com', 55, 160, 'Tone Body', '4-5 times/week', 'Active', 'Home', 0, 0, 'None', 'None', 'Emily Brown'),
('user4', 'Emily Davis', 'Female', '1995-11-30', 'emily.davis@example.com', 70, 168, 'Weight Management', '3-4 times/week', 'Moderate', 'Gym', 0, 0, 'None', 'None', 'Alex Smith'),
('user5', 'Chris Brown', 'Male', '1988-07-07', 'chris.brown@example.com', 90, 182, 'Lose Weight', '1-2 times/week', 'Low', 'Gym', 0, 0, 'Diabetes', 'Back Pain', 'James Wilson'),
('user3', 'Mike Johnson', 'Male', '1992-03-12', 'mike.johnson@example.com', 85, 175, 'Increase Stamina', '2-3 times/week', 'Sedentary', 'Outdoor', 1, 0, 'Asthma', 'None', 'James Wilson'),
('user1', 'John Doe', 'Male', '1990-05-15', 'john.doe@example.com', 75, 180, 'Lose Weight', '3-4 times/week', 'Moderate', 'Gym', 0, 0, 'None', 'None', 'Alex Smith'),
('user2', 'Jane Smith', 'Female', '1985-08-20', 'jane.smith@example.com', 60, 165, 'Build Muscle', '5-6 times/week', 'Active', 'Home', 0, 0, 'None', 'Knee Pain', 'Emily Brown');

-- --------------------------------------------------------

--
-- Table structure for table `used`
--

DROP TABLE IF EXISTS `used`;
CREATE TABLE IF NOT EXISTS `used` (
  `Equipment_ID` int NOT NULL,
  `Class_ID` int NOT NULL,
  KEY `Class_ID` (`Class_ID`),
  KEY `Equipment_ID` (`Equipment_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `used`
--

INSERT INTO `used` (`Equipment_ID`, `Class_ID`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `First Name` varchar(20) NOT NULL,
  `Last Name` varchar(20) NOT NULL,
  `Email Address` varchar(50) NOT NULL,
  `Phone Number` int NOT NULL,
  `Username` int NOT NULL AUTO_INCREMENT,
  `date of birth` date NOT NULL,
  `Password` varchar(50) NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`First Name`, `Last Name`, `Email Address`, `Phone Number`, `Username`, `date of birth`, `Password`) VALUES
('Ian', 'Walker', 'ian.walker@gmail.com', 1011122233, 0, '1981-03-14', 'password10'),
('Grace', 'Hall', 'grace.hall@gmail.com', 1012223344, 8, '1983-11-05', 'password8'),
('Hannah', 'King', 'hannah.king@gmail.com', 1018887666, 9, '1975-08-22', 'password9'),
('Frank', 'Lee', 'frank.lee@gmail.com', 1017778899, 7, '1992-04-17', 'password7'),
('Charlie', 'Davis', 'charlie.davis@gmail.com', 1033322111, 5, '1995-07-30', 'password5'),
('Emily', 'Wilson', 'emily.wilson@gmail.com', 1099988777, 6, '1988-12-25', 'password6'),
('Bob', 'Brown', 'bob.brown@gmail.com', 1014445566, 4, '1978-09-15', 'password4'),
('Alice', 'Johnson', 'alice.johnson@gmail.com', 1015566777, 3, '1990-02-20', 'password3'),
('Jane', 'Smith', 'jane.smith@gmail.com', 1019876542, 2, '1985-05-10', 'password2'),
('John', 'Doe', 'john.doe@gmail.com', 1012345679, 1, '1980-01-01', 'password1');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attend`
--
ALTER TABLE `attend`
  ADD CONSTRAINT `attend_ibfk_1` FOREIGN KEY (`Class_ID`) REFERENCES `class` (`Class_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `attend_ibfk_2` FOREIGN KEY (`Member_ID`) REFERENCES `member` (`Member_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `class_ibfk_1` FOREIGN KEY (`Staff_ID`) REFERENCES `staff` (`Staff_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `have`
--
ALTER TABLE `have`
  ADD CONSTRAINT `have_ibfk_1` FOREIGN KEY (`Membership_ID`) REFERENCES `membership` (`Membership_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `have_ibfk_2` FOREIGN KEY (`Member_ID`) REFERENCES `member` (`Member_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `have_ibfk_3` FOREIGN KEY (`Payment_ID`) REFERENCES `payment` (`Payment_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `membership_type`
--
ALTER TABLE `membership_type`
  ADD CONSTRAINT `membership_type_ibfk_1` FOREIGN KEY (`Membership_ID`) REFERENCES `membership` (`Membership_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `member_email`
--
ALTER TABLE `member_email`
  ADD CONSTRAINT `member_email_ibfk_1` FOREIGN KEY (`Member_ID`) REFERENCES `member` (`Member_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `member_fitnessgoal`
--
ALTER TABLE `member_fitnessgoal`
  ADD CONSTRAINT `member_fitnessgoal_ibfk_1` FOREIGN KEY (`Member_ID`) REFERENCES `member` (`Member_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `purchase`
--
ALTER TABLE `purchase`
  ADD CONSTRAINT `purchase_ibfk_1` FOREIGN KEY (`GymWear_ID`) REFERENCES `gymwear` (`GymWear_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `purchase_ibfk_2` FOREIGN KEY (`Member_ID`) REFERENCES `member` (`Member_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `purchase_ibfk_3` FOREIGN KEY (`Payment_ID`) REFERENCES `payment` (`Payment_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `purchase_ibfk_4` FOREIGN KEY (`Supplement_ID`) REFERENCES `supplements` (`Supplement_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `staff_role`
--
ALTER TABLE `staff_role`
  ADD CONSTRAINT `staff_role_ibfk_1` FOREIGN KEY (`Staff_ID`) REFERENCES `staff` (`Staff_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `used`
--
ALTER TABLE `used`
  ADD CONSTRAINT `used_ibfk_1` FOREIGN KEY (`Class_ID`) REFERENCES `class` (`Class_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `used_ibfk_2` FOREIGN KEY (`Equipment_ID`) REFERENCES `equipment` (`Equipment_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;


--DQL


-- retrieve the names and phone numbers of members who attendeds yoga 
SELECT m.FirstName, m.LastName, m.PhoneNumber
FROM member m
JOIN attend a ON m.Member_ID = a.Member_ID
JOIN class c ON a.Class_ID = c.Class_ID
WHERE c.ClassName = 'Yoga';

-- names of members who have a fitness goal to lose weight
SELECT m.FirstName, m.LastName
FROM member m
JOIN member_fitnessgoal f ON m.Member_ID = f.Member_ID
WHERE f.FitnessGoal = 'Lose Weight';


-- names of members who have more than one fitness goal
SELECT m.FirstName, m.LastName
FROM member m
JOIN member_fitnessgoal f ON m.Member_ID = f.Member_ID
GROUP BY m.Member_ID
HAVING COUNT(f.FitnessGoal) > 1;


-- all gym classes with their capacities and the total number of people who attend for each class
SELECT c.ClassName, c.Capacity, COUNT(a.Member_ID) AS TotalAttendees
FROM class c
LEFT JOIN attend a ON c.Class_ID = a.Class_ID
GROUP BY c.Class_ID, c.ClassName, c.Capacity;


-- retrieve the total number of employees staff members who are trainers
SELECT COUNT(*) AS TotalTrainers
FROM staff_role
WHERE Role = 'Trainer';


-- the total revenue made by all memberships
SELECT SUM(p.Amount) AS TotalMembershipRevenue
FROM payment p
JOIN have h ON p.Payment_ID = h.Payment_ID
JOIN membership m ON h.Membership_ID = m.Membership_ID;

-- classes where more than 5 pieces of equipment are used
SELECT c.ClassName
FROM class c
JOIN used u ON c.Class_ID = u.Class_ID
JOIN equipment e ON u.Equipment_ID = e.Equipment_ID
GROUP BY c.Class_ID, c.ClassName
HAVING COUNT(u.Equipment_ID) > 5;

-- retrieve the average salary of staff by their roles
SELECT sr.Role, AVG(s.Salary) AS AverageSalary
FROM staff_role sr
JOIN staff s ON sr.Staff_ID = s.Staff_ID
GROUP BY sr.Role;

-- retrieve the names of members and the supplements they purchased
SELECT m.FirstName, m.LastName, s.Type AS Supplement
FROM purchase p
JOIN member m ON p.Member_ID = m.Member_ID
JOIN supplements s ON p.Supplement_ID = s.Supplement_ID;

-- the total number of members following each fitness goal
SELECT f.FitnessGoal, COUNT(f.Member_ID) AS TotalMembers
FROM member_fitnessgoal f
GROUP BY f.FitnessGoal;

-- list all gym classes with the number of trainers assigned to them
SELECT c.ClassName, COUNT(s.Staff_ID) AS TotalTrainers
FROM class c
JOIN staff s ON c.Staff_ID = s.Staff_ID
GROUP BY c.ClassName;

-- the gym wear item with the highest price
SELECT Category, Size, Price
FROM gymwear
ORDER BY Price DESC
LIMIT 1;

-- the total number of members who have dependents
SELECT COUNT(DISTINCT m.Member_ID) AS MembersWithDependents
FROM member m
JOIN have h ON m.Member_ID = h.Member_ID;

-- find the classes attended by members with the fitness goal to build muscle
SELECT c.ClassName, m.FirstName, m.LastName
FROM member m
JOIN member_fitnessgoal f ON m.Member_ID = f.Member_ID
JOIN attend a ON m.Member_ID = a.Member_ID
JOIN class c ON a.Class_ID = c.Class_ID
WHERE f.FitnessGoal = 'Build Muscle';

-- the names and contact information of members who purchased gym wear costing more than 400
SELECT m.FirstName, m.LastName, m.PhoneNumber, g.Category AS GymWear, g.Price
FROM purchase p
JOIN member m ON p.Member_ID = m.Member_ID
JOIN gymwear g ON p.GymWear_ID = g.GymWear_ID
WHERE g.Price > 400;

-- retrieve the total number of supplements sold and their total revenue
SELECT SUM(p.Amount) AS TotalRevenue, COUNT(s.Supplement_ID) AS TotalSupplementsSold
FROM purchase pu
JOIN supplements s ON pu.Supplement_ID = s.Supplement_ID
JOIN payment p ON pu.Payment_ID = p.Payment_ID;

-- list all gym classes along with their trainers' names
SELECT c.ClassName, s.FirstName AS TrainerFirstName, s.LastName AS TrainerLastName
FROM class c
JOIN staff s ON c.Staff_ID = s.Staff_ID;

-- find the most popular fitness goal among members
SELECT f.FitnessGoal, COUNT(f.Member_ID) AS TotalMembers
FROM member_fitnessgoal f
GROUP BY f.FitnessGoal
ORDER BY TotalMembers DESC
LIMIT 1;