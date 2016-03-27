-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2016 at 08:04 AM
-- Server version: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `impracta`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE IF NOT EXISTS `addresses` (
  `id` int(10) NOT NULL,
  `doctor_id` int(10) NOT NULL,
  `clinic_id` int(10) NOT NULL,
  `block_bldg_unit` varchar(100) NOT NULL,
  `street` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `province` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `doctor_id`, `clinic_id`, `block_bldg_unit`, `street`, `city`, `province`) VALUES
(1, 1, 1, '2444', 'Aurora Aurora corner Facundo Street', 'Pasay City', 'Metro Manila'),
(2, 1, 2, '1838', 'Dian Street Balanian', ' Makati City', ' Metro Manila'),
(3, 6, 1, '2444', 'Aurora corner Facundo Street', 'Pasay City', 'Metro Manila');

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE IF NOT EXISTS `awards` (
  `id` int(10) NOT NULL,
  `doctor_id` int(10) NOT NULL,
  `award` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `year` int(4) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `awards`
--

INSERT INTO `awards` (`id`, `doctor_id`, `award`, `location`, `year`) VALUES
(1, 1, 'Top Ten Most Outstanding Interns', 'Makati Medical Center', 2006),
(2, 1, 'Meritorious Service Award', 'Asst. Secretary, Makati Medical Society', 2014);

-- --------------------------------------------------------

--
-- Table structure for table `clinics`
--

CREATE TABLE IF NOT EXISTS `clinics` (
  `id` int(10) NOT NULL,
  `doctor_id` int(10) NOT NULL,
  `clinic_name` varchar(100) NOT NULL,
  `fee` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clinics`
--

INSERT INTO `clinics` (`id`, `doctor_id`, `clinic_name`, `fee`) VALUES
(1, 1, 'FamCare Medical Clinic', 350),
(2, 1, 'St. Clare''s Medical Center', 500),
(5, 6, 'FamCare Medical Clinic', 350);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(10) NOT NULL,
  `doctor_id` int(10) NOT NULL,
  `type` varchar(50) NOT NULL,
  `value` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `doctor_id`, `type`, `value`) VALUES
(1, 1, 'landline', '23423423'),
(2, 6, 'mobile', '09051236451');

-- --------------------------------------------------------

--
-- Table structure for table `day_time`
--

CREATE TABLE IF NOT EXISTS `day_time` (
  `id` int(10) NOT NULL,
  `schedule_id` int(10) NOT NULL,
  `day` varchar(10) NOT NULL,
  `time_start` time(6) NOT NULL,
  `time_end` time(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `day_time`
--

INSERT INTO `day_time` (`id`, `schedule_id`, `day`, `time_start`, `time_end`) VALUES
(1, 1, 'TUE', '09:30:00.000000', '12:00:00.000000'),
(2, 1, 'FRI', '13:00:00.000000', '16:00:00.000000'),
(3, 2, 'MON', '13:00:00.000000', '16:00:00.000000'),
(4, 6, 'MON', '10:30:00.000000', '12:00:00.000000'),
(5, 6, 'THU', '10:00:00.000000', '12:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE IF NOT EXISTS `doctors` (
  `id` int(10) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `facebook_profile` varchar(50) NOT NULL,
  `twitter_profile` varchar(50) NOT NULL,
  `google_profile` varchar(50) NOT NULL,
  `years_of_experience` int(2) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `first_name`, `middle_name`, `last_name`, `facebook_profile`, `twitter_profile`, `google_profile`, `years_of_experience`, `description`) VALUES
(1, 'Andrew', 'B', 'Vicencio', 'andrew@gmal.com', 'andrew@gmal.com', 'andrew@gmal.com', 11, 'Obtained his degree in Doctor of Medicine at the University of the East Ramon Magsaysay Memorial Medical Center and did his medical internship training at the Makati Medical Center. He went into pediatric residency training for three years at Makati Medical Center and was later certified by the Specialty Board of the Philippine Pediatric Society as Diplomate in December 2013. \r\n\r\nHe is currently an assistant clinical professor at the Department of Pediatrics, UERMMMCI and holds various position '),
(6, 'Almira ', 'M', 'Romualdez', 'almira@gmail.com', 'almira@gmail.com', 'almira@gmail.com', 11, 'Dr. Almira M. Romualdez graduated college at the University of Santo Tomas with a bachelor''s degree in Botany. She pursued her medical studies and graduated with a degree of Doctor of Medicine at the University of the East Ramon Magsaysay Memorial Medical Center. She took her medical Internship Training at the Makati Medical Center and later pursued her Residency Training as an OB/GYN specialist at The Quirino Memorial Medical Center, formerly Philippine Labor Hospital in Quezon City. Presently ');

-- --------------------------------------------------------

--
-- Table structure for table `educations`
--

CREATE TABLE IF NOT EXISTS `educations` (
  `id` int(10) NOT NULL,
  `doctor_id` int(10) NOT NULL,
  `course` varchar(50) NOT NULL,
  `school` varchar(100) NOT NULL,
  `year_graduated` int(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `educations`
--

INSERT INTO `educations` (`id`, `doctor_id`, `course`, `school`, `year_graduated`) VALUES
(1, 1, 'Bachelor of Science, Botany', 'University of Santo Thomas', 2000),
(2, 1, 'Doctor of Medicine', 'University of the East Ramon Magsaysay Memorial Medical Center', 2005),
(3, 1, 'Medical Internship', 'Makati Medical Center', 2006),
(5, 6, 'Doctor of Medicine', ' University of the East Ramon Magsaysay Memorial Medical Center', 2005);

-- --------------------------------------------------------

--
-- Table structure for table `experiences`
--

CREATE TABLE IF NOT EXISTS `experiences` (
  `id` int(10) NOT NULL,
  `doctor_id` int(10) NOT NULL,
  `position` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `year_from` int(4) DEFAULT NULL,
  `year_to` int(4) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `experiences`
--

INSERT INTO `experiences` (`id`, `doctor_id`, `position`, `location`, `year_from`, `year_to`) VALUES
(1, 1, 'Visiting Consultant ', 'Makati Medical Center', 2012, 2015),
(2, 1, 'Active Consultant', 'St. Clares Medical Center', 2012, 2015),
(3, 1, 'Assistant Clinical Professor', 'University of the East Ramon Magsaysay', 2012, 2015),
(5, 6, 'Obsetrics and Gynecology', ' Philippine Obstetrical and Gynecological Society', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `memberships`
--

CREATE TABLE IF NOT EXISTS `memberships` (
  `id` int(10) NOT NULL,
  `doctor_id` int(10) NOT NULL,
  `membership` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `memberships`
--

INSERT INTO `memberships` (`id`, `doctor_id`, `membership`) VALUES
(1, 1, 'Philippine Pediatric Society'),
(2, 1, 'Makati Medical Society'),
(3, 1, 'Philippine Medical Asociation'),
(4, 6, 'Philippine Medical Association'),
(5, 6, 'Philippine Obstetrics and Gynecologic Society');

-- --------------------------------------------------------

--
-- Table structure for table `registrations`
--

CREATE TABLE IF NOT EXISTS `registrations` (
  `id` int(10) NOT NULL,
  `doctor_id` int(10) NOT NULL,
  `registration_id` int(10) NOT NULL,
  `board` varchar(50) NOT NULL,
  `year` int(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registrations`
--

INSERT INTO `registrations` (`id`, `doctor_id`, `registration_id`, `board`, `year`) VALUES
(1, 1, 107786, 'Professional Regulation Commission', 2006),
(2, 6, 109087, 'Professional Regulation Commission', 2005);

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE IF NOT EXISTS `schedules` (
  `id` int(10) NOT NULL,
  `doctor_id` int(10) NOT NULL,
  `clinic_id` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `doctor_id`, `clinic_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(6, 6, 5);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE IF NOT EXISTS `services` (
  `id` int(10) NOT NULL,
  `doctor_id` int(10) NOT NULL,
  `service` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `doctor_id`, `service`) VALUES
(1, 1, 'Pediatrics'),
(2, 1, 'Chickenpox Treatment'),
(3, 1, 'Child Growth Management'),
(4, 1, 'Vaccination'),
(5, 6, 'Pap Smear'),
(6, 6, 'Uterine Prolapse Repair'),
(7, 6, 'Family Planning'),
(8, 6, 'Tubectomy/Tubal Ligation');

-- --------------------------------------------------------

--
-- Table structure for table `specializations`
--

CREATE TABLE IF NOT EXISTS `specializations` (
  `id` int(10) NOT NULL,
  `doctor_id` int(10) NOT NULL,
  `specialization` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `specializations`
--

INSERT INTO `specializations` (`id`, `doctor_id`, `specialization`) VALUES
(1, 1, 'Pediatrician'),
(4, 6, 'Obstetrician'),
(5, 6, 'Gynecologist');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clinic_id` (`clinic_id`),
  ADD KEY `doctor_id` (`doctor_id`);

--
-- Indexes for table `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_id` (`doctor_id`);

--
-- Indexes for table `clinics`
--
ALTER TABLE `clinics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_id` (`doctor_id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_id` (`doctor_id`);

--
-- Indexes for table `day_time`
--
ALTER TABLE `day_time`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schedule_id` (`schedule_id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `educations`
--
ALTER TABLE `educations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_id` (`doctor_id`);

--
-- Indexes for table `experiences`
--
ALTER TABLE `experiences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_id` (`doctor_id`);

--
-- Indexes for table `memberships`
--
ALTER TABLE `memberships`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_id` (`doctor_id`);

--
-- Indexes for table `registrations`
--
ALTER TABLE `registrations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_id` (`doctor_id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_id` (`doctor_id`),
  ADD KEY `clinic_id` (`clinic_id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_id` (`doctor_id`);

--
-- Indexes for table `specializations`
--
ALTER TABLE `specializations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_id` (`doctor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `awards`
--
ALTER TABLE `awards`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `clinics`
--
ALTER TABLE `clinics`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `day_time`
--
ALTER TABLE `day_time`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `educations`
--
ALTER TABLE `educations`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `experiences`
--
ALTER TABLE `experiences`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `memberships`
--
ALTER TABLE `memberships`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `registrations`
--
ALTER TABLE `registrations`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `specializations`
--
ALTER TABLE `specializations`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_ibfk_1` FOREIGN KEY (`clinic_id`) REFERENCES `clinics` (`id`),
  ADD CONSTRAINT `addresses_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`);

--
-- Constraints for table `awards`
--
ALTER TABLE `awards`
  ADD CONSTRAINT `awards_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`);

--
-- Constraints for table `clinics`
--
ALTER TABLE `clinics`
  ADD CONSTRAINT `clinics_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`);

--
-- Constraints for table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`);

--
-- Constraints for table `day_time`
--
ALTER TABLE `day_time`
  ADD CONSTRAINT `day_time_ibfk_1` FOREIGN KEY (`schedule_id`) REFERENCES `schedules` (`id`),
  ADD CONSTRAINT `day_time_ibfk_2` FOREIGN KEY (`schedule_id`) REFERENCES `schedules` (`id`);

--
-- Constraints for table `educations`
--
ALTER TABLE `educations`
  ADD CONSTRAINT `educations_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`);

--
-- Constraints for table `experiences`
--
ALTER TABLE `experiences`
  ADD CONSTRAINT `experiences_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`);

--
-- Constraints for table `memberships`
--
ALTER TABLE `memberships`
  ADD CONSTRAINT `memberships_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`);

--
-- Constraints for table `registrations`
--
ALTER TABLE `registrations`
  ADD CONSTRAINT `registrations_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`);

--
-- Constraints for table `schedules`
--
ALTER TABLE `schedules`
  ADD CONSTRAINT `schedules_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`),
  ADD CONSTRAINT `schedules_ibfk_2` FOREIGN KEY (`clinic_id`) REFERENCES `clinics` (`id`);

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`);

--
-- Constraints for table `specializations`
--
ALTER TABLE `specializations`
  ADD CONSTRAINT `specializations_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
