-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 07, 2017 at 10:19 AM
-- Server version: 5.6.28
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `Negarit`
--

-- --------------------------------------------------------

--
-- Table structure for table `Company`
--

CREATE TABLE `Company` (
  `ID` int(11) NOT NULL,
  `CompanyName` varchar(20) NOT NULL,
  `Description` text NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `createdDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Company`
--

INSERT INTO `Company` (`ID`, `CompanyName`, `Description`, `isActive`, `createdDate`) VALUES
(1, 'YeneTube', 'Yenetube is a mobile app company', 1, '2017-03-03 14:19:55'),
(2, 'Bengeos Systems', 'Descritpion', 1, '2017-03-03 19:40:36'),
(3, 'Bengeos Systems', 'Descritpion', 1, '2017-03-03 19:43:07'),
(4, 'Bengeos Systems', 'Descritpion', 1, '2017-03-03 19:43:53'),
(5, 'Bengeos Systems', 'Descritpion', 1, '2017-03-03 19:44:35'),
(6, 'Bengeos Systems', 'Descritpion', 1, '2017-03-03 19:44:36'),
(7, 'Bengeos Systems', 'Descritpion', 1, '2017-03-03 19:45:27'),
(8, 'Bengeos Systems', 'Descritpion', 1, '2017-03-03 19:49:17'),
(9, 'Bengeos Systems', 'Descritpion', 1, '2017-03-03 19:49:19'),
(10, 'Bengeos Systems', 'Descritpion', 1, '2017-03-03 19:49:20'),
(11, 'Bengeos Systems', 'Descritpion', 1, '2017-03-03 19:50:25'),
(12, 'Bengeos Systems', 'Descritpion', 1, '2017-03-03 19:51:58'),
(13, 'Bengeos Systems', 'Descritpion', 1, '2017-03-03 19:53:08'),
(14, 'Bengeos Systems', 'Descritpion', 1, '2017-03-03 19:53:09'),
(15, 'Bengeos Systems', 'Descritpion', 1, '2017-03-03 19:53:10'),
(16, 'Bengeos Systems', 'Descritpion', 1, '2017-03-03 19:53:11'),
(17, 'Bengeos Systems', 'Descritpion', 1, '2017-03-03 19:53:13'),
(18, 'GeorgeWinsofts', 'New Company', 1, '2017-03-03 20:33:32'),
(19, 'GeorgeWinsofts', 'New Company', 1, '2017-03-03 20:35:41'),
(20, 'GeorgeWinsofts', 'New Company', 1, '2017-03-03 20:36:26'),
(21, 'GeorgeWinsofts', 'New Company', 1, '2017-03-03 20:38:29'),
(22, 'GeorgeWinsofts', 'New Company', 1, '2017-03-03 20:40:14'),
(23, 'GeorgeWinsofts', 'New Company', 1, '2017-03-03 20:41:26'),
(24, 'sdasda', 'New Company', 1, '2017-03-03 20:51:04'),
(25, 'sdasda', 'New Company', 1, '2017-03-03 20:51:10'),
(26, 'dasdasd', 'New Company', 1, '2017-03-03 20:52:10'),
(27, 'dasdasd', 'New Company', 1, '2017-03-03 20:52:34'),
(28, 'sdasdasd', 'New Company', 1, '2017-03-03 20:53:50'),
(29, 'sdasdasd', 'New Company', 1, '2017-03-03 20:53:53'),
(30, 'sdasdasd', 'New Company', 1, '2017-03-03 20:53:56'),
(31, 'sdasdasd', 'New Company', 1, '2017-03-03 20:53:59'),
(32, 'GeorgeWinSofts', 'New Company', 1, '2017-03-03 20:57:52'),
(33, 'Ben AI systems', 'New Company', 1, '2017-03-03 21:12:39'),
(34, 'GCME', 'New Company', 1, '2017-03-06 08:24:51');

-- --------------------------------------------------------

--
-- Table structure for table `CompanyDevices`
--

CREATE TABLE `CompanyDevices` (
  `ID` int(11) NOT NULL,
  `CompanyID` int(11) NOT NULL,
  `DeviceID` int(11) NOT NULL,
  `createdDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `CompanyDevices`
--

INSERT INTO `CompanyDevices` (`ID`, `CompanyID`, `DeviceID`, `createdDate`) VALUES
(1, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `CompanyUsers`
--

CREATE TABLE `CompanyUsers` (
  `ID` int(11) NOT NULL,
  `CompanyID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `CompanyUsers`
--

INSERT INTO `CompanyUsers` (`ID`, `CompanyID`, `UserID`, `createdDate`) VALUES
(1, 1, 1, '2017-03-03 17:20:15'),
(2, 16, 1, '2017-03-03 22:59:15'),
(7, 2, 18, '2017-03-03 23:57:52'),
(8, 2, 19, '2017-03-04 00:12:39'),
(9, 1, 18, '2017-03-04 10:11:29'),
(10, 2, 20, '2017-03-06 11:24:52');

-- --------------------------------------------------------

--
-- Table structure for table `Devices`
--

CREATE TABLE `Devices` (
  `ID` int(11) NOT NULL,
  `deviceName` varchar(100) NOT NULL,
  `deviceDescription` text NOT NULL,
  `devicePass` varchar(100) NOT NULL,
  `devicePhone` varchar(20) NOT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `createdDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Devices`
--

INSERT INTO `Devices` (`ID`, `deviceName`, `deviceDescription`, `devicePass`, `devicePhone`, `updatedDate`, `createdDate`) VALUES
(1, 'TD1', '', 'passben', '+251916417951', NULL, '2017-02-23 04:49:24'),
(2, 'Test Device One', 'dadasd asdasd', 'passben', '+2716265162561', NULL, '2017-03-04 10:22:23');

-- --------------------------------------------------------

--
-- Table structure for table `Messages`
--

CREATE TABLE `Messages` (
  `ID` int(11) NOT NULL,
  `messageID` varchar(100) NOT NULL,
  `messageFrom` varchar(20) NOT NULL,
  `message` varchar(500) NOT NULL,
  `messageSentTo` varchar(20) NOT NULL,
  `deviceID` int(11) NOT NULL,
  `delivered` tinyint(1) NOT NULL,
  `outgoingSMS` tinyint(1) NOT NULL,
  `createdDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Messages`
--

INSERT INTO `Messages` (`ID`, `messageID`, `messageFrom`, `message`, `messageSentTo`, `deviceID`, `delivered`, `outgoingSMS`, `createdDate`, `updatedDate`) VALUES
(2, '94ba4ef6-3073-40b4-88e5-51d09877cf25', '+251916587396', 'BINI man how is negarit', '+251916417951', 1, 1, 0, '2017-02-23 05:19:53', NULL),
(3, '7b9061fe-8cc5-4051-b221-3cc217a96278', '+251916587396', 'Make get request', '+251916417951', 1, 1, 0, '2017-02-23 05:21:30', NULL),
(6, '2e406af4-a7c2-4786-b612-02b921d043c9', '251994', 'Dear Customer, your account has been recharged succesfully.your Recharged balance is 25.00 Birr.your  balance is 25.08 Birr.With this balance your account will expire on 24/06/2017.ethio telecom', '+251916417951', 1, 1, 0, '2017-02-23 06:50:06', NULL),
(7, '84bbc7e5-9526-4550-9697-9e0b78b8c2ce', '994', 'Dear Customer, you have successfully sent gift Mobile SMS Package 80 SMS for 7 days to 0913609212 .Thank you. ethio telecom.', '+251916417951', 1, 1, 0, '2017-02-23 06:54:31', NULL),
(8, '752aaafb-3f11-4fd5-944e-783ab037de11', '+251913609212', 'Hey man', '+251916417951', 1, 1, 0, '2017-02-23 06:55:42', NULL),
(9, 'dasdhasdjk-asdasdjs-asdasdsad', '+251916417951', 'this is a response message', '+251913609212', 1, 1, 1, '2017-02-23 07:04:23', NULL),
(11, '280df3b7-a526-4033-b071-34ea7fc42da7', '+251913609212', 'No incoming sms', '+251916417951', 1, 1, 0, '2017-02-23 07:17:30', NULL),
(12, '9da09cdb-b5cf-4d0d-9857-f11906f8194a', '+251913609212', 'Test negarit with samy ', '+251916417951', 1, 1, 0, '2017-02-23 07:29:14', NULL),
(16, 'bbb7ede8-35a6-4624-a2e4-e4f56b2b2dda', '+251916417951', 'Dude is negarit is working fine', '251913609212', 1, 1, 0, '2017-02-28 09:19:28', NULL),
(17, '4d9f8888-76ef-4d0d-aeef-1806451a630d', '+251916417951', 'Hey bro', '251913609212', 1, 1, 0, '2017-02-28 09:19:39', NULL),
(22, '62a7f68f-a0b2-4ee5-83a1-4f18273436aa', '+251913609212', 'Next trial ', '+251916417951', 1, 1, 0, '2017-03-01 13:26:32', NULL),
(25, 'f0c9ca70-078b-4de1-b655-fc179a791178', '251994', 'Dear Customer, your remaining amount  from Mobile Internet Package 100MB to be expired after 24 Hours is 4.846 MB  with expiry date on 2017-03-10 at 21:12:30;\n Thank you, ethio telecom.', '+251916417951', 1, 1, 0, '2017-03-11 06:54:44', NULL),
(26, 'abe213c2-0ed6-4a06-888a-bfccb55452c4', 'ethio tel', 'ከሞባይልዎ የአየር ሰዓት በማስተላለፍ ወዳጅ ዘመድዎን ያስደስቱ  *806*የሞባይል ቁጥር*የብር መጠን# ይደውሉ', '+251916417951', 1, 1, 0, '2017-03-11 06:55:18', NULL),
(27, '5073aa0e-7a26-47ba-9ac2-d6072639742d', 'Oxfam', 'ለሴት አርሶ/አርብቶ አደሮች ተገቢውን እውቅናና ድጋፍ መስጠት ዘላቂነት ያለው ልማትን ለማረጋገጥ ያስችላል፡፡', '+251916417951', 1, 1, 0, '2017-03-11 06:55:31', NULL),
(28, 'ba5bafe5-4d1f-4734-8a3c-06f643be0663', '251994', 'Dear Customer, your remaining amount  from Mobile Internet Package 100MB to be expired after 24 Hours is 10.328 MB  with expiry date on 2017-03-10 at 21:12:30;\n Thank you, ethio telecom.', '+251916417951', 1, 1, 0, '2017-03-11 06:58:21', NULL),
(29, '181302df-7e92-4f96-970a-b15ee09594a0', '251994', 'Dear Customer, your remaining amount  from Mobile Internet Package 100MB to be expired after 24 Hours is 13.155 MB  with expiry date on 2017-03-10 at 21:12:30;\n Thank you, ethio telecom.', '+251916417951', 1, 1, 0, '2017-03-11 06:58:21', NULL),
(30, '2e0d8bea-7cde-41e1-97a5-ef7d892cfc57', '251994', 'Dear customer, You have used 75% of your Internet plan from Mobile Internet Package 100MB to be expired after 24 Hours package. It will expire on 2017-03-10 at 21:12:30. Thank you, ethio telecom.', '+251916417951', 1, 1, 0, '2017-03-11 06:58:21', NULL),
(31, '8811032d-2970-4518-9112-e02ddfb26a68', '251994', 'Dear Customer, your remaining amount  from Mobile Internet Package 100MB to be expired after 24 Hours is 33.269 MB  with expiry date on 2017-03-10 at 21:12:30;\n Thank you, ethio telecom.', '+251916417951', 1, 1, 0, '2017-03-11 06:58:21', NULL),
(32, '0680c7a6-6837-4d48-b158-bd75555fb77f', '994', 'Dear  SENAYIT LEMA ADINEW As per your request the new service offer Mobile Internet Package 25MB to be expired after 24 Hours is added to your service number 0916417951. The service offer is effective on 09-03-2017. Please call to 994 for additional information. Thank you, ethio telecom.', '+251916417951', 1, 1, 0, '2017-03-11 06:58:21', NULL),
(33, '40e72269-63c4-494c-b4b2-fbe6d391685f', '994', 'Dear  SENAYIT LEMA ADINEW As per your request the new service offer Mobile Internet Package 100MB to be expired after 24 Hours is added to your service number 0916417951. The service offer is effective on 09-03-2017. Please call to 994 for additional information. Thank you, ethio telecom.', '+251916417951', 1, 1, 0, '2017-03-11 06:58:21', NULL),
(34, '1e29c7d9-d56a-4d5a-b377-07a8f8687329', 'Google', 'G-725802 is your Google verification code.', '+251916417951', 1, 1, 0, '2017-03-11 06:58:21', NULL),
(35, 'f0710778-75b9-4752-9a7d-22c88aceae54', '251994', 'Dear Customer, your remaining amount  from Mobile Internet Package 100MB to be expired after 24 Hours is 97.930 MB  with expiry date on 2017-03-10 at 21:12:30;\n Thank you, ethio telecom.', '+251916417951', 1, 1, 0, '2017-03-11 06:58:21', NULL),
(36, 'b74d1224-bb13-40c5-b0d9-eb4098db46a3', '251994', 'Dear Customer, your account has been recharged succesfully.your Recharged balance is 10.00 Birr.your  balance is 21.61 Birr.With this balance your account will expire on 08/07/2017.ethio telecom', '+251916417951', 1, 1, 0, '2017-03-11 06:58:21', NULL),
(37, 'e353f693-24cc-4327-8850-9599f0b78abe', '251994', 'Dear Customer, your account has been recharged succesfully.your Recharged balance is 10.00 Birr.your  balance is 11.61 Birr.With this balance your account will expire on 08/07/2017.ethio telecom', '+251916417951', 1, 1, 0, '2017-03-11 06:58:22', NULL),
(38, '0acf99e7-8805-456e-a008-3dca633bfe91', 'Google', 'G-673793 is your Google verification code.', '+251916417951', 1, 1, 0, '2017-03-11 06:58:22', NULL),
(39, '6ce287cf-d8e2-4cc8-8e3e-03d8fd82ac58', '251994', 'Dear Customer, your remaining amount  from Mobile Internet Package 100MB to be expired after 24 Hours is 4.846 MB  with expiry date on 2017-03-10 at 21:12:30;\n Thank you, ethio telecom.', '+251916417951', 1, 1, 0, '2017-03-11 07:50:11', NULL),
(40, 'b74e86d4-8c04-4458-aeaf-e5b1fd102f97', 'ethio tel', 'ከሞባይልዎ የአየር ሰዓት በማስተላለፍ ወዳጅ ዘመድዎን ያስደስቱ  *806*የሞባይል ቁጥር*የብር መጠን# ይደውሉ', '+251916417951', 1, 1, 0, '2017-03-11 07:50:26', NULL),
(41, '1a6b4b65-86f0-4d26-87cc-ab8995eaec4f', 'Oxfam', 'ለሴት አርሶ/አርብቶ አደሮች ተገቢውን እውቅናና ድጋፍ መስጠት ዘላቂነት ያለው ልማትን ለማረጋገጥ ያስችላል፡፡', '+251916417951', 1, 1, 0, '2017-03-11 07:50:26', NULL),
(42, 'c2371a03-5aa1-456c-bbd2-1a3a832c9b56', '251994', 'Dear Customer, your remaining amount  from Mobile Internet Package 100MB to be expired after 24 Hours is 10.328 MB  with expiry date on 2017-03-10 at 21:12:30;\n Thank you, ethio telecom.', '+251916417951', 1, 1, 0, '2017-03-11 07:50:26', NULL),
(43, '2c1dffa3-875c-438e-9387-66775a6d46c0', '251994', 'Dear Customer, your remaining amount  from Mobile Internet Package 100MB to be expired after 24 Hours is 13.155 MB  with expiry date on 2017-03-10 at 21:12:30;\n Thank you, ethio telecom.', '+251916417951', 1, 1, 0, '2017-03-11 07:50:26', NULL),
(44, 'cd7f900d-edd6-478d-a955-24c4916b2d4a', '251994', 'Dear customer, You have used 75% of your Internet plan from Mobile Internet Package 100MB to be expired after 24 Hours package. It will expire on 2017-03-10 at 21:12:30. Thank you, ethio telecom.', '+251916417951', 1, 1, 0, '2017-03-11 07:50:26', NULL),
(45, 'c73dbaa4-baeb-43bc-8ea9-29652e4a36ae', '251994', 'Dear Customer, your remaining amount  from Mobile Internet Package 100MB to be expired after 24 Hours is 33.269 MB  with expiry date on 2017-03-10 at 21:12:30;\n Thank you, ethio telecom.', '+251916417951', 1, 1, 0, '2017-03-11 07:50:27', NULL),
(46, 'da2aa13f-685d-445e-ae80-567e22660fb6', '994', 'Dear  SENAYIT LEMA ADINEW As per your request the new service offer Mobile Internet Package 25MB to be expired after 24 Hours is added to your service number 0916417951. The service offer is effective on 09-03-2017. Please call to 994 for additional information. Thank you, ethio telecom.', '+251916417951', 1, 1, 0, '2017-03-11 07:50:27', NULL),
(47, 'ab18fa40-df08-4144-8197-ebe49e55c49d', '994', 'Dear  SENAYIT LEMA ADINEW As per your request the new service offer Mobile Internet Package 100MB to be expired after 24 Hours is added to your service number 0916417951. The service offer is effective on 09-03-2017. Please call to 994 for additional information. Thank you, ethio telecom.', '+251916417951', 1, 1, 0, '2017-03-11 07:50:27', NULL),
(48, '49c84ceb-fab8-4d49-8249-dae39da2f5fc', 'Google', 'G-725802 is your Google verification code.', '+251916417951', 1, 1, 0, '2017-03-11 07:50:27', NULL),
(49, '82b60166-f48f-4d1c-b2b8-cc06052ff528', '251994', 'Dear Customer, your remaining amount  from Mobile Internet Package 100MB to be expired after 24 Hours is 97.930 MB  with expiry date on 2017-03-10 at 21:12:30;\n Thank you, ethio telecom.', '+251916417951', 1, 1, 0, '2017-03-11 07:50:27', NULL),
(50, '5eeae6c7-ff66-468e-a5c7-e2341623af6b', '251994', 'Dear Customer, your account has been recharged succesfully.your Recharged balance is 10.00 Birr.your  balance is 21.61 Birr.With this balance your account will expire on 08/07/2017.ethio telecom', '+251916417951', 1, 1, 0, '2017-03-11 07:50:28', NULL),
(51, '7f7406fe-4460-4ea7-a395-f5a0a39863bd', '251994', 'Dear Customer, your account has been recharged succesfully.your Recharged balance is 10.00 Birr.your  balance is 11.61 Birr.With this balance your account will expire on 08/07/2017.ethio telecom', '+251916417951', 1, 1, 0, '2017-03-11 07:50:28', NULL),
(52, '424f59c0-bd24-4b13-9405-d84a3128a887', 'Google', 'G-673793 is your Google verification code.', '+251916417951', 1, 1, 0, '2017-03-11 07:50:28', NULL),
(54, 'f0770a62-0dc6-451c-9ae6-cf4b6e797bd8', '251994', 'Dear Customer, your balance is insufficient for this service. Please recharge your account. ethio telecom', '+251916417951', 1, 1, 0, '2017-03-11 08:54:48', NULL),
(55, '4eb8f45f-8654-4cee-b9fe-7ba27ce9e005', '251994', 'Dear Customer, your balance is insufficient for this service. Please recharge your account. ethio telecom', '+251916417951', 1, 1, 0, '2017-03-11 08:55:58', NULL),
(56, '5ec5c0f7-4c49-465f-a57d-0b7f7c477e5a', '251994', 'Dear Customer, your balance is insufficient for this service. Please recharge your account. ethio telecom', '+251916417951', 1, 1, 0, '2017-03-11 08:56:51', NULL),
(57, '785b254a-f5c6-41ba-b4e1-73e45ea59d27', '251994', 'Dear Customer, your balance is insufficient for this service. Please recharge your account. ethio telecom', '+251916417951', 1, 1, 0, '2017-03-11 08:57:47', NULL),
(58, '11850f01-e083-49a2-b1c2-f49314fedf6e', '251994', 'Dear Customer, your balance is insufficient for this service. Please recharge your account. ethio telecom', '+251916417951', 1, 1, 0, '2017-03-11 08:58:47', NULL),
(59, '6ce99dc5-feef-442a-bad6-8c1eec535dd0', '251994', 'Dear Customer, your balance is insufficient for this service. Please recharge your account. ethio telecom', '+251916417951', 1, 1, 0, '2017-03-11 08:59:47', NULL),
(60, '0ab74e5f-4a39-4e5b-b654-0006d6507a10', '251994', 'Dear Customer, your balance is insufficient for this service. Please recharge your account. ethio telecom', '+251916417951', 1, 1, 0, '2017-03-11 09:01:48', NULL),
(61, 'b3acc87c-505e-4583-9a16-c8acc0ebffe2', '251994', 'Dear Customer, your balance is insufficient for this service. Please recharge your account. ethio telecom', '+251916417951', 1, 1, 0, '2017-03-11 09:01:52', NULL),
(62, '40fa5c32-123e-4277-b7bf-5b1164a87421', '251994', 'Dear Customer, your balance is insufficient for this service. Please recharge your account. ethio telecom', '+251916417951', 1, 1, 0, '2017-03-11 09:02:52', NULL),
(63, '4ef7c00a-948a-4685-9aa2-9bcbf9ed6ebf', '251994', 'Dear Customer, your balance is insufficient for this service. Please recharge your account. ethio telecom', '+251916417951', 1, 1, 0, '2017-03-11 09:03:53', NULL),
(64, '4f877f9f-c3c1-470c-bdd7-be3d543c9ce0', '251994', 'Dear Customer, your balance is insufficient for this service. Please recharge your account. ethio telecom', '+251916417951', 1, 1, 0, '2017-03-11 09:05:02', NULL),
(65, 'f9d12be2-3759-4c2b-b107-86b16d7841bd', '251994', 'Dear Customer, your balance is insufficient for this service. Please recharge your account. ethio telecom', '+251916417951', 1, 1, 0, '2017-03-11 09:06:06', NULL),
(66, '33bd42f9-269a-40c2-bc26-9890e1af4410', '251994', 'Dear Customer, your balance is insufficient for this service. Please recharge your account. ethio telecom', '+251916417951', 1, 1, 0, '2017-03-11 09:06:45', NULL),
(68, '030cebe1-5ff5-4c8c-8d57-6cee216e7917', '+251916071611', 'hi', '+251916417951', 1, 1, 0, '2017-03-11 09:11:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Role`
--

CREATE TABLE `Role` (
  `ID` int(11) NOT NULL,
  `RoleName` varchar(20) NOT NULL,
  `Description` text NOT NULL,
  `createdDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Role`
--

INSERT INTO `Role` (`ID`, `RoleName`, `Description`, `createdDate`) VALUES
(1, 'SuperAdmin', 'Has All privilages', '2017-03-03 14:02:03'),
(2, 'Admin', 'Has less privelage than super admin ', '2017-03-03 14:02:03'),
(3, 'Editor', 'Has less privelage than super admin ', '2017-03-03 14:02:03'),
(4, 'Viewer', 'Has less privelage than super admin ', '2017-03-03 14:02:03'),
(5, 'Nothing', 'Has less privelage than super admin ', '2017-03-03 14:02:03');

-- --------------------------------------------------------

--
-- Table structure for table `UserCompanyRole`
--

CREATE TABLE `UserCompanyRole` (
  `ID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `CompanyID` int(11) NOT NULL,
  `RoleID` int(11) NOT NULL,
  `createdDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `UserCompanyRole`
--

INSERT INTO `UserCompanyRole` (`ID`, `UserID`, `CompanyID`, `RoleID`, `createdDate`) VALUES
(1, 1, 1, 1, '2017-03-03 20:06:25'),
(3, 1, 1, 1, '2017-03-03 20:38:21'),
(9, 18, 2, 2, '2017-03-03 20:57:52'),
(10, 19, 2, 2, '2017-03-03 21:12:39'),
(11, 20, 2, 2, '2017-03-06 08:24:51');

-- --------------------------------------------------------

--
-- Table structure for table `UserDevices`
--

CREATE TABLE `UserDevices` (
  `ID` int(11) NOT NULL,
  `deviceID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `createdDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `ID` int(11) NOT NULL,
  `FullName` varchar(50) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `userPass` varchar(100) NOT NULL,
  `userEmail` varchar(50) NOT NULL,
  `createdDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`ID`, `FullName`, `userName`, `userPass`, `userEmail`, `createdDate`, `updatedDate`) VALUES
(1, '', 'Biniam', '*02E5BC5BF32682D900C55D9E3E653CC98A31A4A3', 'bengeos@gmail.com', '2017-02-22 16:53:41', '0000-00-00 00:00:00'),
(3, '', 'George', '*02E5BC5BF32682D900C55D9E3E653CC98A31A4A3', 'george@gmail.com', '2017-02-22 16:57:14', '0000-00-00 00:00:00'),
(18, 'Biniam Kassahun', 'bengeos', '*02E5BC5BF32682D900C55D9E3E653CC98A31A4A3', 'george.beng@gmail.com', '2017-03-03 20:57:52', NULL),
(19, 'George Kassahun', 'george', '*02E5BC5BF32682D900C55D9E3E653CC98A31A4A3', 'george@yahoo.com', '2017-03-03 21:12:39', NULL),
(20, 'Samson Usmael', 'Sami', '*84AAC12F54AB666ECFC2A83C676908C8BBC381B1', 'samsonusmael@gmail.com', '2017-03-06 08:24:51', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Company`
--
ALTER TABLE `Company`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `CompanyDevices`
--
ALTER TABLE `CompanyDevices`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `CompanyID_2` (`CompanyID`,`DeviceID`),
  ADD KEY `CompanyID` (`CompanyID`,`DeviceID`),
  ADD KEY `DeviceID` (`DeviceID`);

--
-- Indexes for table `CompanyUsers`
--
ALTER TABLE `CompanyUsers`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CompanyID` (`CompanyID`,`UserID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `Devices`
--
ALTER TABLE `Devices`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `deviceName` (`deviceName`);

--
-- Indexes for table `Messages`
--
ALTER TABLE `Messages`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `messageID` (`messageID`),
  ADD KEY `deviceID` (`deviceID`),
  ADD KEY `deviceID_2` (`deviceID`);

--
-- Indexes for table `Role`
--
ALTER TABLE `Role`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `UserCompanyRole`
--
ALTER TABLE `UserCompanyRole`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UserID` (`UserID`,`CompanyID`,`RoleID`),
  ADD KEY `CompanyID` (`CompanyID`),
  ADD KEY `RoleID` (`RoleID`);

--
-- Indexes for table `UserDevices`
--
ALTER TABLE `UserDevices`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `userEmail` (`userEmail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Company`
--
ALTER TABLE `Company`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `CompanyDevices`
--
ALTER TABLE `CompanyDevices`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `CompanyUsers`
--
ALTER TABLE `CompanyUsers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `Devices`
--
ALTER TABLE `Devices`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Messages`
--
ALTER TABLE `Messages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `Role`
--
ALTER TABLE `Role`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `UserCompanyRole`
--
ALTER TABLE `UserCompanyRole`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `UserDevices`
--
ALTER TABLE `UserDevices`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `CompanyDevices`
--
ALTER TABLE `CompanyDevices`
  ADD CONSTRAINT `companydevices_ibfk_1` FOREIGN KEY (`CompanyID`) REFERENCES `Company` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `companydevices_ibfk_2` FOREIGN KEY (`DeviceID`) REFERENCES `Devices` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `CompanyUsers`
--
ALTER TABLE `CompanyUsers`
  ADD CONSTRAINT `companyusers_ibfk_1` FOREIGN KEY (`CompanyID`) REFERENCES `Company` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `companyusers_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `Users` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Messages`
--
ALTER TABLE `Messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`deviceID`) REFERENCES `Devices` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `UserCompanyRole`
--
ALTER TABLE `UserCompanyRole`
  ADD CONSTRAINT `usercompanyrole_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `Users` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usercompanyrole_ibfk_2` FOREIGN KEY (`CompanyID`) REFERENCES `Company` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usercompanyrole_ibfk_3` FOREIGN KEY (`RoleID`) REFERENCES `Role` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
