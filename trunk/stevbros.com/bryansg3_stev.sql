-- phpMyAdmin SQL Dump
-- version 3.5.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 17, 2013 at 08:38 PM
-- Server version: 5.5.33-31.1
-- PHP Version: 5.3.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bryansg3_stev`
--

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE IF NOT EXISTS `config` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `lang` char(2) NOT NULL DEFAULT '',
  `slogan` varchar(100) DEFAULT NULL,
  `domain` varchar(30) DEFAULT NULL,
  `max_product` int(2) DEFAULT NULL,
  `max_news` int(2) DEFAULT NULL,
  `max_picture` int(2) DEFAULT NULL,
  `max_video` int(2) DEFAULT NULL,
  `footer` text,
  `contact` text,
  `email` varchar(100) DEFAULT NULL,
  `yahoo` varchar(100) DEFAULT NULL,
  `tel` varchar(40) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `date_create` datetime DEFAULT NULL,
  `date_update` datetime DEFAULT NULL,
  `user_create` varchar(20) DEFAULT NULL,
  `user_update` varchar(20) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`id`, `name`, `lang`, `slogan`, `domain`, `max_product`, `max_news`, `max_picture`, `max_video`, `footer`, `contact`, `email`, `yahoo`, `tel`, `facebook`, `status`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
(1, 'English', 'en', '', 'www.stevbros.com', 2, 7, 10, 10, '©2013 Stevbros Training and Consultancy, Ltd.', '<p><strong>Head office:&nbsp;<span style="color:#5A8FA8;">16th floor, SaigonTower, 29 Le Duan Boulevard, District 1, Hochiminh city, Vietnam.</span></strong><br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Singapore office:<span style="color:#5A8FA8;">&nbsp;1 Fullerton Road #02-01, One Fullerton, Singapore, 49213.</span></strong><br />\r\n&nbsp;</p>\r\n\r\n<p><span style="line-height: 1.6em;">Phone:&nbsp;+84 8 3520 7752 &nbsp; &nbsp;| &nbsp; &nbsp;</span><span style="font-size: 13px;">Hotline:&nbsp;+84 (0) 907 857746</span></p>\r\n\r\n<p><span style="line-height: 1.6em;">Fax:&nbsp;+84 8 3520 7604</span><span style="font-size: 13px;">&nbsp; &nbsp; &nbsp; &nbsp; | &nbsp; &nbsp;</span><span style="line-height: 1.6em;">Email:&nbsp;support@stevbros.com</span></p>\r\n', '', '', '', '', 1, '2013-02-20 13:35:24', '2013-03-01 23:35:09', 'admin', 'admin', 0);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_create` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `content` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` tinyint(1) DEFAULT '0',
  `user_create` varchar(20) DEFAULT NULL,
  `user_update` varchar(20) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `date_create`, `date_update`, `content`, `email`, `name`, `status`, `user_create`, `user_update`, `delete`) VALUES
(12, '2013-07-03 22:32:44', '2013-07-03 22:32:44', 'test test test', 'bryansg@icloud.com', 'Phuong 3', 0, 'khachhang', '', 0),
(10, '2013-07-03 22:22:45', '2013-07-03 22:22:45', 'test test test', 'bryansaigon@gmail.com', 'Phuong', 0, 'khachhang', '', 0),
(11, '2013-07-03 22:30:12', '2013-07-03 22:30:12', 'Test mail page contact', 'hieu@yahoo.com', 'Nhan', 0, 'khachhang', '', 0),
(8, '2013-07-03 02:35:54', '2013-07-03 02:35:54', 'Test mail', 'Hieu@yahoo.com', 'Nhan', 0, 'khachhang', '', 0),
(9, '2013-07-03 02:36:30', '2013-07-03 02:36:30', 'Test mail lan nua', 'hieu@yahoo.com', 'Nhan', 0, 'khachhang', '', 0),
(7, '2013-07-03 02:32:23', '2013-07-03 02:32:23', 'Test mail', 'hieu@yahoo.com', 'Nhan', 0, 'khachhang', '', 0),
(6, '2013-07-03 02:24:16', '2013-07-03 02:24:16', 'test test test', 'bryansaigon@gmail.com', 'Phuong', 0, 'khachhang', '', 0),
(13, '2013-07-03 22:34:26', '2013-07-03 22:34:26', 'test test', 'bryansaigon@gmail.com', 'Phuong 4', 0, 'khachhang', '', 0),
(14, '2013-07-03 22:35:11', '2013-07-03 22:35:11', 'test test ets', 'bryansaigon@gmail.com', 'Phuong 4', 0, 'khachhang', '', 0),
(15, '2013-07-03 22:35:47', '2013-07-03 22:35:47', 'test test test', 'bryansg@icloud.com', 'Phuong 5', 0, 'khachhang', '', 0),
(16, '2013-07-16 22:22:59', '2013-07-16 22:22:59', 'test test test from stevbros.com', 'bryansg@icloud.com', 'Phuong', 0, 'khachhang', '', 0),
(17, '2013-07-16 22:23:26', '2013-07-16 22:23:26', 'test test test bottom from stevbros.com', 'bryansg@icloud.com', 'Phuong', 0, 'khachhang', '', 0),
(18, '2013-08-17 03:44:04', '2013-08-17 03:44:04', 'I am PMP certified and want to recertify my PMP for which I need 60 PDU''s. I have tried to enroll at your website but seems there is some problem. Would you please let me know the proper link where I am able to enroll and pay the $ 60 fees. Thanks. Imran', 'arjimran@hotmail.com', 'Imran Ansari', 0, 'khachhang', '', 0),
(19, '2013-08-26 16:20:05', '2013-08-26 16:20:05', 'I need to know can i get  the PMP certificate with one year experince ?\n\nThanks in advance', 'dinaelkheshen@hotmail.com', 'Dina', 0, 'khachhang', '', 0),
(20, '2013-09-17 04:48:03', '2013-09-17 04:48:03', 'I am looking for 35 contact hrs PMP exam preparatory course approved and required by PMI-US for PMP certification exam. Please advise which of your offerings will meet that.', 'nskulk@gmail.com', 'Nitin Kulkarni', 0, 'khachhang', '', 0),
(21, '2013-09-18 01:52:12', '2013-09-18 01:52:12', 'We would like to partner with you. Please get in touch with me at the earliest', 'aayush.s@qaiglobal.com', 'Aayush Shrivastav', 0, 'khachhang', '', 0),
(22, '2013-09-22 21:19:36', '2013-09-22 21:19:36', 'what will be mod of training vidio lecttures/or litrature for 35 PDUs for pmp emam', 'amsyyed@gmail.com', 'Syed Afzaal Manzoor', 0, 'khachhang', '', 0),
(23, '2013-09-23 05:33:49', '2013-09-23 05:33:49', 'Am I able to do the online without having any classes? I am resident in Zimbabwe.', 'incubee@gmail.com', 'Ibson Ncube', 0, 'khachhang', '', 0),
(24, '2013-09-29 09:56:10', '2013-09-29 09:56:10', 'I am Bangladeshi, I Want to admit the on line course on Project Management Profession. could you please advice to me how i can get the information for admission or registration, local exam center and payment.', 'fjannat@yahoo.com', 'Fatematul Jannat', 0, 'khachhang', '', 0),
(25, '2013-09-30 05:39:49', '2013-09-30 05:39:49', 'I need more information and assistance on the 60 PDUs program for $60.', 'beautyverma81@gmail.com', 'Beauty Verma', 0, 'khachhang', '', 0),
(26, '2013-09-30 05:41:25', '2013-09-30 05:41:25', 'Need more information on the 60 PDUs program.', 'beautyverma81@gmail.com', 'Beauty Verma', 0, 'khachhang', '', 0),
(27, '2013-10-09 15:37:10', '2013-10-09 15:37:10', 'kindly I request for sponsorship to study project Management in your Institution in USA', 'danielbaguma752@gmail.com', 'Daniel Baguma', 0, 'khachhang', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE IF NOT EXISTS `countries` (
  `ccode` varchar(2) NOT NULL DEFAULT '',
  `country` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`ccode`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`ccode`, `country`) VALUES
('AF', 'Afghanistan'),
('AX', 'Åland Islands'),
('AL', 'Albania'),
('DZ', 'Algeria'),
('AS', 'American Samoa'),
('AD', 'Andorra'),
('AO', 'Angola'),
('AI', 'Anguilla'),
('AQ', 'Antarctica'),
('AG', 'Antigua and Barbuda'),
('AR', 'Argentina'),
('AM', 'Armenia'),
('AW', 'Aruba'),
('AU', 'Australia'),
('AT', 'Austria'),
('AZ', 'Azerbaijan'),
('BS', 'Bahamas'),
('BH', 'Bahrain'),
('BD', 'Bangladesh'),
('BB', 'Barbados'),
('BY', 'Belarus'),
('BE', 'Belgium'),
('BZ', 'Belize'),
('BJ', 'Benin'),
('BM', 'Bermuda'),
('BT', 'Bhutan'),
('BO', 'Bolivia'),
('BA', 'Bosnia and Herzegovina'),
('BW', 'Botswana'),
('BV', 'Bouvet Island'),
('BR', 'Brazil'),
('IO', 'British Indian Ocean Territory'),
('BN', 'Brunei Darussalam'),
('BG', 'Bulgaria'),
('BF', 'Burkina Faso'),
('BI', 'Burundi'),
('KH', 'Cambodia'),
('CM', 'Cameroon'),
('CA', 'Canada'),
('CV', 'Cape Verde'),
('KY', 'Cayman Islands'),
('CF', 'Central African Republic'),
('TD', 'Chad'),
('CL', 'Chile'),
('CN', 'China'),
('CX', 'Christmas Island'),
('CC', 'Cocos (Keeling) Islands'),
('CO', 'Colombia'),
('KM', 'Comoros'),
('CG', 'Congo'),
('CD', 'Congo, The Democratic Republic of the'),
('CK', 'Cook Islands'),
('CR', 'Costa Rica'),
('CI', 'Côte D''Ivoire'),
('HR', 'Croatia'),
('CU', 'Cuba'),
('CY', 'Cyprus'),
('CZ', 'Czech Republic'),
('DK', 'Denmark'),
('DJ', 'Djibouti'),
('DM', 'Dominica'),
('DO', 'Dominican Republic'),
('EC', 'Ecuador'),
('EG', 'Egypt'),
('SV', 'El Salvador'),
('GQ', 'Equatorial Guinea'),
('ER', 'Eritrea'),
('EE', 'Estonia'),
('ET', 'Ethiopia'),
('FK', 'Falkland Islands (Malvinas)'),
('FO', 'Faroe Islands'),
('FJ', 'Fiji'),
('FI', 'Finland'),
('FR', 'France'),
('GF', 'French Guiana'),
('PF', 'French Polynesia'),
('TF', 'French Southern Territories'),
('GA', 'Gabon'),
('GM', 'Gambia'),
('GE', 'Georgia'),
('DE', 'Germany'),
('GH', 'Ghana'),
('GI', 'Gibraltar'),
('GR', 'Greece'),
('GL', 'Greenland'),
('GD', 'Grenada'),
('GP', 'Guadeloupe'),
('GU', 'Guam'),
('GT', 'Guatemala'),
('GG', 'Guernsey'),
('GN', 'Guinea'),
('GW', 'Guinea-Bissau'),
('GY', 'Guyana'),
('HT', 'Haiti'),
('HM', 'Heard Island and McDonald Islands'),
('VA', 'Holy See (Vatican City State)'),
('HN', 'Honduras'),
('HK', 'Hong Kong'),
('HU', 'Hungary'),
('IS', 'Iceland'),
('IN', 'India'),
('ID', 'Indonesia'),
('IR', 'Iran, Islamic Republic of'),
('IQ', 'Iraq'),
('IE', 'Ireland'),
('IM', 'Isle of Man'),
('IL', 'Israel'),
('IT', 'Italy'),
('JM', 'Jamaica'),
('JP', 'Japan'),
('JE', 'Jersey'),
('JO', 'Jordan'),
('KZ', 'Kazakhstan'),
('KE', 'Kenya'),
('KI', 'Kiribati'),
('KP', 'Korea, Democratic People''s Republic of'),
('KR', 'Korea, Republic of'),
('KW', 'Kuwait'),
('KG', 'Kyrgyzstan'),
('LA', 'Lao People''s Democratic Republic'),
('LV', 'Latvia'),
('LB', 'Lebanon'),
('LS', 'Lesotho'),
('LR', 'Liberia'),
('LY', 'Libyan Arab Jamahiriya'),
('LI', 'Liechtenstein'),
('LT', 'Lithuania'),
('LU', 'Luxembourg'),
('MO', 'Macao'),
('MK', 'Macedonia, The Former Yugoslav Republic of'),
('MG', 'Madagascar'),
('MW', 'Malawi'),
('MY', 'Malaysia'),
('MV', 'Maldives'),
('ML', 'Mali'),
('MT', 'Malta'),
('MH', 'Marshall Islands'),
('MQ', 'Martinique'),
('MR', 'Mauritania'),
('MU', 'Mauritius'),
('YT', 'Mayotte'),
('MX', 'Mexico'),
('FM', 'Micronesia, Federated States of'),
('MD', 'Moldova, Republic of'),
('MC', 'Monaco'),
('MN', 'Mongolia'),
('ME', 'Montenegro'),
('MS', 'Montserrat'),
('MA', 'Morocco'),
('MZ', 'Mozambique'),
('MM', 'Myanmar'),
('NA', 'Namibia'),
('NR', 'Nauru'),
('NP', 'Nepal'),
('NL', 'Netherlands'),
('AN', 'Netherlands Antilles'),
('NC', 'New Caledonia'),
('NZ', 'New Zealand'),
('NI', 'Nicaragua'),
('NE', 'Niger'),
('NG', 'Nigeria'),
('NU', 'Niue'),
('NF', 'Norfolk Island'),
('MP', 'Northern Mariana Islands'),
('NO', 'Norway'),
('OM', 'Oman'),
('PK', 'Pakistan'),
('PW', 'Palau'),
('PS', 'Palestinian Territory, Occupied'),
('PA', 'Panama'),
('PG', 'Papua New Guinea'),
('PY', 'Paraguay'),
('PE', 'Peru'),
('PH', 'Philippines'),
('PN', 'Pitcairn'),
('PL', 'Poland'),
('PT', 'Portugal'),
('PR', 'Puerto Rico'),
('QA', 'Qatar'),
('RE', 'Reunion'),
('RO', 'Romania'),
('RU', 'Russian Federation'),
('RW', 'Rwanda'),
('BL', 'Saint Barthélemy'),
('SH', 'Saint Helena'),
('KN', 'Saint Kitts and Nevis'),
('LC', 'Saint Lucia'),
('MF', 'Saint Martin'),
('PM', 'Saint Pierre and Miquelon'),
('VC', 'Saint Vincent and the Grenadines'),
('WS', 'Samoa'),
('SM', 'San Marino'),
('ST', 'Sao Tome and Principe'),
('SA', 'Saudi Arabia'),
('SN', 'Senegal'),
('RS', 'Serbia'),
('SC', 'Seychelles'),
('SL', 'Sierra Leone'),
('SG', 'Singapore'),
('SK', 'Slovakia'),
('SI', 'Slovenia'),
('SB', 'Solomon Islands'),
('SO', 'Somalia'),
('ZA', 'South Africa'),
('GS', 'South Georgia and the South Sandwich Islands'),
('ES', 'Spain'),
('LK', 'Sri Lanka'),
('SD', 'Sudan'),
('SR', 'Suriname'),
('SJ', 'Svalbard and Jan Mayen'),
('SZ', 'Swaziland'),
('SE', 'Sweden'),
('CH', 'Switzerland'),
('SY', 'Syrian Arab Republic'),
('TW', 'Taiwan, Province Of China'),
('TJ', 'Tajikistan'),
('TZ', 'Tanzania, United Republic of'),
('TH', 'Thailand'),
('TL', 'Timor-Leste'),
('TG', 'Togo'),
('TK', 'Tokelau'),
('TO', 'Tonga'),
('TT', 'Trinidad and Tobago'),
('TN', 'Tunisia'),
('TR', 'Turkey'),
('TM', 'Turkmenistan'),
('TC', 'Turks and Caicos Islands'),
('TV', 'Tuvalu'),
('UG', 'Uganda'),
('UA', 'Ukraine'),
('AE', 'United Arab Emirates'),
('GB', 'United Kingdom'),
('US', 'United States'),
('UM', 'United States Minor Outlying Islands'),
('UY', 'Uruguay'),
('UZ', 'Uzbekistan'),
('VU', 'Vanuatu'),
('VE', 'Venezuela'),
('VN', 'Viet Nam'),
('VG', 'Virgin Islands, British'),
('VI', 'Virgin Islands, U.S.'),
('WF', 'Wallis And Futuna'),
('EH', 'Western Sahara'),
('YE', 'Yemen'),
('ZM', 'Zambia'),
('ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE IF NOT EXISTS `info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `name_rewrite` varchar(250) NOT NULL,
  `url_hinh` varchar(150) DEFAULT NULL,
  `description` text,
  `content` text,
  `date_create` datetime NOT NULL,
  `date_update` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `metaKeyword` varchar(250) DEFAULT NULL,
  `other` tinyint(1) DEFAULT '0',
  `lang` varchar(3) DEFAULT NULL,
  `menu_id` varchar(20) DEFAULT NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_rewrite` (`name_rewrite`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `name`, `name_rewrite`, `url_hinh`, `description`, `content`, `date_create`, `date_update`, `status`, `metaKeyword`, `other`, `lang`, `menu_id`, `user_create`, `user_update`, `delete`) VALUES
(1, 'Effective Business Analysis Skills Course', 'effective-business-analysis-skills-course', 'effective-business-analysis-skills.jpg', 'Duration: 3 days. Who should attend: Professionals interested in gaining basic knowledge of Business Analysis.', '<p><span style="color:#B22222;"><strong>Duration: 3 days</strong></span></p>\r\n\r\n<p><strong>Who should attend:</strong> Professionals interested in gaining basic knowledge of Business Analysis.</p>\r\n\r\n<p style="text-align: center;"><img alt="Effective business analysis skills" src="/public/images/articles/effective-business-analysis-skills.jpg" style="width: 500px; height: 341px;" title="Effective business analysis skills" /></p>\r\n\r\n<h3><strong>Purpose of the course:</strong></h3>\r\n\r\n<ul>\r\n	<li>Provides participants with a great opportunity for learning the fundamentals of Business Analysis. Starting with an overview of Business Analysis, participants will learn about the key responsibilities of a business analyst, the various project roles they will interact with and artifacts produced.</li>\r\n	<li>This course will also introduce the participants to Business Analysis Book of Knowledge® (BABOK®) to help them navigate themselves for any guidance later. Participants will learn and apply various business analysis techniques through hands-on exercises and solving real problems.</li>\r\n</ul>\r\n\r\n<h3><strong>After the course, you will:</strong></h3>\r\n\r\n<ul>\r\n	<li>Understand what it takes to become a good Business Analyst.</li>\r\n	<li>Learn &amp; Apply effective Business Analysis techniques.</li>\r\n	<li>Earn 21 hours of Professional Development to apply for CCBA® or CBAP® Exam of International Institute of Business Analysis (IIBA)</li>\r\n</ul>\r\n\r\n<h3><strong>Content:</strong></h3>\r\n\r\n<ul>\r\n	<li>Business Analysis Concepts</li>\r\n	<li>Business Analysis Planning &amp; Monitoring</li>\r\n	<li>Elicitation</li>\r\n	<li>Requirement Management &amp; Communication</li>\r\n	<li>Enterprise Analysis</li>\r\n	<li>Requirement Analysis</li>\r\n	<li>Solution Assessment &amp; Validation</li>\r\n	<li>Underlying Competencies</li>\r\n	<li>Techniques</li>\r\n</ul>\r\n\r\n<h3><strong>Information of CCBA® certificate and CBAP® certificate:</strong></h3>\r\n\r\n<ul>\r\n	<li>To earn the CCBA® certification, a business analyst will need to be knowledgeable in all six knowledge areas of A Guide to the&nbsp;Business Analysis Body of Knowledge® (BABOK®&nbsp;Guide) knowledge areas, with proficiency in at least two. Applicants must meet the following criteria:</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li style="margin-left: 40px;">Minimum 3750 hours of business analysis work experience aligned with the BABOK® Guide in the last seven years</li>\r\n	<li style="margin-left: 40px;">Minimum 900 hours in two of the six knowledge areas or 500 hours in four of the six knowledge areas</li>\r\n	<li style="margin-left: 40px;">Minimum 21 hours of Professional Development in the past four years</li>\r\n	<li style="margin-left: 40px;">Minimum high school education or equivalent</li>\r\n	<li style="margin-left: 40px;">Two references from a career manager, client or Certified Business Analysis Professional&nbsp;(CBAP®)&nbsp;recipient</li>\r\n	<li style="margin-left: 40px;">Signed Code of Conduct</li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>To earn the CBAP® certification, applicants must meet the following criteria:</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li style="margin-left: 40px;">Minimum 7500 hours of BA work experience aligned with A Guide to the Business Analysis Book of Knowledge® (BABOK® Guide) in the last 10 years</li>\r\n	<li style="margin-left: 40px;">Minimum 900 hours in four of the six knowledge areas</li>\r\n	<li style="margin-left: 40px;">Minimum 21 hours of Professional Development in the past four years</li>\r\n	<li style="margin-left: 40px;">Two references from a career manager, client or Certified Business Analysis Professional (CBAP®) recipient</li>\r\n	<li style="margin-left: 40px;">Signed Code of Conduct</li>\r\n</ol>\r\n\r\n<p style="margin-left: 40px; text-align: center; "><em style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 22px; text-align: center; ">Access blog of project management training&nbsp;<a href="http://www.stevbros.com/project-management-training/" style="margin: 0px; padding: 0px; color: rgb(51, 141, 183); text-decoration: none; ">here</a>!</em></p>\r\n', '2013-03-06 00:00:00', '2013-03-05 11:24:52', 1, 'Effective Business Analysis Skills Course', 0, 'vi', ',4,', 'admin', 'phuong', 0),
(2, 'Study in Singapore - USA', 'study-in-singapore-usa', 'study-in-singapore-usa.jpg', 'Our goal at Stevbros is to provide effective solutions designed to help our clients choose right field of study, right school, shorten their study, shorten their stay and save their budget while at the same time keeping high satisfaction in study quality, 100% guarantee for internationally recognized degree and big success.', '<h2>Our goal at Stevbros is to provide effective solutions designed to help our clients choose right field of study, right school, shorten their study, shorten their stay and save their budget while at the same time keeping high satisfaction in study quality, 100% guarantee for internationally recognized degree and big success.</h2>\r\n\r\n<p>Stevbros also provides effective solutions to obtain USA study visa for sure.</p>\r\n\r\n<p style="text-align: center; "><img alt="" src="/public/images/articles/study-in-singapore-best-solution.jpg" style="width: 500px; height: 514px; " /></p>\r\n\r\n<p style="text-align: center; "><em>Study abroad solutions of Stevbros</em></p>\r\n\r\n<div class="title_home" style="background:url(images/icon_4.gif) no-repeat top left">\r\n<h3>STUDY IN SINGAPORE</h3>\r\n</div>\r\n\r\n<p style="font-size: 13px; text-align: justify; margin-left: 45px;"><span style="line-height: 1.6em;">Our consultants </span>with many years of working and studying experience in Singapore and USA design solutions tailored specifically to the needs of client’s budget and requirements in order to ensure they achieve their dreams of success.</p>\r\n\r\n<p style="font-size: 13px; text-align: justify; margin-left: 45px;">Students are confident with their English fluency and proficiency even though at first their English did not qualify for admission.</p>\r\n\r\n<p style="font-size: 13px; text-align: justify; margin-left: 45px;">Students have been receiving quick supports for all problems during their study.</p>\r\n\r\n<h2 style="text-align: center; "><img alt="Study in Singapore - USA" src="/public/images/articles/study-in-singapore-usa.jpg" style="opacity: 0.9; font-size: 13px; line-height: 1.6em; width: 600px; height: 438px; " /></h2>\r\n\r\n<p style="text-align: center; "><em>Education roadmap in Singapore</em></p>\r\n\r\n<div class="title_home" style="background:url(images/icon_4.gif) no-repeat top left">\r\n<h3>STUDY IN USA</h3>\r\n</div>\r\n\r\n<p style="font-size: 13px; margin-left: 45px;">Our consultants with many years of working and studying experience in USA help students have effective solutions to study in USA and obtain student Visa for sure.</p>\r\n', '2013-03-04 08:21:23', '2013-03-04 08:11:16', 1, 'Study in Singapore - USA', 0, 'vi', ',9,', 'admin', 'phuong', 0),
(3, 'Agile Project Management & PMI-ACP® Exam Prep Course', 'agile-project-management-pmi-acp-exam-prep-course', 'agile-project-management.jpg', 'Duration: 3 days. Who should attend: Project Managers, Team Leads, Scrum Masters, Program Managers, Product Owners, PMO Staff, Technical Leads, QA Leads, BA Leads.', '<p><span style="color:#B22222;"><strong>Duration: 3 days</strong></span></p>\r\n\r\n<h2>Who should attend: Project Managers, Team Leads, Scrum Masters, Program Managers, Product Owners, PMO Staff, Technical Leads, QA Leads, BA Leads.</h2>\r\n\r\n<p style="text-align: center;"><img alt="Agile Project Management &amp; PMI-ACP® Exam Prep Course" src="/public/images/articles/agile-project-management.jpg" style="width: 500px; height: 231px;" title="Agile Project Management &amp; PMI-ACP® Exam Prep Course" /></p>\r\n\r\n<h3><strong>After the course, you will:</strong></h3>\r\n\r\n<ul>\r\n	<li>In depth coverage about the six PMI-ACP Domains.</li>\r\n	<li>Get details of the unique “PMI-isms” regarding agile terms.</li>\r\n	<li>Gain all the Agile, Lean, and Kanban knowledge. Experience Agile practices from XP and Scrum, Lean and Kanban.</li>\r\n	<li>Get details of soft skills leadership, emotional intelligence and agile coaching.</li>\r\n	<li>Get insider tips on question formats, terminology, scores and example questions of PMI-ACP Exam.</li>\r\n</ul>\r\n\r\n<h3><strong>Content:</strong></h3>\r\n\r\n<ul>\r\n	<li>Agile Foundation</li>\r\n	<li>Value Driven Delivery</li>\r\n	<li>Stakeholder Engagement</li>\r\n	<li>Boosting Team Performance</li>\r\n	<li>Adaptive Planning</li>\r\n	<li>Problem Detection and Resolution</li>\r\n	<li>Contiguous Improvement</li>\r\n	<li>PMI-ACP Mock Test</li>\r\n</ul>\r\n\r\n<h3><strong>Information of PMI-ACP certificate:</strong></h3>\r\n\r\n<p>To apply for the PMI-ACP, you need to have:</p>\r\n\r\n<ul>\r\n	<li>General project experience: 2000 hours working on project team within the last 5 years (active PMP® and PgMP® will satisfy this requirement)</li>\r\n	<li>Agile project experience: 1500 hours working on agile project teams or with agile methodologies within the last 3 years. These hours are in addition to the 2000 hours required in general project experience.</li>\r\n	<li>21 contact hours of training in agile practices.</li>\r\n</ul>\r\n\r\n<p style="text-align: center; "><em style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 22px; text-align: center; ">Access blog of project management training&nbsp;<a href="http://www.stevbros.com/project-management-training/" style="margin: 0px; padding: 0px; color: rgb(51, 141, 183); text-decoration: none; ">here</a>!</em></p>\r\n', '2013-03-06 00:00:00', '2013-03-04 06:50:38', 1, 'Agile Project Management & PMI-ACP® Exam Prep Course', 0, 'vi', ',4,', 'admin', 'phuong', 0),
(4, 'Effective Project Management Skills Course', 'effective-project-management-skills-course', 'effective-project-management-skills.jpg', 'Duration: 3 days. Who should attend: project managers, project coordinators, project assistants or subject matter experts on project teams.', '<p><span style="color:#B22222;"><strong>Duration: 3&nbsp;days</strong></span></p>\r\n\r\n<h2>Who should attend: project managers, project coordinators, project assistants or subject matter experts on project teams.</h2>\r\n\r\n<p style="text-align: center;"><img alt="Effective project management skills" src="/public/images/articles/effective-project-management-skills.jpg" style="width: 500px; height: 341px;" title="Effective project management skills" /></p>\r\n\r\n<p><strong>After the course, you will:</strong></p>\r\n\r\n<ul>\r\n	<li>Know the main principles of project initiating, planning, executing, controlling and closing.</li>\r\n	<li>Be able to handle the potential impact of risks.</li>\r\n	<li>Be familiar with, and able to use, Earned Value Management on a basic level.</li>\r\n	<li>Know the conflict-handling techniques and motivation theories and be able to apply them into your projects.</li>\r\n	<li>Complete essential documents in initiating phase and planning phase on case project.</li>\r\n	<li>Have enough background to prepare for PMP® examination preparation</li>\r\n</ul>\r\n\r\n<p style="text-align: center; "><img alt="Effective Project Management Skills " src="/public/images/articles/pmp-exam-prep-pmbok5.jpg" style="width: 600px; height: 141px; " /></p>\r\n\r\n<p><strong>Content:</strong></p>\r\n\r\n<ul>\r\n	<li><em><strong>Section 1: Project management framework</strong></em></li>\r\n</ul>\r\n\r\n<ol>\r\n	<li style="margin-left: 40px;">Global surveys and the most critical project success factors</li>\r\n	<li style="margin-left: 40px;">Relation among Project, Program, Portfolio, and Project Management Office (PMO)</li>\r\n	<li style="margin-left: 40px;">Elements for managing projects </li>\r\n	<li style="margin-left: 40px;">Project Life Cycle, Project Phase, Process </li>\r\n	<li style="margin-left: 40px;">Organizational Influences on Project Management</li>\r\n</ol>\r\n\r\n<ul>\r\n	<li><strong><em>Section 2: Project Initiating Process Group</em></strong>\r\n\r\n	<ol>\r\n		<li>Develop project charter</li>\r\n		<li>Identify stakeholder</li>\r\n	</ol>\r\n	</li>\r\n	<li><em><strong>Section 3: Planning Process Group</strong></em>\r\n	<ol>\r\n		<li>Develop Project Management Plan</li>\r\n		<li>Create Scope baseline</li>\r\n		<li>Create schedule baseline</li>\r\n		<li>Create cost baseline</li>\r\n		<li>Identify Risks, Perform Qualitative Risk Analysis, Perform Quantitative Risk Analysis, Plan Risk Responses</li>\r\n		<li>Plan Quality Management, Plan Human Resource Management, Plan Communications Management, Plan Procurement Management, Plan Stakeholder Management, Plan Risk Management.</li>\r\n	</ol>\r\n	</li>\r\n	<li><em><strong>Section 4: Executing Process Group.</strong></em>\r\n	<ol>\r\n		<li>Acquire Project Team, Develop Project Team, Manage Project Team</li>\r\n		<li>Direct and Manage Project Execution, Manage Communications, Manage Stakeholder Engagement, Perform Quality Assurance, Conduct Procurements.</li>\r\n	</ol>\r\n	</li>\r\n	<li><em><strong>Section 5: Monitoring/Controlling Process Group</strong></em>\r\n	<ol>\r\n		<li>Monitor and Control Project Work, Perform Integrated Change Control</li>\r\n		<li>Control Quality, Validate Scope, Control Scope, Control Schedule, Control Costs</li>\r\n		<li>Report project progress by EVM</li>\r\n		<li>Control Communications, Control Risks, Control Procurements, Control Stakeholder Engagement</li>\r\n	</ol>\r\n	</li>\r\n	<li><em><strong>Section 6: Closing Process Group</strong></em>\r\n	<ul>\r\n		<li>Close Procurements, Close Project or Phase.</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<p style="text-align: center; "><em style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 22px; text-align: center; ">Access blog of project management training&nbsp;<a href="http://www.stevbros.com/project-management-training/" style="margin: 0px; padding: 0px; color: rgb(51, 141, 183); text-decoration: none; ">here</a>!</em></p>\r\n', '2013-03-06 00:00:00', '2013-03-30 05:49:53', 1, 'Effective Project Management Skills Course', 0, 'vi', ',4,16,', 'admin', 'phuong', 0),
(5, 'PMBOK & PMP® Exam Prep Course', 'pmbok-pmp-exam-prep-course', 'advanced-project-management-skills.jpg', 'Duration: 5 days. Who should attend: Project Managers, Team Leads, Program Managers, PMO Staff, Technical Leads, QA Leads, QC Leads, BA Leads.', '<p><span style="color:#B22222;"><strong>Duration: 5 days</strong></span></p>\r\n\r\n<h2>Who should attend: Project Managers, Team Leads, Program Managers, PMO Staff, Technical Leads, QA Leads, QC Leads, BA Leads.</h2>\r\n\r\n<p style="text-align: center;"><img alt="Advanced Project Management Skills &amp; PMP® Exam Prep" src="/public/images/articles/advanced-project-management-skills.jpg" style="width: 500px; height: 300px;" title="Advanced Project Management Skills &amp; PMP® Exam Prep" /></p>\r\n\r\n<p><strong>After the course, you will</strong>:</p>\r\n\r\n<ul>\r\n	<li>Understand 47 project management processes of 5 process groups and 10 knowledge areas, understand how to apply 65 project management templates in your projects.</li>\r\n	<li>Understand project management knowledge according to project management standard of PMBOK® 5th edition of Project Management Institute.</li>\r\n	<li>Understand professional and social responsibilities of a project manager.</li>\r\n	<li>Understand project management terminologies and heuristics</li>\r\n	<li>Complete project management documents for a case project with feedback from trainer to help  you apply what you learn into your projects.</li>\r\n	<li>Consolidate your project management knowledge, skills and experience to prepare for PMP®  examination.</li>\r\n</ul>\r\n\r\n<p style="text-align: center; "><img alt="PMBOK PMP Exam Workshop effectively" src="/public/images/articles/pmp-exam-prep-pmbok5.jpg" style="width: 600px; height: 141px; " /></p>\r\n\r\n<p><strong>Content:</strong></p>\r\n\r\n<p style="margin-left: 40px;">Chapter 1: Project management framework</p>\r\n\r\n<p style="margin-left: 40px;">Chapter 2: Project management process groups</p>\r\n\r\n<p style="margin-left: 40px;">Chapter 3: Project integration management</p>\r\n\r\n<p style="margin-left: 40px;">Chapter 4: Project scope management</p>\r\n\r\n<p style="margin-left: 40px;">Chapter 5: Project time management</p>\r\n\r\n<p style="margin-left: 40px;">Chapter 6: Project cost management</p>\r\n\r\n<p style="margin-left: 40px;">Chapter 7: Project quality management</p>\r\n\r\n<p style="margin-left: 40px;">Chapter 8: Project human resource management</p>\r\n\r\n<p style="margin-left: 40px;">Chapter 9: Project communication management</p>\r\n\r\n<p style="margin-left: 40px;">Chapter 10: Project risk management</p>\r\n\r\n<p style="margin-left: 40px;">Chapter 11: Project procurement management</p>\r\n\r\n<p style="margin-left: 40px;">Chapter 12: Project stakeholder management</p>\r\n\r\n<p style="margin-left: 40px;">Chapter 13: Code of ethics, professional and social responsibilities&nbsp;<span style="line-height: 1.6em;">Mock tests.</span></p>\r\n\r\n<p style="margin-left: 40px; text-align: center; "><span style="line-height: 1.6em;"><img alt="PMBOK PMP Exam Workshop effectively" src="/public/images/articles/effective-pmp-exam-workshop.jpg" style="width: 600px; height: 150px; " /></span></p>\r\n\r\n<p><strong>Information of PMP® certificate:</strong></p>\r\n\r\n<p>To apply for the PMP®, you need to have either:</p>\r\n\r\n<ul>\r\n	<li>A secondary degree (high school diploma, associate’s degree, or the global equivalent) with at least five years of project management experience, with 7,500 hours leading and directing projects and 35 hours of project management education. OR</li>\r\n	<li>A four-year degree (bachelor’s degree or the global equivalent) and at least three years of project management experience, with 4,500 hours leading and directing projects and 35 hours of project management education.</li>\r\n</ul>\r\n\r\n<p style="text-align: center; "><em style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 22px; text-align: center; ">Access blog of project management training&nbsp;<a href="http://www.stevbros.com/project-management-training/" style="margin: 0px; padding: 0px; color: rgb(51, 141, 183); text-decoration: none; ">here</a>!</em></p>\r\n', '2013-03-06 00:00:00', '2013-03-06 05:48:31', 1, 'PMBOK & PMP® Exam Prep Course', 0, 'vi', ',4,16,', 'admin', 'phuong', 0),
(6, 'Accelerated PMP® Exam Prep  Course', 'accelerated-pmp-exam-prep-course', 'accelerated-pmp®-exam-prep-course.jpg', 'Duration: 2 days. Who should attend: For anyone planning to take PMP exam. This directed study course is designed to prepare you for the PMP exam in effective manner with a minimum amount of studying after class!', '<p><span style="color:#B22222;"><strong>Duration: 2 days</strong></span></p>\r\n\r\n<h2>Who should attend: For anyone planning to take PMP exam. This directed study course is designed to prepare you for the PMP exam in effective manner with a minimum amount of studying!</h2>\r\n\r\n<p style="text-align: center;"><img alt="Accelerated PMP Exam Workshop effectively" src="/public/images/articles/accelerated-pmp%C2%AE-exam-prep-course(2).jpg" style="width: 600px; height: 204px; " /></p>\r\n\r\n<p><strong>After the course, you will</strong>:</p>\r\n\r\n<ul>\r\n	<li>Identify gaps in your knowledge that may hurt you on the exam</li>\r\n	<li>Be more comfortable with the types of questions you will see on the exam</li>\r\n	<li>Utilize your personalized test taking strategy</li>\r\n	<li>Apply project management techniques useful in the real world</li>\r\n	<li>Be a better project manager</li>\r\n	<li>Earn certificate of 35 PDUs</li>\r\n</ul>\r\n\r\n<p style="text-align: center; "><img alt="Accelerated PMP Exam Workshop effectively" src="/public/images/articles/pmp-exam-prep-pmbok5.jpg" style="width: 600px; height: 141px; " /></p>\r\n\r\n<p><strong>Content: </strong>this is blended training course including</p>\r\n\r\n<ul>\r\n	<li>Pre classroom training: PMP<span style="margin: 0px; padding: 0px; ">® and PMBOK in a nutshell (</span>11-hour online section)</li>\r\n	<li>Classroom training: Accelerated PMP<span style="margin: 0px; padding: 0px; ">® Exam Prep (</span>2-day section)</li>\r\n	<li>After classroom training: Practise mock tests (16-house online section)</li>\r\n</ul>\r\n\r\n<p style="text-align: center; "><img alt="Accelerated PMP Exam Workshop effectively" src="/public/images/articles/effective-pmp-exam-workshop.jpg" style="width: 600px; height: 150px; " /></p>\r\n\r\n<p><strong>Information of PMP® certificate:</strong></p>\r\n\r\n<p>To apply for the PMP®, you need to have either:</p>\r\n\r\n<ul>\r\n	<li>A secondary degree (high school diploma, associate’s degree, or the global equivalent) with at least five years of project management experience, with 7,500 hours leading and directing projects and 35 hours of project management education. OR</li>\r\n	<li>A four-year degree (bachelor’s degree or the global equivalent) and at least three years of project management experience, with 4,500 hours leading and directing projects and 35 hours of project management education.</li>\r\n</ul>\r\n\r\n<p style="text-align: center; "><em style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 22px; text-align: center; ">Access blog of project management training&nbsp;<a href="http://www.stevbros.com/project-management-training/" style="margin: 0px; padding: 0px; color: rgb(51, 141, 183); text-decoration: none; ">here</a>!</em></p>\r\n', '2013-03-06 00:00:00', '2013-03-07 05:46:58', 1, 'Accelerated PMP® Exam Prep  Course', 0, 'vi', ',4,16,', 'admin', 'phuong', 0),
(7, 'Project Management Competency Assessment', 'project-management-competency-assessment', 'danh-gia-nang-luc.jpg', 'Stevbros provides a project management competency assessment framework for determining, measuring, and supporting the improvement of an individuals’ performance through a quiz and a survey to evaluate project management competencies.', '<h2>Stevbros provides a project management competency assessment framework for determining, measuring, and supporting the improvement of an individuals’ performance in projects. The assessment result is also used to discover where additional training is needed, and develop training roadmaps for individuals.</h2>\r\n\r\n<p style="text-align: center; "><img alt="" src="/public/images/articles/danh-gia-nang-luc.jpg" style="width: 500px; height: 449px; " /></p>\r\n\r\n<p style="text-align: center; "><em>10 project management knowledge areas</em></p>\r\n\r\n<p>Project management assessment framework evaluates project management knowledge, skills and experience on 47 processes catergorised into 10 knowledge areas (projects scope management, project time management, project cost management, project quality management, project communications management, project risk management, project human resource management, project procurement management, project stakeholder management, project integration management) and 5 process groups (initiating process groups, planning process group, executing process group, monitoring and controling process group, closing process group).</p>\r\n\r\n<p style="text-align: center; "><img alt="" src="/public/images/articles/danhgianangluc2.jpg" style="width: 500px; height: 366px; " /></p>\r\n\r\n<p style="text-align: center; "><em>5 project management process groups</em></p>\r\n\r\n<p>In addition, project management competence assessment also use the result of&nbsp;surveys evaluated by themselves, their manager, their peer, their team members or their customers.</p>\r\n', '2013-03-06 00:00:00', '2013-07-01 07:04:21', 1, 'Project Management Competency Assessment', 0, 'vi', ',5,', 'admin', 'phuong', 0),
(25, 'The easiest way to earn 60 PDUs for PMP® renewal with lowest price ', 'the-easiest-way-to-earn-60-pdus-for-pmp-renewal-with-lowest-price', 'easiest-way-to-earn-pdu-pmp-pmi.jpg', 'to keep your PMP® in good standing, you must earn 60 PDUs every 3-year cycle, claim your 60 PDUs into PMI’s CCRS (stand for Project Management Institute’s Continuing  Certification Requirements System), and then PMI will give approval to extend you PMP® cycle 3 more years', '<h2>PDU stands for Professional Development Unit and it is very important for PMI credential holders such as PMP®, PgMP®, PMI-SP®, PMI-RMP®, PMI-ACP. For PMP® s (stand for Project Management Professionals), to keep your PMP® in good standing, you must earn 60 PDUs every 3-year cycle, claim your 60 PDUs into PMI’s CCRS (stand for Project Management Institute’s Continuing&nbsp; Certification Requirements System), and then PMI will give approval to extend you PMP® cycle 3 more years.</h2>\r\n\r\n<p style="text-align: center; "><a href="http://www.stevbros.com/payment/60-pdus-renew-pmp-certificate-after-every-3-years-lowest-price.html"><img alt="the easiest way to earn 60 PDU to extend, renew PMP certificate with lowest price" src="/public/images/articles/easiest-way-to-earn-pdu-pmp-pmi.jpg" style="width: 400px; height: 284px; " /></a></p>\r\n\r\n<p>You can find many ways to earn PDUs after googling few seconds. However, the easiest way to earn 60 PDUs with lowest price is clicking the following link and attending the course of 60 PDUs with $60.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align: center; "><a href="http://www.stevbros.com/payment/60-pdus-renew-pmp-certificate-after-every-3-years-lowest-price.html"><em>60 PDUs Renew PMP® Certificate. Course ID: iRPC. Price: $60</em></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>This 60 PDUs course is designed by Stevbros – Registered Education Provider ID 3807 of Project Management Institute. You will study 100% online at anytime and from anywhere in the world.&nbsp; Your account will active within 3 months however you can finish the course and earn 60 PDUs as soon as you want. Some PMP® s finished this course only 3 days due to their urgent need to keep their certificates in good standing.</p>\r\n\r\n<p>60 PDUs of this course is classified as Category A, and the detailed guideline to claim 60 PDUs into PMI’s CCRS is well-prepared to help you complete PMP® renewal process in the quickest and easiest way.</p>\r\n\r\n<p style="text-align: center; "><a href="http://www.stevbros.com/payment/60-pdus-renew-pmp-certificate-after-every-3-years-lowest-price.html"><img alt="the easiest way to earn 60 PDU to extend, renew PMP certificate with lowest price" src="/public/images/articles/60-pdu-renew-pmp.jpg" style="width: 400px; height: 424px; " /></a></p>\r\n\r\n<div id="view_post" style="margin: 0px; padding: 0px; clear: both; line-height: 22px; list-style: none; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13px; ">\r\n<p style="font-size: 13px; ">Beside the course of 60 PDUs, Stevbros also provides online course for PMP<span style="color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 22px; text-align: justify; ">® Exam Prep 35 PDUs and PMP® Mock Test:</span></p>\r\n\r\n<p style="margin: 10px 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; line-height: 22px; ">+&nbsp;<a href="http://www.stevbros.com/project-management-training/pmp-exam-prep-35-pdus-lowest-price.html" style="color: rgb(13, 96, 134); margin: 0px; padding: 0px; text-align: justify; ">PMP® Exam Preparation 35 PDUs course</a><span style="margin: 0px; padding: 0px; text-align: justify; ">: This course is designed for project managers&nbsp;looking to solidify skills, stand out in career and obtain PMP® certificate. After this course, you will earn 35 PDUs pre-approved for 35 contact hours in fulfillment of the educational eligibility requirement of PMP® exam.&nbsp;</span><a href="http://www.stevbros.com/project-management-training/pmp-exam-prep-35-pdus-lowest-price.html" style="color: rgb(51, 141, 183); margin: 0px; padding: 0px; text-decoration: none; text-align: justify; ">Please access here for course details!</a></p>\r\n\r\n<p style="margin: 10px 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; line-height: 22px; ">+&nbsp;<a href="http://www.stevbros.com/project-management-training/pmp-mock-tests-simulating-the-real-pmp-exam.html" style="text-align: justify; color: rgb(13, 96, 134); margin: 0px; padding: 0px; ">PMP® Exam Mock Tests course</a><span style="text-align: justify; margin: 0px; padding: 0px; ">: This course is designed for project managers who would like to practice&nbsp;PMP® mock tests to gain confidence before taking the real test. It&nbsp;includes&nbsp;4 mock tests (800 questions) simulating PMP® real exam and&nbsp;PMBOK 5th edition aligned.&nbsp;</span><a href="http://www.stevbros.com/project-management-training/pmp-mock-tests-simulating-the-real-pmp-exam.html" style="text-align: justify; color: rgb(51, 141, 183); margin: 0px; padding: 0px; text-decoration: none; ">Please access here for course details!</a></p>\r\n\r\n<p style="margin: 10px 0px; padding: 0px; text-align: center; "><em style="margin: 0px; padding: 0px; ">Access&nbsp;<a href="http://www.stevbros.com/project-management-training/" style="margin: 0px; padding: 0px; color: rgb(51, 141, 183); text-decoration: none; ">blog of project management training&nbsp;here!</a></em></p>\r\n</div>\r\n', '2013-10-08 06:02:28', '2013-10-08 06:24:30', 1, 'The easiest way to earn 60 PDUs for PMP renewal with lowest price ', 0, NULL, ',15,18,', 'phuong', 'phuong', 0),
(8, 'About us ', 'about-us', '', 'Stevbros is the Registered Education Provider ID 3807 of Project Management Institute USA. Stevbros designs, customizes and delivers project management in-house training courses for enterprises in Asia in various industries: IT, software, constructions, oil and gas, services, manufacturing, government projects, ADB/ WorldBank/ ODA projects.', '<h2>Stevbros is the Registered Education Provider ID 3807 of Project Management Institute USA.&nbsp;Stevbros designs, customizes and delivers project management in-house training courses for enterprises in Asia in various industries: IT, software, constructions, oil and gas, services, manufacturing, government projects, ADB/ WorldBank/ ODA projects.</h2>\r\n\r\n<p><strong>Stevbros</strong>&nbsp;also offer analyses of the maturity of the <em>project management</em> carried out within the organization of customers, of different aspects of their projects or of the competence of the project managers.</p>\r\n\r\n<p>Missions of <strong>Stevbros</strong>&nbsp;are motivating corporate project management knowledge, skills and experience; leveraging project management processes and methods; and developing global project management career pathways for project managers. Core values of Stevbros are INTERNATIONALITY, QUALITY and INNOVATION. These core values clarify company’s purpose and direct company’s way.</p>\r\n\r\n<p style="text-align: center;"><iframe allowfullscreen="" frameborder="0" height="315" src="//www.youtube.com/embed/iSkm2Prr2WE?rel=0" width="560"></iframe></p>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<h3>Management Board:</h3>\r\n\r\n<ul>\r\n	<li><strong>Steven Nguyen</strong>, CEO</li>\r\n	<li><strong>Salim W.</strong>, Singapore Office Director</li>\r\n	<li><strong>Bryan Nguyen</strong>, Advisor</li>\r\n</ul>\r\n\r\n<div id="plugpanel" style="position: absolute; display: block; visibility: hidden; left: 154px; top: 251px; " title="http://stevbros.com/a/admin/ckeditor/plugins/fakeobjects/images/spacer.gif?t=CAPD"><img alt="ZoomInto: Pictures, Images and Photos" class="myplug_img" src="http://www.zoominto.com/zoomapi/ZoomButt.gif" style="cursor:pointer" /></div>\r\n\r\n<div id="plugincheck_0909">\r\n<div id="div_plugin_img_player" style="  position: absolute; padding: 12px; left: 50%; top: 50%; visibility:hidden; display:none; z-index:102; vertical-align: middle;">&nbsp;</div>\r\n</div>\r\n', '2013-03-06 00:00:00', '2013-03-06 20:30:37', 1, 'About us ', 0, 'vi', ',2,', 'admin', 'phuong', 0),
(9, 'Accelerated PMP® Exam Prep public course in Singapore', 'public-course-schedule', '', 'Who should attend: For anyone planning to take PMP® exam. This directed study course is designed to prepare you for the PMP® exam in effective manner with a minimum amount of studying after class', '<p style="text-align: center;"><a href="http://www.stevbros.com/payment/accelerated-pmp-exam-prep-public-course-in-singapore.html" style="font-size: 13px; text-align: center;"><img alt="Accelerated PMP Exam Prep public course in Singapore" src="/public/images/ENROLL-AND-PAY.jpg" style="width: 226px; height: 42px;" /></a></p>\r\n\r\n<p><span style="color:#B22222;"><strong>Schedule: 22-23/02/2014</strong></span></p>\r\n\r\n<p><span style="color:#B22222;"><strong>Location: Singapore</strong></span></p>\r\n\r\n<p><span style="color:#B22222;"><strong>Course: Accelerated PMP® Exam Prep.</strong></span></p>\r\n\r\n<h2 style="text-align: justify; ">Who should attend: For anyone planning to take PMP<span style="margin: 0px; padding: 0px; color: rgb(68, 68, 68); font-family: arial, sans-serif; font-size: small; line-height: 16px;">®</span> exam. This directed study course is designed to prepare you for the PMP<span style="margin: 0px; padding: 0px; color: rgb(68, 68, 68); font-family: arial, sans-serif; font-size: small; line-height: 16px;">®</span> exam in effective manner with a minimum amount of studying!</h2>\r\n\r\n<p style="text-align: center;"><img alt="Accelerated PMP Exam Workshop effectively" src="/public/images/articles/accelerated-pmp%C2%AE-exam-prep-course(3).jpg" style="width: 600px; height: 204px; " /></p>\r\n\r\n<p><strong>After the course, you will:</strong></p>\r\n\r\n<ul>\r\n	<li>Identify gaps in your knowledge that may hurt you on the exam</li>\r\n	<li>Be more comfortable with the types of questions you will see on the exam</li>\r\n	<li>Utilize your personalized test taking strategy</li>\r\n	<li>Apply project management techniques useful in the real world</li>\r\n	<li>Be a better project manager</li>\r\n	<li>Earn certificate of 35 PDUs</li>\r\n</ul>\r\n\r\n<p style="text-align: center; "><img alt="Accelerated PMP Exam Workshop effectively" src="/public/images/articles/pmp-exam-prep-pmbok5.jpg" style="width: 600px; height: 141px; " /></p>\r\n\r\n<p><strong>Content:&nbsp;</strong>this is blended training course including</p>\r\n\r\n<ul>\r\n	<li>Pre classroom training: PMP<span style="font-size: 13px; ">® and PMBOK in a nutshell (</span>11-hour online section)</li>\r\n	<li>Classroom training: Accelerated PMP<span style="font-size: 13px; ">® Exam Prep (</span>2-day section)</li>\r\n	<li>After classroom training: Practise mock tests (16-house online section)</li>\r\n</ul>\r\n\r\n<p style="text-align: center; "><img alt="Accelerated PMP Exam Workshop effectively" src="/public/images/articles/effective-pmp-exam-workshop.jpg" style="width: 600px; height: 150px; " /></p>\r\n\r\n<p><strong>Information of PMP® certificate:</strong></p>\r\n\r\n<p>To apply for the PMP®, you need to have either:</p>\r\n\r\n<ul>\r\n	<li>A secondary degree (high school diploma, associate’s degree, or the global equivalent) with at least five years of project management experience, with 7,500 hours leading and directing projects and 35 hours of project management education. OR</li>\r\n	<li>A four-year degree (bachelor’s degree or the global equivalent) and at least three years of project management experience, with 4,500 hours leading and directing projects and 35 hours of project management education.</li>\r\n</ul>\r\n\r\n<div id="view_post" style="margin: 0px; padding: 0px; clear: both; line-height: 22px; list-style: none; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13px;">\r\n<p style="margin: 10px 0px 10px 40px; padding: 0px; text-align: center;"><em style="margin: 0px; padding: 0px;">Access&nbsp;<a href="http://www.stevbros.com/project-management-training/" style="margin: 0px; padding: 0px; color: rgb(51, 141, 183); text-decoration: none;">blog of project management training&nbsp;here!</a></em></p>\r\n</div>\r\n\r\n<p style="text-align: center;">​<a href="http://www.stevbros.com/payment/accelerated-pmp-exam-prep-public-course-in-singapore.html"><img alt="Accelerated PMP Exam Prep public course in Singapore" src="/public/images/ENROLL-AND-PAY.jpg" style="width: 226px; height: 42px;" /></a></p>\r\n', '2013-03-06 00:00:00', '2013-07-02 05:40:29', 1, 'Public course schedule', 0, 'vi', ',21,', 'admin', 'phuong', 0),
(10, 'PMP® Exam Mock Tests Pass for sure', 'pmp®-exam-mock-tests-pass-for-sure', '12.jpg', 'PMP® Exam Mock Tests Pass for sure\r\n', '<p>PMP® Exam Mock Tests Pass for sure</p>\r\n', '2013-03-06 00:00:00', '2013-03-06 12:27:16', 0, 'PMP® Exam Mock Tests Pass for sure', 0, 'vi', ',17,', 'admin', 'admin', 0),
(11, 'PMP® Exam Prep - 35 PDUs', 'pmp®-exam-prep-35-pdus', '1.jpg', 'Donec sed odio dui. Duis mollis, est non commodo luctus, nisi erat por', '<p><span style="color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 20px;">Donec sed odio dui. Duis mollis, est non commodo luctus, nisi erat por</span></p>\r\n\r\n<div style="text-align: center;">&nbsp;</div>\r\n', '2013-03-06 00:00:00', '2013-03-06 12:27:20', 0, 'PMP® Exam Prep - 35 PDUs', 0, 'vi', ',17,', 'admin', 'admin', 0),
(12, 'Investment in Singapore/Vietnam', 'investment-in-singapore-vietnam', 'investment in Sinagapore VN.jpg', 'Stevbros supports foreign Startups and SMEs through the very early stages of their development in Vietnam and in Singapore.', '<h2>Stevbros supports foreign Startups and SMEs through the very early stages of their development in Vietnam and in Singapore.</h2>\r\n\r\n<p style="text-align: center;"><img alt="Investment in Singapore/Vietnam" src="/public/images/articles/investment%20in%20Sinagapore%20VN.jpg" style="width: 645px; height: 250px; " title="Investment in Singapore/Vietnam" /></p>\r\n\r\n<p>This includes prospection, office setup, human resource solutions, business development, customer or supplier relationship, trade shows, conferences and more.</p>\r\n\r\n<p>Stevbros supports foreign Startups and SMEs in expanding business to Vietnam market and providing&nbsp;human resource solutions including identifying, evaluating, acquiring staffs in software industry as well as manufacturing industry.</p>\r\n\r\n<p style="text-align: center; "><img alt="doing business in Vietnam" src="/public/images/articles/mo-cong-ty-tai-singapore.jpg" style="width: 384px; height: 288px; " /></p>\r\n\r\n<p>Stevbros also supports Vietnamese Startups and SMEs in establishing business and opening branch, representative office in Singapore.</p>\r\n', '2013-03-06 00:00:00', '2013-03-06 10:28:04', 1, 'Investment in Singapore/Vietnam', 0, 'vi', ',', 'admin', 'phuong', 0),
(13, 'Emotional Intelligence for Project Managers', 'emotional-intelligence-for-project-managers', 'emotionalintelligence.gif', 'Project management is getting work done through people. To effectively lead a large team, build a strong relationship with project stakeholders, and archive the goals of the projects successfully, project managers need to learn, develop and apply Emotional Intelligence. It helps them recognize and regulate emotions in themselves and in others.', '<h2>Project managers today well understand project management, its frameworks, processes, process groups, knowledge areas, terminologies, and heuristics as described for example in the Guide to Project Management Body of Knowledge (PMBOK Guide; this guide is developed by volunteer project management practitioners and educators over the world, overseen by Project Management Institute (PMI) in America, and applied in all industries; the American National Standards Institute (ANSI) assigned it ANSI/PMI 99-001-2008 and the Institute of Electrical and Electronics Engineers assigned it IEEE 1490-2011). They master project management tools like Microsoft Project, Primavera, or Redmine. Especially, most experienced project managers also pursue their certification as Project Management Professional (PMP; the globally recognized certificate for project management professionals) to solidify their skills and stand out in career. Those are the prerequisites for the success of project managers. But in order to advance their career, project managers need strong interpersonal skills. Emotional Intelligence provides the frameworks for those interpersonal skills.</h2>\r\n\r\n<p style="text-align: center;"><img alt="" src="/public/images/articles/emotionalintelligence.png" style="width: 600px; height: 450px; " /></p>\r\n\r\n<p><strong>Project management</strong> is getting work done through people. To effectively lead a large team, build a strong relationship with project stakeholders, and archive the goals of the projects successfully, project managers need to learn, develop and apply<strong> Emotional Intelligence</strong>. It helps them recognize and regulate emotions in themselves and in others.</p>\r\n\r\n<p>The <strong>Project Management</strong> Institute (PMI) sponsored some researches to find that <strong>project manager’</strong>s style and competencies do influence <em>project success</em>. In particular, the research of Turner and Muller (2006) showed that <em>project success</em> is correlated with Emotional Intelligence, particularly on projects that were described as complex. And as the level of complexity increased, the <strong>Emotional Intelligence</strong> of the <strong>project manager</strong> was found to be an increasingly<em> important factor in succes</em>s.</p>\r\n\r\n<p>Among 10 <strong>project management knowledge areas</strong> in <strong>PMBOK Guide</strong>, <strong>project management knowledge areas</strong> of <strong>interpersonal skills</strong> focus on three emotional competencies of <strong>communications, conflict management, and inspirational leadership</strong> in the team <strong>leadership</strong> domain of Mersino’s framework.</p>\r\n\r\n<p style="margin-left:1.0in;">&nbsp;</p>\r\n\r\n<p style="text-align: center;"><img alt="" src="/public/images/articles/emotionalintelligenceframework.png" style="width: 600px; height: 292px; " /></p>\r\n\r\n<p style="text-align: center;"><em style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 22px; text-align: center; ">Access blog of project management training&nbsp;<a href="http://www.stevbros.com/project-management-training/" style="margin: 0px; padding: 0px; color: rgb(51, 141, 183); text-decoration: none; ">here</a>!</em></p>\r\n\r\n<div style="position: absolute; display: block; visibility: visible; left: 135px; top: 618px; " title="http://stevbros.com/public/images/articles/edutrust_logo.jpg">&nbsp;</div>\r\n\r\n<div style="position: absolute; display: block; visibility: visible; left: 135px; top: 618px; " title="http://stevbros.com/public/images/articles/edutrust_logo.jpg">&nbsp;</div>\r\n\r\n<div id="plugpanel" style="position: absolute; display: block; visibility: hidden; left: 135px; top: 1304px; " title="http://stevbros.com/stevbros/public/images/emotionalintelligenceframework.png"><img alt="ZoomInto: Pictures, Images and Photos" class="myplug_img" src="http://www.zoominto.com/zoomapi/ZoomButt.gif" style="cursor:pointer" /></div>\r\n\r\n<div id="plugincheck_0909">\r\n<div id="div_plugin_img_player" style="  position: absolute; padding: 12px; left: 50%; top: 50%; visibility:hidden; display:none; z-index:102; vertical-align: middle;">&nbsp;</div>\r\n</div>\r\n\r\n<div id="plugpanel" style="position: absolute; display: none; " title=""><img alt="ZoomInto: Pictures, Images and Photos" class="myplug_img" src="http://www.zoominto.com/zoomapi/ZoomButt.gif" style="cursor:pointer" /></div>\r\n\r\n<div id="plugincheck_0909">\r\n<div id="div_plugin_img_player" style="  position: absolute; padding: 12px; left: 50%; top: 50%; visibility:hidden; display:none; z-index:102; vertical-align: middle;">&nbsp;</div>\r\n</div>\r\n\r\n<div id="plugpanel" style="position: absolute; display: none; " title=""><img alt="ZoomInto: Pictures, Images and Photos" class="myplug_img" src="http://www.zoominto.com/zoomapi/ZoomButt.gif" style="cursor:pointer" /></div>\r\n\r\n<div id="plugincheck_0909">\r\n<div id="div_plugin_img_player" style="  position: absolute; padding: 12px; left: 50%; top: 50%; visibility:hidden; display:none; z-index:102; vertical-align: middle;">&nbsp;</div>\r\n</div>\r\n\r\n<div id="plugpanel" style="position: absolute; display: none; " title=""><img alt="ZoomInto: Pictures, Images and Photos" class="myplug_img" src="http://www.zoominto.com/zoomapi/ZoomButt.gif" style="cursor:pointer" /></div>\r\n\r\n<div id="plugincheck_0909">\r\n<div id="div_plugin_img_player" style="  position: absolute; padding: 12px; left: 50%; top: 50%; visibility:hidden; display:none; z-index:102; vertical-align: middle;">&nbsp;</div>\r\n</div>\r\n\r\n<div id="plugpanel" style="position: absolute; display: none; " title=""><img alt="ZoomInto: Pictures, Images and Photos" class="myplug_img" src="http://www.zoominto.com/zoomapi/ZoomButt.gif" style="cursor:pointer" /></div>\r\n\r\n<div id="plugincheck_0909">\r\n<div id="div_plugin_img_player" style="  position: absolute; padding: 12px; left: 50%; top: 50%; visibility:hidden; display:none; z-index:102; vertical-align: middle;">&nbsp;</div>\r\n</div>\r\n\r\n<div id="plugpanel" style="position: absolute; display: none; " title=""><img alt="ZoomInto: Pictures, Images and Photos" class="myplug_img" src="http://www.zoominto.com/zoomapi/ZoomButt.gif" style="cursor:pointer" /></div>\r\n\r\n<div id="plugincheck_0909">\r\n<div id="div_plugin_img_player" style="  position: absolute; padding: 12px; left: 50%; top: 50%; visibility:hidden; display:none; z-index:102; vertical-align: middle;">&nbsp;</div>\r\n</div>\r\n\r\n<div id="plugpanel" style="position: absolute; display: none; " title=""><img alt="ZoomInto: Pictures, Images and Photos" class="myplug_img" src="http://www.zoominto.com/zoomapi/ZoomButt.gif" style="cursor:pointer" /></div>\r\n\r\n<div id="plugincheck_0909">\r\n<div id="div_plugin_img_player" style="  position: absolute; padding: 12px; left: 50%; top: 50%; visibility:hidden; display:none; z-index:102; vertical-align: middle;">&nbsp;</div>\r\n</div>\r\n\r\n<div id="plugpanel" style="position: absolute; display: none; " title=""><img alt="ZoomInto: Pictures, Images and Photos" class="myplug_img" src="http://www.zoominto.com/zoomapi/ZoomButt.gif" style="cursor:pointer" /></div>\r\n\r\n<div id="plugincheck_0909">\r\n<div id="div_plugin_img_player" style="  position: absolute; padding: 12px; left: 50%; top: 50%; visibility:hidden; display:none; z-index:102; vertical-align: middle;">&nbsp;</div>\r\n</div>\r\n', '2013-03-13 00:00:00', '2013-07-04 01:54:36', 1, 'Emotional Intelligence for Project Managers', 0, 'vi', ',15,18,', 'admin', 'phuong', 0);
INSERT INTO `info` (`id`, `name`, `name_rewrite`, `url_hinh`, `description`, `content`, `date_create`, `date_update`, `status`, `metaKeyword`, `other`, `lang`, `menu_id`, `user_create`, `user_update`, `delete`) VALUES
(14, 'Statistical  figures of project management', 'the-up-to-date-figures-of-project-management', 'chung-chi-pmp.png', 'The country with the highest median salary ($160,409 USD) is Switzerland, whereas the country with the lowest median salary is China ($23,207 USD).', '<h2>The world is spending 1/5 of its GDP (US $12 trillion) on projects this year - and organizations that range from global businesses to governments and NGOs have identified project management and skilled project managers as the key to their success.</h2>\r\n\r\n<p>&nbsp;64% of projects successfully met their original goals and business intent in 2011. Which means…over one third did not.</p>\r\n\r\n<p>The demand for project professionals is staggering, with an average of 1.2 million projected new jobs needing to be filled each year for the next decade. This demand far exceeds supply - and has precipitated a global education crisis that, if uncorrected, will put U.S. $4.5 trillion of the global GDP at risk by 2016.</p>\r\n\r\n<p>According to the PMO and portfolio management leaders we surveyed, the most critical project success factors include:</p>\r\n\r\n<p style="margin-left:.5in;">•&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <em>Talent</em>: Staffing the team with appropriately skilled people</p>\r\n\r\n<p style="margin-left:.5in;">•&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <em>Project Management Basics: </em>Taking the time to create a realistic implementation plan</p>\r\n\r\n<p style="margin-left:.5in;">•&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <em>Executive Sponsorship: </em>Ensuring top-level management support for the project</p>\r\n\r\n<p style="margin-left:.5in;">•&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <em>Focus on Benefits: </em>Clearly defining the expected benefits from the project</p>\r\n\r\n<p style="margin-left:.5in;">•&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <em>Change Management: </em>Effectively managing change associated with the project.</p>\r\n\r\n<p>Percent of projects meeting original goals and business intent:</p>\r\n\r\n<p style="text-align: center;"><img alt="Những thống kê mới nhất về dự án" src="/public/images/articles/projectsuccess1.jpg" style="width: 500px; height: 493px;" title="Những thống kê mới nhất về dự án" /></p>\r\n\r\n<p>In PM salary survey in 2012, as seen in the table below, the median salary (when converted to U.S. Dollars using normal exchange rates) for someone in the project management profession varies widely from country to country. The country with the highest median salary ($160,409 USD) is Switzerland, whereas the country with the lowest median salary is China ($23,207 USD).</p>\r\n\r\n<p style="text-align: center;"><img alt=" quản lý dự án có chứng chỉ PMP®" src="/public/images/articles/chung-chi-pmp.png" style="width: 527px; height: 569px; " title=" quản lý dự án có chứng chỉ PMP®" /></p>\r\n\r\n<p style="text-align: center;"><em style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 22px; text-align: center; ">Access blog of project management training&nbsp;<a href="http://www.stevbros.com/project-management-training/" style="margin: 0px; padding: 0px; color: rgb(51, 141, 183); text-decoration: none; ">here</a>!</em></p>\r\n\r\n<div id="plugpanel" style="position: absolute; display: block; visibility: hidden; left: 185px; top: 442px; " title="http://stevbros.com/public/images/articles/projectsuccess1.jpg"><img alt="ZoomInto: Pictures, Images and Photos" class="myplug_img" src="http://www.zoominto.com/zoomapi/ZoomButt.gif" style="cursor:pointer" /></div>\r\n\r\n<div id="plugincheck_0909">\r\n<div id="div_plugin_img_player" style="  position: absolute; padding: 12px; left: 50%; top: 50%; visibility:hidden; display:none; z-index:102; vertical-align: middle;">&nbsp;</div>\r\n</div>\r\n\r\n<div id="plugpanel" style="position: absolute; display: none; " title=""><img alt="ZoomInto: Pictures, Images and Photos" class="myplug_img" src="http://www.zoominto.com/zoomapi/ZoomButt.gif" style="cursor:pointer" /></div>\r\n\r\n<div id="plugincheck_0909">\r\n<div id="div_plugin_img_player" style="  position: absolute; padding: 12px; left: 50%; top: 50%; visibility:hidden; display:none; z-index:102; vertical-align: middle;">&nbsp;</div>\r\n</div>\r\n', '2013-03-13 00:00:00', '2013-03-13 06:47:19', 1, 'Những thống kê mới nhất về dự án', 0, 'vi', ',15,18,', 'admin', 'phuong', 0),
(15, 'Games of project cost control and requirement management', 'games-of-project-cost-control-and-requirement-management', 'projectrequirement.jpg', 'Have you experienced project cost management and project cost changes during project execution? Stevbros invites you play a game of project cost control designed by Robc', '<h2><strong>Have you experienced project cost management and project cost changes during project execution? Stevbros invites you play a game of project cost control designed by Robc.</strong></h2>\r\n\r\n<p style="text-align: center;">&nbsp;<a href="http://thatpmgame.com/">http://thatpmgame.com/</a></p>\r\n\r\n<p style="text-align: center;"><img alt="Trò chơi về kiểm soát chi phí và quản lý yêu cầu" src="/public/images/articles/robc-game.jpg" style="width: 600px; height: 217px;" title="Trò chơi về kiểm soát chi phí và quản lý yêu cầu" /></p>\r\n\r\n<p><strong>Stevbros </strong>also would share with you a project cartoon tool in <strong>project requirement managemen</strong>t. You can easily customize or make a project requirement management picture for your specific projects or your organization. Let’s try it, you will benefit a lot from this helpful tool:</p>\r\n\r\n<p style="text-align: center;">&nbsp;<a href="http://www.projectcartoon.com/">www.projectcartoon.com</a></p>\r\n\r\n<p style="text-align: center;"><img alt="công cụ vẽ tranh vui về quản lý yêu cầu" src="/public/images/articles/projectrequirement.jpg" style="width: 400px; height: 300px;" title="công cụ vẽ tranh vui về quản lý yêu cầu" /></p>\r\n\r\n<p>Do you know that 60% requirements is changed comparing to original requirements during project execution? We can manage baseline of high-level requirement and avoid as much changes as possible. However, with detailed requirement, it is very difficult for you to baseline it, especially most of detailed requirements are collected in rolling-wave basic. We cannot collect all detailed requirements and baseline them at the early phases of project. Detailed requirements normally become clear after interim deliverables. This is really one of the difficult problems in projects and project managers need both hard-skills and soft-skills to be successful in project requirement management to meet expectations of project stakeholders on project requirement.</p>\r\n\r\n<p style="text-align: center; "><em style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 22px; text-align: center; ">Access blog of project management training&nbsp;<a href="http://www.stevbros.com/project-management-training/" style="margin: 0px; padding: 0px; color: rgb(51, 141, 183); text-decoration: none; ">here</a>!</em></p>\r\n\r\n<div id="plugpanel" style="position: absolute; display: block; visibility: visible; left: 135px; top: 138px; " title="http://stevbros.com/public/images/articles/robc-game.jpg"><img alt="ZoomInto: Pictures, Images and Photos" class="myplug_img" src="http://www.zoominto.com/zoomapi/ZoomButt.gif" style="cursor:pointer" /></div>\r\n\r\n<div id="plugincheck_0909">\r\n<div id="div_plugin_img_player" style="  position: absolute; padding: 12px; left: 50%; top: 50%; visibility:hidden; display:none; z-index:102; vertical-align: middle;">&nbsp;</div>\r\n</div>\r\n\r\n<div id="plugpanel" style="position: absolute; display: none; " title=""><img alt="ZoomInto: Pictures, Images and Photos" class="myplug_img" src="http://www.zoominto.com/zoomapi/ZoomButt.gif" style="cursor:pointer" /></div>\r\n\r\n<div id="plugincheck_0909">\r\n<div id="div_plugin_img_player" style="  position: absolute; padding: 12px; left: 50%; top: 50%; visibility:hidden; display:none; z-index:102; vertical-align: middle;">&nbsp;</div>\r\n</div>\r\n', '2013-03-23 00:00:00', '2013-03-23 06:46:20', 1, 'Trò chơi về kiểm soát chi phí và quản lý yêu cầu', 0, 'vi', ',15,18,', 'admin', 'phuong', 0),
(16, 'Quản lý dự án IT theo Agile - SCRUM', 'quan-ly-du-an-it-theo-agile-scrum', '5.jpg', 'Quản lý dự án IT theo Agile - SRUM, Quản lý dự án IT theo Agile - SRUM', '<p style="font-size: 13px;">Lorem ipsum dolor sit amet, consectetuer adipiscing elit.&nbsp;<span style="line-height: 1.6em;">Maecenas feugiat consequat diam. Maecenas metus.</span></p>\r\n\r\n<p style="font-size: 13px;">Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla. Aenean dictum lacinia tortor. Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus.</p>\r\n\r\n<p style="font-size: 13px;">Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim. Sed tortor. Curabitur molestie. Duis velit augue, condimentum at, ultrices a, luctus ut, orci. Donec pellentesque egestas eros. Integer cursus, augue in cursus faucibus, eros pede bibendum sem, in tempus tellus justo quis ligula. Etiam eget tortor.</p>\r\n\r\n<p style="font-size: 13px;">Vestibulum rutrum, est ut placerat elementum, lectus nisl aliquam velit, tempor aliquam eros nunc nonummy metus. In eros metus, gravida a, gravida sed, lobortis id, turpis. Ut ultrices, ipsum at venenatis fringilla, sem nulla lacinia tellus, eget aliquet turpis mauris non enim. Nam turpis. Suspendisse lacinia.</p>\r\n\r\n<p style="font-size: 13px;">Curabitur ac tortor ut ipsum egestas elementum. Nunc imperdiet gravida mauris.</p>\r\n\r\n<p style="font-size: 13px;">Lorem ipsum dolor sit amet, consectetuer adipiscing elit.&nbsp;<span style="line-height: 1.6em;">Maecenas feugiat consequat diam. Maecenas metus.</span></p>\r\n\r\n<p style="font-size: 13px;">Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla. Aenean dictum lacinia tortor. Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus.</p>\r\n\r\n<p style="font-size: 13px;">Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim. Sed tortor. Curabitur molestie. Duis velit augue, condimentum at, ultrices a, luctus ut, orci. Donec pellentesque egestas eros. Integer cursus, augue in cursus faucibus, eros pede bibendum sem, in tempus tellus justo quis ligula. Etiam eget tortor.</p>\r\n\r\n<p style="font-size: 13px;">Vestibulum rutrum, est ut placerat elementum, lectus nisl aliquam velit, tempor aliquam eros nunc nonummy metus. In eros metus, gravida a, gravida sed, lobortis id, turpis. Ut ultrices, ipsum at venenatis fringilla, sem nulla lacinia tellus, eget aliquet turpis mauris non enim. Nam turpis. Suspendisse lacinia.</p>\r\n\r\n<p style="font-size: 13px;">Curabitur ac tortor ut ipsum egestas elementum. Nunc imperdiet gravida mauris.</p>\r\n', '2013-03-23 00:00:00', '2013-03-22 23:05:56', 0, 'Quản lý dự án IT theo Agile - SRUM', 0, 'vi', ',15,', 'admin', 'admin', 0),
(17, 'Post width Both Sidebar 3', 'post-width-both-sidebar-3', '7.jpg', 'Donec sed odio dui. Duis mollis, est non commodo luctus, nisi erat por', '<p style="font-size: 13px;">Lorem ipsum dolor sit amet, consectetuer adipiscing elit.&nbsp;<span style="line-height: 1.6em;">Maecenas feugiat consequat diam. Maecenas metus.</span></p>\r\n\r\n<p style="font-size: 13px;">Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla. Aenean dictum lacinia tortor. Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus.</p>\r\n\r\n<p style="font-size: 13px;">Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim. Sed tortor. Curabitur molestie. Duis velit augue, condimentum at, ultrices a, luctus ut, orci. Donec pellentesque egestas eros. Integer cursus, augue in cursus faucibus, eros pede bibendum sem, in tempus tellus justo quis ligula. Etiam eget tortor.</p>\r\n\r\n<p style="font-size: 13px;">Vestibulum rutrum, est ut placerat elementum, lectus nisl aliquam velit, tempor aliquam eros nunc nonummy metus. In eros metus, gravida a, gravida sed, lobortis id, turpis. Ut ultrices, ipsum at venenatis fringilla, sem nulla lacinia tellus, eget aliquet turpis mauris non enim. Nam turpis. Suspendisse lacinia.</p>\r\n\r\n<p style="font-size: 13px;">Curabitur ac tortor ut ipsum egestas elementum. Nunc imperdiet gravida mauris.&nbsp;</p>\r\n\r\n<p style="font-size: 13px;">Lorem ipsum dolor sit amet, consectetuer adipiscing elit.&nbsp;<span style="line-height: 1.6em;">Maecenas feugiat consequat diam. Maecenas metus.</span></p>\r\n\r\n<p style="font-size: 13px;">Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla. Aenean dictum lacinia tortor. Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus.</p>\r\n\r\n<p style="font-size: 13px;">Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim. Sed tortor. Curabitur molestie. Duis velit augue, condimentum at, ultrices a, luctus ut, orci. Donec pellentesque egestas eros. Integer cursus, augue in cursus faucibus, eros pede bibendum sem, in tempus tellus justo quis ligula. Etiam eget tortor.</p>\r\n\r\n<p style="font-size: 13px;">Vestibulum rutrum, est ut placerat elementum, lectus nisl aliquam velit, tempor aliquam eros nunc nonummy metus. In eros metus, gravida a, gravida sed, lobortis id, turpis. Ut ultrices, ipsum at venenatis fringilla, sem nulla lacinia tellus, eget aliquet turpis mauris non enim. Nam turpis. Suspendisse lacinia.</p>\r\n\r\n<p style="font-size: 13px;">Curabitur ac tortor ut ipsum egestas elementum. Nunc imperdiet gravida mauris.</p>\r\n', '2013-03-23 00:00:00', '2013-03-23 10:27:21', 0, 'Post width Both Sidebar', 0, 'vi', ',15,', 'admin', 'admin', 0),
(18, 'The concept of Emotional Intelligence for project management', 'the-concept-of-emotional-intelligence-for-project-management', 'illustration-of-emotional-intelligence.jpg', 'We analyze Emotional Intelligence frameworks of Goleman and Mersino to understand the concept of Emotional Intelligence for project management and how Mersino adapted Goleman’s framework to project management ', '<h2>1. What is Goleman’s<strong> Emotional Intelligence </strong>competency framework?</h2>\r\n\r\n<p>Goleman’s framework includes a set of nineteen competencies, which are categorized into four domains as shown in the following picture:</p>\r\n\r\n<p style="text-align: center; "><img alt="" src="/public/images/articles/EIGoleman.png" style="width: 600px; height: 242px; " /></p>\r\n\r\n<p>2. How did Mersino adapt the <strong>Emotional Intelligence</strong> competency framework for project management?</p>\r\n\r\n<p>Mersino adapted Goleman’s framework to focus on the most relevant competencies of <strong>Emotional Intelligence</strong> for project managers and introduced a framework with his name including only fourteen competencies which are categorized into five domain as shown in the following picture:</p>\r\n\r\n<p style="text-align: center; "><img alt="" src="/public/images/articles/emotionalintelligenceframework.png" style="width: 600px; height: 292px; " /></p>\r\n\r\n<p>Mersino added new domain called team leadership and it is at the top of his framework. He moved one competence of inspirational leadership from the relation management domain of Goleman’s framework to this new domain and added two new emotional competencies of communications and conflict management into this domain.</p>\r\n\r\n<p>We will examine the difference between Goleman’s framework and Mersino’s framework in four remaining domains:</p>\r\n\r\n<p style="margin-left:.5in;">·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Self-awareness: Mersino kept all three competencies in this domain of Goleman’s framework in his. The competencies of emotional self-awareness, accurate self-assessment and self-confidence in Goleman’s framework are also in the first building block for <strong>Emotional Intelligence</strong> framework for project managers – the self-awareness domain.</p>\r\n\r\n<p style="margin-left:.5in;">·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Self-management: Only the self-control competence in this domain of Goleman’s framework remains in Mersino’s. Controlling our emotions and keeping disruptive emotions and impulses in check are important for project managers in project communications management. Other generic competencies in this domain of Goleman’s framework are removed from Mersino’s.</p>\r\n\r\n<p style="margin-left:.5in;">·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Social awareness: The competencies of empathy and organizational awareness are included in both Mersino’s framework and Goleman’s framework. Mersino removed generic emotional competence of service orientation and added two new competencies: seeing other clearly and emotional boundaries to accurately assess and understand project stakeholders’ expectation while project managers engage, manage and communicate to project stakeholders.</p>\r\n\r\n<p style="margin-left:.5in;">·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Relationship management: The competence of inspirational leadership is moved from the relationship management domain of Goleman’s framework to the team leadership domain of Mersino’s framework. The competence of developing others staying in this domain of Goleman’s framework is also a part of this domain of Mersino’s framework to develop inspirational leadership for project managers. Mersino removed all other generic emotional competencies and added two important competencies for project managers: stakeholder relationship to systematic identify, analyze and manage relationships with project stakeholders, and truth telling in respect to professional codes of ethic of project managers (PMBOK Guide, 2013).</p>\r\n\r\n<p style="margin-left: 0.5in; text-align: center; "><em style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 22px; text-align: center; ">Access blog of project management training&nbsp;<a href="http://www.stevbros.com/project-management-training/" style="margin: 0px; padding: 0px; color: rgb(51, 141, 183); text-decoration: none; ">here</a>!</em></p>\r\n\r\n<div id="plugpanel" style="position: absolute; display: none; " title=""><img alt="ZoomInto: Pictures, Images and Photos" class="myplug_img" src="http://www.zoominto.com/zoomapi/ZoomButt.gif" style="cursor:pointer" /></div>\r\n\r\n<div id="plugincheck_0909">\r\n<div id="div_plugin_img_player" style="  position: absolute; padding: 12px; left: 50%; top: 50%; visibility:hidden; display:none; z-index:102; vertical-align: middle;">&nbsp;</div>\r\n</div>\r\n', '2013-07-03 12:24:36', '2013-07-03 01:58:21', 1, 'The concept of Emotional Intelligence for project management', 0, NULL, ',15,18,', 'phuong', 'phuong', 0),
(19, 'The competencies of project managers according to the PMBOK Guide', 'the-competencies-of-project-managers-according-to-the-pmbok-guide', 'projectmanagementcompetencies.jpg', 'The competencies of project managers are described in ten knowledge areas and can be categorized into two groups: hard skills and interpersonal skills (also called soft skills).', '<h2>PMBOK Guide includes five process groups (Initiating, Planning, Executing, Monitoring and controlling, to Closing) and ten knowledge areas (Integration management, Scope management, Time management, Cost management, Quality management, Human Resource Management, Communications management, Risk management, Procurement management, Stakeholder management).&nbsp;</h2>\r\n\r\n<p style="text-align: center; "><img alt="" src="/public/images/articles/projectmanagementcompetencies.jpg" style="width: 400px; height: 402px; " /></p>\r\n\r\n<p>The competencies of project managers are described in ten knowledge areas and can be categorized into two groups: hard skills and interpersonal skills (also called soft skills).</p>\r\n\r\n<p><strong>Project management knowledge areas</strong> of hard skills focus on processes and tools to initiate, plan, execute, control and close project through project lifecycle.</p>\r\n\r\n<p><strong>Project management knowledge areas</strong> of interpersonal skills focus on three emotional competencies of communications, conflict management, and inspirational leadership in the team leadership domain of Mersino’s framework.</p>\r\n\r\n<p style="text-align: center; "><em>Access blog of project management training <a href="http://www.stevbros.com/project-management-training/">here</a>!</em></p>\r\n\r\n<div id="plugpanel" style="position: absolute; display: block; visibility: visible; left: 235px; top: 133px; " title="http://stevbros.com/stevbros/public/images/projectmanagementcompetencies.jpg"><img alt="ZoomInto: Pictures, Images and Photos" class="myplug_img" src="http://www.zoominto.com/zoomapi/ZoomButt.gif" style="cursor:pointer" /></div>\r\n\r\n<div id="plugincheck_0909">\r\n<div id="div_plugin_img_player" style="  position: absolute; padding: 12px; left: 50%; top: 50%; visibility:hidden; display:none; z-index:102; vertical-align: middle;">&nbsp;</div>\r\n</div>\r\n\r\n<div id="plugpanel" style="position: absolute; display: none; " title=""><img alt="ZoomInto: Pictures, Images and Photos" class="myplug_img" src="http://www.zoominto.com/zoomapi/ZoomButt.gif" style="cursor:pointer" /></div>\r\n\r\n<div id="plugincheck_0909">\r\n<div id="div_plugin_img_player" style="  position: absolute; padding: 12px; left: 50%; top: 50%; visibility:hidden; display:none; z-index:102; vertical-align: middle;">&nbsp;</div>\r\n</div>\r\n\r\n<div id="plugpanel" style="position: absolute; display: none; " title=""><img alt="ZoomInto: Pictures, Images and Photos" class="myplug_img" src="http://www.zoominto.com/zoomapi/ZoomButt.gif" style="cursor:pointer" /></div>\r\n\r\n<div id="plugincheck_0909">\r\n<div id="div_plugin_img_player" style="  position: absolute; padding: 12px; left: 50%; top: 50%; visibility:hidden; display:none; z-index:102; vertical-align: middle;">&nbsp;</div>\r\n</div>\r\n\r\n<div id="plugpanel" style="position: absolute; display: none; " title=""><img alt="ZoomInto: Pictures, Images and Photos" class="myplug_img" src="http://www.zoominto.com/zoomapi/ZoomButt.gif" style="cursor:pointer" /></div>\r\n\r\n<div id="plugincheck_0909">\r\n<div id="div_plugin_img_player" style="  position: absolute; padding: 12px; left: 50%; top: 50%; visibility:hidden; display:none; z-index:102; vertical-align: middle;">&nbsp;</div>\r\n</div>\r\n\r\n<div id="plugpanel" style="position: absolute; display: none; " title=""><img alt="ZoomInto: Pictures, Images and Photos" class="myplug_img" src="http://www.zoominto.com/zoomapi/ZoomButt.gif" style="cursor:pointer" /></div>\r\n\r\n<div id="plugincheck_0909">\r\n<div id="div_plugin_img_player" style="  position: absolute; padding: 12px; left: 50%; top: 50%; visibility:hidden; display:none; z-index:102; vertical-align: middle;">&nbsp;</div>\r\n</div>\r\n', '2013-07-03 13:06:30', '2013-07-03 01:56:56', 1, 'The competencies of project managers according to the PMBOK Guide', 0, NULL, ',15,18,', 'phuong', 'phuong', 0),
(26, '35 contact hours vs. 35 PDUs, which one is the best choice for PMP® Exam Prep', '35-contact-hours-vs-35-pdus-which-one-is-the-best-choice-for-pmp-exam-prep', 'contact-hour-vs-pdu.jpg', 'Contact hour is training hour, which can be earned from any training course related project management. PDU standing for Professional Development Unit is one kind of contact hour and PDU is pre-approved contact hour while other kinds of contact hour can be selected for audit by PMI.', '<h2>To apply for PMP® Exam, you must have at least 4500 hours of project experience and 35 contact hours. Contact hour is training hour, which can be earned from any training course related project management. PDU standing for Professional Development Unit is one kind of contact hour and PDU is pre-approved contact hour while other kinds of contact hour can be selected for audit by PMI.</h2>\r\n\r\n<p style="text-align: center; "><a href="http://www.stevbros.com/payment/pmp-exam-prep-35-pdus-lowest-price.html"><img alt="35 contact hours vs. 35 PDUs which one is the best choise for PMP Exam Prep" src="/public/images/articles/contact-hour-vs-pdu.jpg" style="width: 400px; height: 400px; " /></a></p>\r\n\r\n<p>Most PMP® candidates choose a course of 35 PDUs for PMP® exam preparation because the course of 35 PDUs help you review all essential knowledge, skills and experience for PMP® exam, as well as identify the gap in your knowledge that may hurt you on the PMP® exam. Significantly, the course of 35 PDUs grant you a certificate of 35 PDUs and of-course you definitely earn 35 pre-approved contact hours. Of-course, only PMI Registered Education Providers (PMI R.E.P) provide training course of PDU. For example Stevbros – PMI R.E.P ID 3807 is providing online training course of 35 PDUs with lowest price, you can enroll this course at any time and from any where in the world. Stevbros accepts online payment for all online courses globally. Just click the following link and enroll the online course of 35 PDUs with only $35 U.S</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align: center; "><a href="http://www.stevbros.com/payment/pmp-exam-prep-35-pdus-lowest-price.html">PMP® Exam Preparation 35 PDU. Course ID: iPEP. Price $35.</a></p>\r\n\r\n<p style="text-align: center; "><img alt="35 contact hours vs. 35 PDUs which one is the best choise for PMP Exam Prep" src="/public/images/articles/PMP-Exam-Prep-Online-35-PDU-lowest-price.jpg" /></p>\r\n\r\n<p>Beside the course of 35 PDUs, Stevbros also provides online course for PMP® Certificate Renewal 60 PDUs and PMP® Mock Test:</p>\r\n\r\n<p><a href="http://www.stevbros.com/project-management-training/60-pdus-renew-pmp-certificate-after-every-3-years-lowest-price.html" style="margin: 0px; padding: 0px; color: rgb(13, 96, 134); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 22px; text-align: justify; ">+ Renew PMP® Certificate 60 PDUs course</a><span style="color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 22px; text-align: justify; ">: This course is designed for PMP® who want to refresh PMBOK and earn 60 PDUs to renew PMP® certificate. After this course, you will earn a certificate of 60 PDUs to keep your PMP® certificate in good standing.</span><a href="http://www.stevbros.com/project-management-training/60-pdus-renew-pmp-certificate-after-every-3-years-lowest-price.html" style="margin: 0px; padding: 0px; color: rgb(51, 141, 183); text-decoration: none; font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 22px; text-align: justify; ">&nbsp;Please access here for course details!</a></p>\r\n\r\n<p><a href="http://www.stevbros.com/project-management-training/pmp-mock-tests-simulating-the-real-pmp-exam.html" style="margin: 0px; padding: 0px; color: rgb(13, 96, 134); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 22px; text-align: justify; ">+ PMP® Exam Mock Tests course</a><span style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 22px; text-align: justify; ">: This course is designed for project managers who would like to practice&nbsp;PMP® mock tests to gain confidence before taking the real test. It&nbsp;includes&nbsp;4 mock tests (800 questions) simulating PMP® real exam and&nbsp;PMBOK 5th edition aligned.&nbsp;</span><a href="http://www.stevbros.com/project-management-training/pmp-mock-tests-simulating-the-real-pmp-exam.html" style="margin: 0px; padding: 0px; color: rgb(51, 141, 183); text-decoration: none; font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 22px; text-align: justify; ">Please access here for course details!</a></p>\r\n\r\n<div id="view_post" style="margin: 0px; padding: 0px; clear: both; line-height: 22px; list-style: none; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13px; ">\r\n<div id="view_post" style="margin: 0px; padding: 0px; clear: both; list-style: none; ">\r\n<p style="margin: 10px 0px; padding: 0px; text-align: center; "><em style="margin: 0px; padding: 0px; ">Access&nbsp;<a href="http://www.stevbros.com/project-management-training/" style="margin: 0px; padding: 0px; color: rgb(51, 141, 183); text-decoration: none; ">blog of project management training&nbsp;here!</a></em></p>\r\n</div>\r\n</div>\r\n', '2013-10-11 20:05:09', '2013-10-11 20:09:48', 1, '35 contact hours vs. 35 PDUs, which one is the best choice for PMP® Exam Prep', 0, NULL, ',15,18,', 'phuong', 'phuong', 0),
(24, 'Emotional Intelligence for Project Managers Course', 'emotional-intelligence-for-project-managers-course', 'emotional-intelligence-project-management(1).jpg', 'Duration: 2 days. Who should attend: Project Managers, Team Leads, Program Managers, PMO Staff, Technical Leads, QA Leads, QC Leads, BA Leads.', '<h2><span style="color:#FF0000;">Duration: 2&nbsp;days</span></h2>\r\n\r\n<h2>Who should attend: Project Managers, Team Leads, Program Managers, PMO Staff, Technical Leads, QA Leads, QC Leads, BA Leads.</h2>\r\n\r\n<p style="text-align: center; "><img alt="Emotional Intelligence for Project Managers" src="/public/images/articles/emotional-intelligence-project-management(1).jpg" style="width: 500px; height: 292px; " /></p>\r\n\r\n<p>Project management is getting work done through people. To effectively lead project team, build a strong relationship with project stakeholders, and archive the goals of the projects successfully, project managers need to learn, develop and apply Emotional Intelligence. It helps them recognize and regulate emotions in themselves and in others.</p>\r\n\r\n<p>After this course, you will know:</p>\r\n\r\n<ul>\r\n	<li style="margin-left: 40px; ">The lasted update of researches about Emotional Intelligence for Project Manager sponsored by PMI in recent years.</li>\r\n	<li style="margin-left: 40px; ">4 domains of Goleman Emotional Intelligence Framework</li>\r\n	<li style="margin-left: 40px; ">5 domains of Mersino Emotional Intelligence Framework for project managers.</li>\r\n	<li style="margin-left: 40px; ">The application of Emotional Intelligence in 10 project management knowledge areas</li>\r\n	<li style="margin-left: 40px; ">The application of Emotional Intelligence in project team development, project team motivation, project conflict handling and problem solving.</li>\r\n	<li style="margin-left: 40px; ">The application of Emotional Intelligence in project stakeholders management, communication management and project negotiation.</li>\r\n</ul>\r\n\r\n<h3 style="text-align: center; "><img alt="Emotional Intelligence for Project Managers" src="/public/images/articles/emotional-intelligence-for-project-manager.jpg" style="width: 500px; height: 343px; " /></h3>\r\n\r\n<h3>Content:</h3>\r\n\r\n<ul>\r\n	<li style="margin-left: 40px; ">An Introduction to Emotional Intelligence</li>\r\n	<li style="margin-left: 40px; ">Self-awareness</li>\r\n	<li style="margin-left: 40px; ">Self-management</li>\r\n	<li style="margin-left: 40px; ">Social awareness</li>\r\n	<li style="margin-left: 40px; ">Relationship management</li>\r\n	<li style="margin-left: 40px; ">Team leadership</li>\r\n</ul>\r\n\r\n<p style="margin-left: 40px; text-align: center; "><em style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 22px; text-align: center; ">Access&nbsp;<a href="http://www.stevbros.com/project-management-training/" style="margin: 0px; padding: 0px; color: rgb(51, 141, 183); text-decoration: none; ">blog of project management training&nbsp;here!</a></em></p>\r\n', '2013-08-03 11:39:10', '2013-08-03 11:47:39', 1, 'Emotional Intelligence for Project Managers Course', 0, NULL, ',4,16,', 'phuong', 'phuong', 0),
(20, 'PMP® Exam Prep 35 PDUs lowest price', 'pmp-exam-prep-35-pdus-lowest-price', 'PMP-Exam-Prep-Online-35-PDU-lowest-price.jpg', 'Are you looking for an online training course to solidify your project management skills and knowledge? Are you looking for an online PMP® exam preparation course? Are you looking for PMP® exam preparation quizzes to identify gaps in your knowledge that may hurt you on the exam? Are you looking for a certificate of 35 PDUs to apply for PMP® exam?', '<p style="text-align: center;"><a href="http://www.stevbros.com/payment/pmp-exam-prep-35-pdus-lowest-price.html"><img alt="ENROLL AND PAY" src="/public/images/ENROLL-AND-PAY.jpg" style="width: 226px; height: 42px;" /></a></p>\r\n\r\n<h2>Are you looking for an online training course to solidify your project management skills and knowledge? Are you looking for an online PMP® exam preparation course? Are you looking for PMP® exam preparation quizzes to identify gaps in your knowledge that may hurt you on the exam? Are you looking for a certificate of 35 PDUs to apply for PMP® exam?</h2>\r\n\r\n<p><strong>Stevbros</strong> provide the following online course to meet all your needs:</p>\r\n\r\n<p style="text-align: center; "><img alt="PMP® Exam Prep 35 PDUs lowest price" src="/public/images/articles/PMP-Exam-Prep-Online-35-PDU-lowest-price.jpg" style="width: 599px; height: 345px; " /></p>\r\n\r\n<p style="text-align: center; "><em><span style="font-size: 13px; ">PMP® Exam Prep and 35 PDUs. Course ID: iPEP. Price $35</span></em></p>\r\n\r\n<p>This course is designed for project managers&nbsp;looking to solidify skills, stand out in career and obtain PMP® certificate. After this course, you will earn 35 PDUs pre-approved for 35 contact hours in fulfillment of the educational eligibility requirement of PMP® exam. This course is aligned to&nbsp;PMBOK 5th edition and includes:</p>\r\n\r\n<ul>\r\n	<li style="margin-left: 40px; ">Project management knowledge according to PMBOK 5<sup>th</sup> edition of Project Management Institute</li>\r\n	<li style="margin-left: 40px; ">Professional and social responsibility of project management</li>\r\n	<li style="margin-left: 40px; ">The lasted statistic, terms and heuristics in project management</li>\r\n	<li style="margin-left: 40px; ">260 questions for review in 13 chapter to help you be more comfortable with the types of questions you will see on the exam and utilize your personalized test taking strategy</li>\r\n</ul>\r\n\r\n<p style="text-align: center; "><img alt="" src="/public/images/articles/Stevbros-PMP-online-training.jpg" style="width: 600px; height: 293px; " /></p>\r\n\r\n<p style="margin: 10px 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 22px; ">The enrolment duration of this course is 3 months, however you will receive the certificate of 35&nbsp;PDUs to attend PMP® exam right after you finish the quizzes and lessons. It may takes you only one day or months, depending on your study plan. Good luck!</p>\r\n\r\n<h3>Course outline:</h3>\r\n\r\n<table border="1" cellpadding="0" cellspacing="0" width="491">\r\n	<tbody>\r\n		<tr>\r\n			<td style="width:450px;">\r\n			<p align="center"><strong>Theory</strong></p>\r\n			</td>\r\n			<td style="width:204px;">\r\n			<p align="center"><strong>Quizzes</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:450px;">\r\n			<p><strong>Chapter 1: Project management framework</strong></p>\r\n			</td>\r\n			<td style="width:204px;">\r\n			<p align="center">20 questions for review</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:450px;">\r\n			<p><strong>Chapter 2: 5 project management process groups</strong></p>\r\n			</td>\r\n			<td style="width:204px;">\r\n			<p align="center">20 questions for review</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:450px;">\r\n			<p><strong>Chapter 3: Project integration management</strong></p>\r\n			</td>\r\n			<td style="width:204px;">\r\n			<p align="center">20 questions for review</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:450px;">\r\n			<p><strong>Chapter 4: Project scope management</strong></p>\r\n			</td>\r\n			<td style="width:204px;">\r\n			<p align="center">20 questions for review</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:450px;">\r\n			<p><strong>Chapter 5: Project time management</strong></p>\r\n			</td>\r\n			<td style="width:204px;">\r\n			<p align="center">20 questions for review</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:450px;">\r\n			<p><strong>Chapter 6: Project cost management</strong></p>\r\n			</td>\r\n			<td style="width:204px;">\r\n			<p align="center">20 questions for review</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:450px;">\r\n			<p><strong>Chapter 7: Project quality management</strong></p>\r\n			</td>\r\n			<td style="width:204px;">\r\n			<p align="center">20 questions for review</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:450px;">\r\n			<p><strong>Chapter 8: Project communications management</strong></p>\r\n			</td>\r\n			<td style="width:204px;">\r\n			<p align="center">20 questions for review</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:450px;">\r\n			<p><strong>Chapter 9: Project human resource management</strong></p>\r\n			</td>\r\n			<td style="width:204px;">\r\n			<p align="center">20 questions for review</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:450px;">\r\n			<p><strong>Chapter 10: Project risk management</strong></p>\r\n			</td>\r\n			<td style="width:204px;">\r\n			<p align="center"><span style="font-size: 13px; text-align: -webkit-center; ">20 questions for review</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:450px;">\r\n			<p><strong>Chapter 11: Project procurement management</strong></p>\r\n			</td>\r\n			<td style="width:204px;">\r\n			<p align="center"><span style="font-size: 13px; text-align: -webkit-center; ">20 questions for review</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:450px;">\r\n			<p><strong>Chapter 12: Project stakeholder management</strong></p>\r\n			</td>\r\n			<td style="width:204px;">\r\n			<p align="center"><span style="font-size: 13px; text-align: -webkit-center; ">20 questions for review</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:450px;">\r\n			<p><strong>Chapter 13: Professional and social responsibilities</strong></p>\r\n			</td>\r\n			<td style="width:204px;">\r\n			<p align="center"><span style="font-size: 13px; text-align: -webkit-center; ">20 questions for review</span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<div id="view_post" style="margin: 0px; padding: 0px; clear: both; line-height: 22px; list-style: none; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13px; ">\r\n<p style="margin: 10px 0px; padding: 0px; text-align: center; "><em style="margin: 0px; padding: 0px; ">Access <a href="http://www.stevbros.com/project-management-training/">blog of project management training&nbsp;here!</a></em></p>\r\n\r\n<p style="margin: 10px 0px; padding: 0px; text-align: center; "><a href="http://www.stevbros.com/payment/pmp-exam-prep-35-pdus-lowest-price.html" style="font-size: 13px; text-align: center;"><img alt="ENROLL AND PAY" src="/public/images/ENROLL-AND-PAY.jpg" style="width: 226px; height: 42px;" /></a></p>\r\n</div>\r\n', '2013-08-03 06:57:38', '2013-08-03 19:23:32', 1, 'PMP® Exam Prep 35 PDUs lowest price', 0, NULL, ',15,18,', 'phuong', 'phuong', 0),
(21, 'PMP® Mock Tests simulating the real PMP® exam', 'pmp-mock-tests-simulating-the-real-pmp-exam', 'pmp-exam-simulation-test.jpg', 'You obtained certificate of 35 PDUs. You deeply understood project management knowledge according to PMBOK 5th edition of Project Management Institute. You are ready for PMP® exam. You need some mock tests to gain more confidence before attending your real PMP® exam.  ', '<h2 style="text-align: center; "><a href="http://www.stevbros.com/payment/pmp-mock-tests-simulating-the-real-pmp-exam.html"><img alt="" src="/public/images/ENROLL-AND-PAY.jpg" style="width: 226px; height: 42px; " /></a></h2>\r\n\r\n<h2>You obtained certificate of 35 PDUs. You deeply understood project management knowledge according to PMBOK 5<sup>th</sup> edition of Project Management Institute. You are ready for PMP® exam. You need some mock tests to gain more confidence before attending your real PMP® exam. &nbsp;</h2>\r\n\r\n<p>You can try 4 mock tests designed by <strong>Stevbros</strong>:</p>\r\n\r\n<p style="text-align: center; "><img alt="PMP® Mock Tests simulating the real PMP® exam" src="/public/images/articles/pmp-exam-simulation-test.jpg" style="width: 500px; height: 375px; " /></p>\r\n\r\n<p style="text-align: center; "><em><span style="font-size: 13px; ">PMP® Exam Mock Tests. Course ID: iPMT. Price: $35</span></em></p>\r\n\r\n<p>The <span style="font-size: 13px; ">PMP®</span> examination is comprised of 200 multiple-choice questions. Of the 200 questions, 25 are considered pretest questions. Pretest questions do not affect the score and are used in examinations as an effective and legitimate way to test the validity of future examination questions. To pass PMP® exam, you must answer correctly minimum 61% of scored questions. However, you should be good at risk management before attending the real PMP test and try to do 4 mock tests with minimum 80% correct answers. Enrolment duration of your account is 3 months, and you can try all mock test as much as you can. If you are not so confident with your score when doing the mock tests, you can refer to detailed explanation of 260 quizzes at the course:&nbsp;<a href="http://www.stevbros.com/project-management-training/pmp-exam-prep-35-pdus-lowest-price.html">PMP® Exam Prep and 35 PDUs. Course ID: iPEP. Price: $35</a></p>\r\n\r\n<p style="text-align: center; "><img alt="PMP® Mock Tests simulating the real PMP® exam" src="/public/images/articles/pmp-mock-test-simulation-test.jpg" style="width: 500px; height: 471px; " /></p>\r\n\r\n<p>All mock tests on Stevbros’ Online Training System are simulating the real PMP® test and you must finish each test within 4 hours. Before taking the mock tests, you should be well prepared. For example, you should draw by yourself the table of 47 project management processes and write PMP® Exam Checklist including all important formulas, terms, heuristic (rule of thumbs). The table of 47 processes and PMP® Exam Checklist are reference materials of this course and you can download right after you have account.</p>\r\n\r\n<p>This course comprises of 4 mock tests, each test has 200 questions, i.e. you will practice with 800 questions. Good luck!</p>\r\n\r\n<p style="text-align: center; "><em style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 22px; text-align: center; ">Access&nbsp;<a href="http://www.stevbros.com/project-management-training/" style="margin: 0px; padding: 0px; color: rgb(51, 141, 183); text-decoration: none; ">blog of project management training&nbsp;here!</a></em></p>\r\n\r\n<p style="text-align: center; "><em style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 22px; text-align: center; "><a href="http://www.stevbros.com/payment/pmp-mock-tests-simulating-the-real-pmp-exam.html"><img alt="" src="/public/images/ENROLL-AND-PAY.jpg" style="width: 226px; height: 42px; " /></a></em></p>\r\n', '2013-08-03 09:13:41', '2013-08-03 19:13:19', 1, 'PMP® Mock Tests simulating the real PMP® exam', 0, NULL, ',15,18,', 'phuong', 'phuong', 0),
(22, '60 PDUs Renew PMP® Certificate after every 3 years lowest price ', '60-pdus-renew-pmp-certificate-after-every-3-years-lowest-price', '60-pdu-renew-pmp.jpg', 'Is your PMP® certificate going to expired? Are you looking for a certificate of 60 PDUs from a Registered Education Provider (R.E.P) of Project Management Institute (PMI) to renew your PMP® certificate? Do you need the lasted update of PMBOK 5th edition because you obtain PMP® certificate with PMBOK 4th edition? Do you need the lasted update of researches sponsored by PMI?', '<p style="text-align: center;"><a href="http://www.stevbros.com/payment/60-pdus-renew-pmp-certificate-after-every-3-years-lowest-price.html"><img alt="Enroll and Pay" src="/public/images/ENROLL-AND-PAY.jpg" style="width: 226px; height: 42px;" /></a></p>\r\n\r\n<h2>Is your PMP® certificate going to expired? Are you looking for a certificate of 60 PDUs from a Registered Education Provider (R.E.P) of Project Management Institute (PMI) to renew your PMP® certificate? Do you want to know the lasted update of PMBOK 5<sup>th</sup> edition? Do you want to know the lasted update of researches sponsored by PMI?</h2>\r\n\r\n<p><strong>Stevbros</strong> provides the following course to meet all your needs:</p>\r\n\r\n<p style="text-align: center; "><img alt="60 PDUs Renew PMP® Certificate after every 3 years lowest price" src="/public/images/articles/60-pdu-renew-pmp.jpg" style="width: 500px; height: 530px; " /></p>\r\n\r\n<p style="text-align: center; "><em><span style="font-size: 13px; ">60 PDUs Renew PMP® Certificate. Course ID: iRPC. Price: $60</span></em></p>\r\n\r\n<p>This course is designed for PMP® who want to refresh PMBOK and earn 60 PDUs to renew PMP® certificate. After this course, you will earn a certificate of 60 PDUs to keep your PMP® certificate in good standing. This course includes:</p>\r\n\r\n<p style="margin-left:.5in;">•&nbsp;&nbsp;&nbsp; . Part 1: PMBOK 5th Refresh</p>\r\n\r\n<p style="text-align: center; ">PMP® of-course understands PMBOK. In this section, you will be shared the updates of PMBOK 5th edition releasing on Jan 2013. This section will help you refresh PMBOK and master PMBOK 5th edition.<br />\r\n<img alt="60 PDUs Renew PMP® Certificate after every 3 years lowest price!" src="/public/images/articles/Stevbros-PMP-online-training.jpg" style="width: 600px; height: 293px; " /></p>\r\n\r\n<p style="margin-left:.5in;">•&nbsp;&nbsp;&nbsp; . Part 2: Emotional Intelligence for Project Managers</p>\r\n\r\n<p>Mastering PMBOK is the prerequisite for the success of project managers. But in order to advance their career, project managers need strong interpersonal skills. Emotional Intelligence provides the frameworks for those interpersonal skills, and help project managers&nbsp;recognize and regulate emotions in themselves and in others.&nbsp;In this section, you will understand emotional competencies, understand how emotional competencies affect to project communications, project human resource management, and stakeholder management.</p>\r\n\r\n<p>The enrolment duration of this course is 3 months, however you will receive the certificate of 60 PDUs to keep your&nbsp;PMP® in good standing right after you finish the quizzes and lessons. It may takes you only few days or months, depending on your study plan. Good luck!</p>\r\n\r\n<p style="text-align: center; "><em style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 22px; text-align: center; ">Access&nbsp;<a href="http://www.stevbros.com/project-management-training/" style="margin: 0px; padding: 0px; color: rgb(51, 141, 183); text-decoration: none; ">blog of project management training&nbsp;here!</a></em></p>\r\n\r\n<p style="text-align: center; "><a href="http://www.stevbros.com/payment/60-pdus-renew-pmp-certificate-after-every-3-years-lowest-price.html" style="font-size: 13px; text-align: center;"><img alt="Enroll and Pay" src="/public/images/ENROLL-AND-PAY.jpg" style="width: 226px; height: 42px;" /></a></p>\r\n', '2013-08-03 09:28:57', '2013-08-03 19:21:19', 1, '60 PDUs Renew PMP® Certificate after every 3 years lowest price ', 0, NULL, ',15,18,', 'phuong', 'phuong', 0);
INSERT INTO `info` (`id`, `name`, `name_rewrite`, `url_hinh`, `description`, `content`, `date_create`, `date_update`, `status`, `metaKeyword`, `other`, `lang`, `menu_id`, `user_create`, `user_update`, `delete`) VALUES
(23, 'Online PMP® Exam Prep 35 PDUs, Online PMP® Exam Mock Tests, Online 60 PDUs PMP® Cert Renewal', 'online-courses-online-pdus', 'project-management-online-training-course-online-pdu.jpg', 'Stevbros’ Online Training System provides PMP® Exam Preparation 35 PDUs course, PMP® Exam Mock Tests course, and Renew PMP® Certificate 60 PDUs course globally with most competitive price. As a PMI Registered Education Provider (R.E.P.), Stevbros has agreed to abide by PMI® established quality assurance criteria.', '<h2>Stevbros’ Online Training System provides PMP® Exam Preparation 35 PDUs course, PMP® Exam Mock Tests course, and Renew PMP® Certificate 60 PDUs course globally with most competitive price. As a PMI Registered Education Provider (R.E.P.), Stevbros has agreed to abide by PMI® established quality assurance criteria.</h2>\r\n\r\n<div>\r\n<p style="font-size: 13px; text-align: center; "><a href="http://stevbros.com/payment"><img alt="Online PDU, online project management courses for PMP at lowest price, most effective, and quick way to earn PDUs" src="/public/images/articles/Stevbros-PMP-online-training.jpg" style="width: 600px; height: 293px; " /></a></p>\r\n\r\n<p style="font-size: 13px; text-align: center; "><em>Stevbros PMI R.E.P 3807&nbsp;provides online courses at lowest price and easiest way to earn PDUs&nbsp;</em></p>\r\n</div>\r\n\r\n<p><a href="http://www.stevbros.com/project-management-training/pmp-exam-prep-35-pdus-lowest-price.html" style="text-align: justify; ">+ PMP® Exam Preparation 35 PDUs course</a><span style="text-align: justify; ">: This course is designed for project managers&nbsp;looking to solidify skills, stand out in career and obtain PMP® certificate. After this course, you will earn 35 PDUs pre-approved for 35 contact hours in fulfillment of the educational eligibility requirement of PMP® exam. </span><a href="http://www.stevbros.com/project-management-training/pmp-exam-prep-35-pdus-lowest-price.html" style="text-align: justify; ">Please access here for course details!</a></p>\r\n\r\n<p style="text-align: justify; "><a href="http://www.stevbros.com/project-management-training/60-pdus-renew-pmp-certificate-after-every-3-years-lowest-price.html">+ Renew PMP® Certificate 60 PDUs course</a>: This course is designed for PMP® who want to refresh PMBOK and earn 60 PDUs to renew PMP® certificate. After this course, you will earn a certificate of 60 PDUs to keep your PMP® certificate in good standing.<a href="http://www.stevbros.com/project-management-training/60-pdus-renew-pmp-certificate-after-every-3-years-lowest-price.html">&nbsp;Please access here for course details!</a></p>\r\n\r\n<p style="font-size: 13px; text-align: center; "><img alt="Online PMP courses at lowest price, most effective, and quick way to earn PDUs" src="/public/images/articles/project-management-online-training-course-online-pdu.jpg" style="width: 500px; height: 429px; " /></p>\r\n\r\n<p style="font-size: 13px; text-align: center; "><em>Online courses at Stevbros PMI R.E.P 3807</em></p>\r\n\r\n<p style="text-align: justify; "><a href="http://www.stevbros.com/project-management-training/pmp-mock-tests-simulating-the-real-pmp-exam.html" style="font-size: 13px; text-align: justify; ">+ PMP® Exam Mock Tests course</a><span style="font-size: 13px; text-align: justify; ">: This course is designed for project managers who would like to practice&nbsp;PMP® mock tests to gain confidence before taking the real test. It&nbsp;includes&nbsp;4 mock tests (800 questions) simulating PMP® real exam and&nbsp;PMBOK 5th edition aligned.&nbsp;</span><a href="http://www.stevbros.com/project-management-training/pmp-mock-tests-simulating-the-real-pmp-exam.html" style="font-size: 13px; text-align: justify; ">Please access here for course details!</a></p>\r\n\r\n<p style="text-align: center; "><em style="margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 22px; text-align: center; ">Access&nbsp;<a href="http://www.stevbros.com/project-management-training/" style="margin: 0px; padding: 0px; color: rgb(51, 141, 183); text-decoration: none; ">blog of project management training&nbsp;here!</a></em></p>\r\n', '2013-08-03 09:50:22', '2013-08-03 05:20:26', 1, 'Online Courses, Online PDUs', 0, NULL, ',6,', 'phuong', 'phuong', 0);

-- --------------------------------------------------------

--
-- Table structure for table `info_comment`
--

CREATE TABLE IF NOT EXISTS `info_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_create` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `content` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` tinyint(1) DEFAULT '0',
  `info_alias` varchar(200) NOT NULL,
  `user_create` varchar(20) DEFAULT NULL,
  `user_update` varchar(20) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `info_comment`
--

INSERT INTO `info_comment` (`id`, `date_create`, `date_update`, `content`, `email`, `name`, `status`, `info_alias`, `user_create`, `user_update`, `delete`) VALUES
(2, '2013-08-26 19:01:20', '2013-08-26 19:01:20', 'Is chapter 11 the same with chapter 12...thks.', 'arihasto@yahoo.com', 'ari hasto', 1, 'pmp-exam-prep-35-pdus-lowest-price', 'khachhang', '', 0),
(3, '2013-09-04 22:43:54', '2013-09-04 22:43:54', 'Thanks Ari Hasto for your comment. That was fixed!', 'training@stevbros.com', 'Stevbros Training', 1, 'pmp-exam-prep-35-pdus-lowest-price', 'khachhang', '', 0),
(4, '2013-09-04 22:49:46', '2013-09-04 22:49:46', 'Dear Stevbros Training,\nI appreciate your training courses because of contributions to people which are going to take an PMP exam.\nThank you very much.\nBest regards,\nNhan.', 'truonghoangthiennhan@gmail.com', 'Truong Hoang Thien Nhan', 1, 'pmp-exam-prep-35-pdus-lowest-price', 'khachhang', '', 0),
(5, '2013-09-04 23:14:02', '2013-09-04 23:14:02', 'This course is excellent,thanks for Stevbros''s professional supports during whole the course.', 'tanhao.lee@gmail.com', 'Harry Lee', 1, '60-pdus-renew-pmp-certificate-after-every-3-years-lowest-price', 'khachhang', '', 0),
(6, '2013-09-17 08:46:32', '2013-09-17 08:46:32', 'Thank you for the help you gave me in the way of the PMP exam and your great activity. I will for sure comeback to your company at least for the 60 PDU course.', 'czbox@free.fr', 'Claude Zensz', 1, 'pmp-exam-prep-35-pdus-lowest-price', 'khachhang', '', 0),
(7, '2013-09-17 08:50:00', '2013-09-17 08:50:00', 'Thanks for timely help. I renewed the its back to good standing.', 'venkatrch@yahoo.com', 'Venky Vasant', 1, '60-pdus-renew-pmp-certificate-after-every-3-years-lowest-price', 'khachhang', '', 0),
(8, '2013-09-17 22:06:49', '2013-09-17 22:06:49', 'I would to express my thankful on your help so far.\nIt''s my pleasure to join Stevbros''s online training course for 35.PDUs\nWish you healthy, successful and prosperous!', 'tank.rover@gmail.com', 'Tank Rover', 1, 'pmp-exam-prep-35-pdus-lowest-price', 'khachhang', '', 0),
(9, '2013-09-17 22:06:51', '2013-09-17 22:06:51', 'I would to express my thankful on your help so far.\nIt''s my pleasure to join Stevbros''s online training course for 35.PDUs\nWish you healthy, successful and prosperous!', 'tank.rover@gmail.com', 'Tank Rover', 1, 'pmp-exam-prep-35-pdus-lowest-price', 'khachhang', 'phuong', 1);

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE IF NOT EXISTS `language` (
  `idLang` int(3) NOT NULL AUTO_INCREMENT,
  `MoTa` varchar(20) NOT NULL,
  `file` varchar(10) NOT NULL,
  `ThuTu` int(3) DEFAULT '0',
  `AnHien` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`idLang`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`idLang`, `MoTa`, `file`, `ThuTu`, `AnHien`) VALUES
(1, 'Việt Nam', 'vi', 0, 1),
(2, 'English', 'en', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `name_rewrite` varchar(100) NOT NULL,
  `url` varchar(150) NOT NULL,
  `url_hinh` varchar(150) DEFAULT NULL,
  `date_create` datetime NOT NULL,
  `date_update` datetime DEFAULT NULL,
  `parent_id` int(3) DEFAULT '0',
  `order` int(3) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  `title` varchar(200) DEFAULT NULL,
  `metaDescription` varchar(250) DEFAULT NULL,
  `metaKeyword` varchar(150) DEFAULT NULL,
  `other` tinyint(1) DEFAULT '0',
  `lang` varchar(3) DEFAULT NULL,
  `type_id` int(1) DEFAULT NULL,
  `position_id` varchar(10) DEFAULT NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_rewrite` (`name_rewrite`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `name_rewrite`, `url`, `url_hinh`, `date_create`, `date_update`, `parent_id`, `order`, `status`, `title`, `metaDescription`, `metaKeyword`, `other`, `lang`, `type_id`, `position_id`, `user_create`, `user_update`, `delete`) VALUES
(1, 'Home', 'home', 'http://www.stevbros.com', '', '2012-12-01 00:00:00', '2012-12-01 23:05:33', 0, 1, 1, 'Project Management Training, Study in Singapore-USA', 'Project Management Training, Study in Singapore-USA', 'Project Management Training, Study in Singapore-USA', 0, 'vi', 1, ',1,', 'admin', 'admin', 0),
(2, 'About us', 'about-us', 'about-us/', '', '2013-03-03 00:17:00', '2013-03-03 08:00:02', 0, 2, 1, 'About us', 'About us', 'About us', 0, 'vi', 2, ',1,', 'admin', '', 0),
(3, 'Contact', 'contact', 'contact/', '', '2013-03-03 00:17:00', '2013-03-03 15:22:29', 0, 3, 1, 'Contact', 'Contact', 'Contact', 0, 'vi', 7, ',1,', 'admin', '', 0),
(4, 'In-house Training Courses', 'courses-and-certificates', 'courses-and-certificates/', '', '2013-06-20 15:23:46', '2013-06-20 02:46:27', 0, 4, 1, 'In-house Training Courses and Certificates', 'Courses and Certificates', 'Courses and Certificates', 0, NULL, 2, ',2,', 'admin', 'phuong', 0),
(5, 'Competency Assessment', 'competency-assessment', 'competency-assessment/', '', '2013-06-20 15:24:52', '2013-06-20 14:13:28', 0, 5, 1, 'Competency Assessment', 'Competency Assessment', 'Competency Assessment', 0, NULL, 2, ',2,', 'admin', NULL, 0),
(6, 'Online Courses Online PDUs', 'online-courses-online-pdus', 'online-courses-online-pdus/', '', '2013-06-20 15:25:15', '2013-06-20 11:11:53', 0, 6, 1, 'Online Courses, Online PDUs', 'Online Project Management Training Courses, Online PDUs', 'Online Courses, Online PDUs', 0, NULL, 2, ',2,', 'admin', 'phuong', 0),
(7, 'Project Finance', 'project-finance', 'project-finance/', '', '2013-06-20 15:25:31', '2013-06-20 15:25:31', 0, 7, 0, 'Project Finance', 'Project Finance', 'Project Finance', 0, NULL, 2, ',2,', 'admin', 'admin', 0),
(8, 'Softskills for Project Managers', 'softskills-for-project-managers', 'softskills-for-project-managers/', '', '2013-06-20 15:25:49', '2013-06-20 15:25:49', 0, 8, 0, 'Softskills for Project Managers', 'Softskills for Project Managers', 'Softskills for Project Managers', 0, NULL, 2, ',2,', 'admin', 'admin', 0),
(9, 'Study in Singapore/USA', 'study-in-singapore-usa', 'study-in-singapore-usa/', '', '2013-06-20 15:26:11', '2013-06-20 15:26:11', 0, 9, 1, 'Study in Singapore/USA', 'Study in Singapore/USA', 'Study in Singapore/USA', 0, NULL, 2, ',2,', 'admin', NULL, 0),
(10, 'Facebook', 'facebook', 'http://www.facebook.com/pages/Stevbros-Training-Consultancy/111112242381308', 'social_face.gif', '2013-06-20 15:36:13', '2013-06-20 17:47:50', 0, 30, 1, 'Facebook', 'Facebook', 'Facebook', 0, NULL, 1, ',6,', 'admin', NULL, 0),
(11, 'Linkedin', 'linkedin', 'http://www.linkedin.com/company/stevbros-training', 'social_linkedin.gif', '2013-06-20 15:38:48', '2013-06-20 17:48:23', 0, 31, 1, 'Linkedin', 'Linkedin', 'Linkedin', 0, NULL, 1, ',6,', 'admin', NULL, 0),
(12, 'Twitter', 'twitter', 'https://twitter.com/stevbros', 'social_twitter.gif', '2013-06-20 15:39:04', '2013-06-20 17:48:39', 0, 32, 1, 'Twitter', 'Twitter', 'Twitter', 0, NULL, 1, ',6,', 'admin', NULL, 0),
(13, 'Slideshare', 'slideshare', 'http://www.slideshare.net/stevbros', 'social_slideshare.gif', '2013-06-20 15:39:25', '2013-06-20 17:48:48', 0, 33, 1, 'Slideshare', 'Slideshare', 'Slideshare', 0, NULL, 1, ',6,', 'admin', NULL, 0),
(14, 'Youtube', 'youtube', 'http://www.youtube.com/stevbrostraining', 'social_youtube.gif', '2013-06-20 15:39:40', '2013-06-20 17:48:58', 0, 33, 1, 'Youtube', 'Youtube', 'Youtube', 0, NULL, 1, ',6,', 'admin', NULL, 0),
(15, 'Blog', 'blog', 'blog/', '', '2013-06-22 11:24:20', '2013-06-22 09:07:51', 0, 2, 1, 'Blog', 'Blog', 'Blog', 0, NULL, 2, ',1,4,5,', 'admin', NULL, 0),
(16, 'Popular In-house Courses', 'popular-in-house-courses', 'popular-in-house-courses/', '', '2013-06-22 11:57:48', '2013-06-22 09:07:47', 0, 11, 1, 'Popular In-house Courses', 'Popular In-house Courses', 'Popular In-house Courses', 0, NULL, 2, '', 'admin', NULL, 0),
(17, 'Popular Online Courses', 'popular-online-courses', 'popular-online-courses/', '', '2013-06-22 11:58:04', '2013-06-22 11:58:04', 0, 12, 1, 'Popular Online Courses', 'Popular Online Courses', 'Popular Online Courses', 0, NULL, 2, '', 'admin', NULL, 0),
(18, 'Project Management Training', 'project-management-training', 'project-management-training/', '', '2013-06-24 09:08:48', '2013-06-24 20:34:20', 15, 20, 1, 'Project Management Training', 'Project Management Training, PMP® Exam Prep 35 PDUs lowest price, 60 PDUs Renew PMP® Certificate after every 3 years lowest price', 'Project Management Training', 0, NULL, 2, ',1,5,', 'admin', 'phuong', 0),
(19, 'Study in Singapore/USA', 'study-in-singapore', 'study-in-singapore/', '', '2013-06-24 09:09:09', '2013-06-24 20:32:52', 15, 21, 1, 'Study in Singapore', 'Study in Singapore, Visa to study in USA', 'Study in Singapore', 0, NULL, 2, ',1,5,', 'admin', 'phuong', 0),
(20, 'Investment in Singapore/VN', 'investment-in-singapore-vn', 'investment-in-singapore-vn/', '', '2013-06-24 09:09:31', '2013-06-24 20:33:06', 15, 22, 0, 'Investment in Singapore/VN', 'Support Startups and SME run business in Vietnam and Singapore', 'Investment in Singapore/VN', 0, NULL, 2, ',1,5,', 'admin', 'phuong', 0),
(21, 'Public course schedule', 'public-course-schedule', 'public-course-schedule/', '', '2013-07-02 10:32:52', '2013-07-02 10:32:52', 0, 13, 1, 'Public course schedule', 'Public course schedule', 'Public course schedule', 0, NULL, 2, '', 'admin', NULL, 0),
(22, 'Competence Assessment', 'competence-assessment', 'competence-assessment/', '', '2013-07-03 02:24:52', '2013-07-03 20:32:59', 15, 23, 1, 'Competence Assessment', 'Project Management Competence Management', 'Competence Assessment', 0, NULL, 2, ',1,5,', 'admin', 'phuong', 0),
(23, 'Payment', 'payment', 'payment/', '', '2013-08-14 23:35:36', '2013-08-14 23:35:36', 0, 0, 1, 'Payment', 'Payment', 'Payment', 0, NULL, 4, '', 'admin', NULL, 0),
(24, 'Payment info', 'payment-info', 'payment-info/', '', '2013-08-14 23:35:56', '2013-08-14 23:35:56', 23, 0, 1, 'Payment info', 'Payment info', 'Payment info', 0, NULL, 4, '', 'admin', NULL, 0),
(25, 'Payment form', 'payment-form', 'payment-form/', '', '2013-08-14 23:36:14', '2013-08-14 23:36:14', 23, 0, 1, 'Payment form', 'Payment form', 'Payment form', 0, NULL, 4, '', 'admin', NULL, 0),
(26, 'Payment error', 'payment-error', 'payment-error/', '', '2013-08-14 23:36:28', '2013-08-14 23:36:28', 23, 0, 1, 'Payment error', 'Payment error', 'Payment error', 0, NULL, 4, '', 'admin', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `menu_admin`
--

CREATE TABLE IF NOT EXISTS `menu_admin` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `url` varchar(150) NOT NULL,
  `url_hinh` varchar(150) DEFAULT NULL,
  `order` int(3) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  `delete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `menu_admin`
--

INSERT INTO `menu_admin` (`id`, `name`, `url`, `url_hinh`, `order`, `status`, `delete`) VALUES
(1, 'Trang chủ', 'home', NULL, 0, 1, 0),
(2, 'Cấu hình website', 'config', NULL, 0, 1, 0),
(3, 'Menu', 'menu', NULL, 0, 1, 0),
(4, 'Thông tin, bài viết', 'info', NULL, 0, 1, 0),
(5, 'Thông tin, bài viết bình luận', 'info_comment', NULL, 0, 1, 0),
(6, 'Sản phẩm', 'product', NULL, 0, 0, 1),
(7, 'Danh sách sản phẩm', 'thanhtoan_sanpham', NULL, 1, 1, 0),
(8, 'Danh sách ngân hàng', 'thanhtoan_nganhang', '', 2, 1, 0),
(9, 'Danh sách khách hàng', 'thanhtoan_khachhang', NULL, 3, 1, 0),
(10, 'Danh sách lỗi thanh toán', 'thanhtoan_error', NULL, 4, 1, 0),
(11, 'Hình ảnh', 'photo_gallery', NULL, 0, 0, 0),
(12, 'Slider', 'slider_banner', NULL, 0, 1, 0),
(13, 'Contact', 'contact', NULL, 0, 1, 0),
(14, 'Video comment', 'video_comment', NULL, 0, 0, 1),
(15, 'Tài khoản', 'users', NULL, 10, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `menu_position`
--

CREATE TABLE IF NOT EXISTS `menu_position` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `delete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `menu_position`
--

INSERT INTO `menu_position` (`id`, `name`, `delete`) VALUES
(1, 'Top', 0),
(2, 'Main', 0),
(3, 'Left', 1),
(4, 'Right', 0),
(5, 'Bottom', 0),
(6, 'Social', 0);

-- --------------------------------------------------------

--
-- Table structure for table `menu_type`
--

CREATE TABLE IF NOT EXISTS `menu_type` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `delete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `menu_type`
--

INSERT INTO `menu_type` (`id`, `name`, `delete`) VALUES
(1, 'No', 0),
(2, 'Information and articles', 0),
(3, 'Product', 0),
(4, 'Thanh toán', 0),
(5, 'Hỏi đáp', 1),
(6, 'Video', 1),
(7, 'Contact', 0);

-- --------------------------------------------------------

--
-- Table structure for table `slider_banner`
--

CREATE TABLE IF NOT EXISTS `slider_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `url_hinh` varchar(150) DEFAULT NULL,
  `link` varchar(250) DEFAULT NULL,
  `info` varchar(250) NOT NULL,
  `date_create` datetime NOT NULL,
  `date_update` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `lang` varchar(3) DEFAULT NULL,
  `position_id` int(1) DEFAULT NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `slider_banner`
--

INSERT INTO `slider_banner` (`id`, `name`, `url_hinh`, `link`, `info`, `date_create`, `date_update`, `status`, `lang`, `position_id`, `user_create`, `user_update`, `delete`) VALUES
(1, 'In-house Training', 'slider.jpg', 'javascript:;', '<p>Provides in-house training courses of&nbsp;PMP® Exam Preparation, Project Management Skills aligned to PMBOK 5th edition, Emotional Intelligence for project managers,... to enterprises in ASIA</p>\r\n', '2013-04-19 01:45:53', '2013-04-19 10:34:32', 1, NULL, 1, 'admin', 'phuong', 0),
(2, 'Study in Singapore / USA', 'slider2.jpg', 'javascript:;', '<p>Provides effective solutions designed to help our clients choose right field of study, right school, shorten their study, shorten their stay</p>\r\n', '2013-06-13 15:52:33', '2013-06-13 10:34:24', 1, NULL, 1, 'admin', 'phuong', 0),
(3, 'NUS', 'doi-tac-1.jpg', 'http://www.nus.edu.sg', '', '2013-06-13 16:19:35', '2013-06-13 09:20:30', 1, NULL, 3, 'admin', 'admin', 0),
(4, 'EASB East Asia Institute of Management HomePage', 'easb.jpg', 'http://www.easb.edu.sg', '', '2013-06-13 16:19:38', '2013-06-13 03:23:21', 1, NULL, 3, 'admin', 'admin', 0),
(5, 'LASALLE College of the Arts', 'doi-tac-3.jpg', 'http://www.lasalle.edu.sg', '', '2013-06-13 16:19:41', '2013-06-13 09:22:47', 1, NULL, 3, 'admin', 'admin', 0),
(6, 'Undergraduate and Postgraduate Degrees from James Cook University - JCU', 'doi-tac-4.jpg', 'http://www.jcu.edu.sg', '', '2013-06-13 16:19:44', '2013-06-13 09:22:17', 1, NULL, 3, 'admin', 'admin', 0),
(7, 'Singapore Management University (SMU) - Singapore Management University', 'doi-tac-5.jpg', 'http://www.smu.edu.sg', '', '2013-06-13 16:19:48', '2013-06-13 09:23:42', 1, NULL, 3, 'admin', 'admin', 0),
(8, 'The courses accept online payment', 'thanh-toan-qua-mang.jpg', 'http://www.stevbros.com/payment/', '', '2013-06-22 11:36:04', '2013-06-22 01:15:16', 1, NULL, 2, 'admin', NULL, 0),
(9, 'PMP® Exam Prep - 35 PDUs', '1.jpg', 'http://www.stevbros.com/project-management-training/pmp-exam-prep-35-pdus-lowest-price.html', '', '2013-07-02 09:20:40', '2013-07-02 09:30:06', 1, NULL, 4, 'admin', 'phuong', 0),
(10, 'PMP® Exam Mock Tests Pass for sure', '12.jpg', 'http://www.stevbros.com/project-management-training/pmp-mock-tests-simulating-the-real-pmp-exam.html', '', '2013-07-02 09:22:37', '2013-07-01 09:30:46', 1, NULL, 4, 'admin', 'phuong', 0),
(11, 'Renew PMP® Certificate 60 PDUs  ', '13.jpg', 'http://www.stevbros.com/project-management-training/60-pdus-renew-pmp-certificate-after-every-3-years-lowest-price.html', '', '2013-07-02 09:23:22', '2013-06-30 09:31:14', 1, NULL, 4, 'admin', 'phuong', 0),
(12, 'Competency Assessment', 'slider3.jpg', 'javascript:;', '<p>Provides a project management competency assessment framework for determining, measuring, and supporting the improvement of an individuals’ performance in projects</p>\r\n', '2013-07-02 09:36:17', '2013-07-02 10:34:15', 1, NULL, 1, 'admin', 'phuong', 0),
(13, 'Public course schedule', 'khaigiang.gif', 'http://www.stevbros.com/public-course-schedule/public-course-schedule.html', '', '2013-07-02 10:38:46', '2013-07-02 00:03:02', 1, NULL, 2, 'admin', NULL, 0),
(14, 'Singapore Institute of Management - SIM', 'sim.jpg', 'http://www.sim.edu.sg', '', '2013-07-04 03:24:35', '2013-07-04 03:24:35', 1, NULL, 3, 'admin', NULL, 0),
(15, 'Curtin Singapore', 'curtin.jpg', 'http://www.curtin.edu.sg', '', '2013-07-04 03:25:20', '2013-07-04 03:25:20', 1, NULL, 3, 'admin', NULL, 0),
(16, 'Nanyang Technological University, Singapore', 'nanyang.jpg', 'http://www.ntu.edu.sg', '', '2013-07-04 03:26:00', '2013-07-04 03:26:00', 1, NULL, 3, 'admin', NULL, 0),
(17, 'Part Time Programmes | Full Time Programmes at Kaplan Singapore', 'kaplan.jpg', 'http://www.kaplan.com.sg', '', '2013-07-04 03:26:40', '2013-07-04 23:06:07', 1, NULL, 3, 'admin', 'admin', 0),
(18, 'Online Courses, Online PDUs', 'online-training-slide(1).jpg', 'http://www.stevbros.com/online-courses-online-pdus/online-courses-online-pdus.html', '<p>Provides PMP® Exam Preparation 35 PDUs course, PMP® Exam Mock Tests course, and Renew PMP® Certificate 60 PDUs course globally with most competitive price</p>\r\n', '2013-08-03 10:11:47', '2013-08-03 23:36:05', 1, NULL, 1, 'phuong', 'phuong', 0);

-- --------------------------------------------------------

--
-- Table structure for table `slider_banner_position`
--

CREATE TABLE IF NOT EXISTS `slider_banner_position` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `delete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `slider_banner_position`
--

INSERT INTO `slider_banner_position` (`id`, `name`, `delete`) VALUES
(1, 'Slider 940x310 px', 0),
(2, 'Right width:280px', 0),
(3, 'Partner 175x120 px', 0),
(4, 'Popular Online Courses 180x125 px', 0);

-- --------------------------------------------------------

--
-- Table structure for table `thanhtoan_error`
--

CREATE TABLE IF NOT EXISTS `thanhtoan_error` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `ma` int(8) NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime DEFAULT NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ma` (`ma`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `thanhtoan_error`
--

INSERT INTO `thanhtoan_error` (`id`, `name`, `ma`, `status`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
(1, 'Tạo đơn hàng thành công', 1, 1, '2013-08-08 09:56:03', '2013-08-08 09:56:03', 'admin', NULL, 0),
(2, 'Hệ thống bận', 5000, 1, '2013-08-08 09:57:26', '2013-08-08 09:57:26', 'admin', NULL, 0),
(3, 'Xác thực thất bại', 6000, 1, '2013-08-08 09:57:44', '2013-08-08 09:57:44', 'admin', NULL, 0),
(4, 'Tham số truyền vào không đúng định dạng yêu cầu', 6100, 1, '2013-08-08 09:58:18', '2013-08-08 09:58:18', 'admin', NULL, 0),
(5, 'Vi phạm quy định nghiệp vụ giữa đối tác và 123Pay', 6200, 1, '2013-08-08 09:59:07', '2013-08-08 09:59:07', 'admin', NULL, 0),
(6, 'Không hỗ trợ ngân hàng đã chọn', 6203, 1, '2013-08-08 09:59:26', '2013-08-08 09:59:26', 'admin', NULL, 0),
(7, 'Giao dịch đã được xử lý trước đó (trùng ID)', 6206, 1, '2013-08-08 09:59:55', '2013-08-08 09:59:55', 'admin', NULL, 0),
(8, 'Vượt quá giới hạn thanh toán / giao dịch', 6212, 1, '2013-08-08 10:00:17', '2013-08-08 10:00:17', 'admin', NULL, 0),
(9, 'Thông tin thanh toán không hợp lệ', 7200, 1, '2013-08-08 10:00:38', '2013-08-08 10:00:38', 'admin', NULL, 0),
(10, 'Lỗi giao tiếp hệ thống ngân hàng', 7300, 1, '2013-08-08 10:00:54', '2013-08-08 10:00:54', 'admin', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `thanhtoan_khachhang`
--

CREATE TABLE IF NOT EXISTS `thanhtoan_khachhang` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `country` varchar(2) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `email` varchar(50) NOT NULL,
  `dienthoai` varchar(40) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `checksum` varchar(255) NOT NULL,
  `thanhtoan_error` varchar(20) NOT NULL,
  `ma_nganhang` varchar(20) NOT NULL,
  `ma_sanpham` int(3) NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime DEFAULT NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `thanhtoan_khachhang`
--

INSERT INTO `thanhtoan_khachhang` (`id`, `name`, `country`, `gender`, `email`, `dienthoai`, `ip`, `checksum`, `thanhtoan_error`, `ma_nganhang`, `ma_sanpham`, `status`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
('stevbros9548633273', 'dfasdf dfaskfdf', '', 'U', 'nltest@gmail.com', '0987877678', '112.72.98.206', '', '00', 'TTQT', 5, 0, '2013-08-23 21:35:56', NULL, 'khachhang', 'admin', 1),
('stevbros6989507171', 'nguyen van a', '', 'U', 'anguyen@yahoo.com', '0988766211', '123.30.135.76', '', '00', 'TTQT', 5, 0, '2013-08-30 01:18:38', NULL, 'khachhang', 'admin', 1),
('stevbros4241043893', 'nguyen van a', '', 'U', 'anguyen@yahoo.com', '0988766211', '123.30.135.76', '', '00', 'TTQT', 5, 0, '2013-08-30 01:23:13', NULL, 'khachhang', 'admin', 1),
('stevbros4000473281', 'nguyen van a', '', 'U', 'anguyen@yahoo.com', '0988766211', '123.30.135.76', '', '00', 'TTQT', 5, 0, '2013-08-30 01:27:13', NULL, 'khachhang', 'phuong', 1),
('stevbros9500559915', 'Olamidotun Oluwagbohun', '', 'U', 'dotmade@gmail.com', '2348141376872', '41.203.69.1', '', '00', 'TTQT', 2, 0, '2013-09-01 15:47:41', NULL, 'khachhang', NULL, 0),
('stevbros7318603313', 'Zensz', '', 'U', 'czbox@free.fr', '(+33) (0)675 722 646', '82.227.44.252', '', '00,00', 'TTQT', 1, 1, '2013-09-03 06:03:07', NULL, 'khachhang', NULL, 0),
('stevbros9087747840', 'Venkatesh Sanganal', '', 'U', 'venkatrch@yahoo.com', '919008935599', '182.72.140.182', '', '00', 'TTQT', 2, 0, '2013-09-03 08:54:12', NULL, 'khachhang', NULL, 0),
('stevbros3716130820', 'nguyen van a', '', 'U', 'anguyen@yahoo.com', '0988766211', '101.99.34.148', '', '00', 'TTQT', 5, 0, '2013-09-03 10:18:05', NULL, 'khachhang', 'phuong', 1),
('stevbros3574460776', 'VENKATESH SANGANAL', '', 'U', 'VENKATRCH@YAHOO.COM', '91-9008935599', '117.192.153.38', '', '00,00', 'TTQT', 2, 1, '2013-09-03 13:25:28', NULL, 'khachhang', NULL, 0),
('stevbros5211457438', 'nguyen van a', '', 'U', 'anguyen@yahoo.com', '0988766211', '123.30.135.76', '', '00', 'TTQT', 5, 0, '2013-09-04 03:16:44', NULL, 'khachhang', NULL, 0),
('stevbros3499440941', 'Annarmhaley', '', 'U', 'annar@digi.com.my', '+60162080001', '14.192.236.8', '', '00', 'TTQT', 2, 0, '2013-09-09 09:22:31', NULL, 'khachhang', NULL, 0),
('stevbros1768895598', 'Annarmhaley', '', 'U', 'annar@digi.com.my', '+60162080001', '14.192.236.126', '', '00', 'TTQT', 2, 0, '2013-09-10 10:11:58', NULL, 'khachhang', NULL, 0),
('stevbros1587801223', 'Hai Nhan', '', 'U', 'longminhhai@yahoo.com', '0123455677', '101.99.34.130', '', '00', 'TTQT', 1, 0, '2013-09-12 08:39:11', NULL, 'khachhang', NULL, 0),
('stevbros9580748762', 'Abol Tabol', '', 'U', 'abol@tabol.com', '123123123123', '123.200.16.184', '', '00', 'TTQT', 1, 0, '2013-09-12 10:04:19', NULL, 'khachhang', NULL, 0),
('stevbros9620131188', 'trial tester', '', 'U', 'ibistaffk@gmail.com', '2085555555', '174.19.116.224', '', '00', 'TTQT', 1, 0, '2013-09-12 14:30:47', NULL, 'khachhang', NULL, 0),
('stevbros4323511976', 'AHMED , ABDULLH', '', 'U', 'ahmed_altae_84@yahoo.com', '009647701686656', '37.238.124.87', '', '00', 'TTQT', 1, 0, '2013-09-13 13:19:57', NULL, 'khachhang', NULL, 0),
('stevbros8167447905', 'Syed Nishat', '', 'U', 'syednishat@hotmail.com', '6467847561', '98.116.115.112', '', '00', 'TTQT', 1, 0, '2013-09-15 01:05:23', NULL, 'khachhang', NULL, 0),
('stevbros3320479610', 'Mailerum Perumal C', '', 'U', 'mailerum@yahoo.com', '+919901857213', '117.192.224.5', '', '00', 'TTQT', 2, 0, '2013-09-15 03:22:56', NULL, 'khachhang', NULL, 0),
('stevbros6327614651', 'Mailerum Perumal C', '', 'U', 'mailerum@yahoo.com', '+919901857213', '117.192.224.5', '', '00,00', 'TTQT', 2, 1, '2013-09-15 03:27:06', NULL, 'khachhang', NULL, 0),
('stevbros8659884490', 'Abdus Sabur Chowdhury', '', 'U', 'chowdhury.sabur@gmail.com', '+8801768676936', '98.116.115.112', '', '00', 'TTQT', 1, 0, '2013-09-15 20:37:32', NULL, 'khachhang', NULL, 0),
('stevbros1613237411', 'Abol Tabol', '', 'U', 'abol@tabol.com', '123123123123', '123.200.16.184', '', '00', 'TTQT', 1, 0, '2013-09-15 22:25:27', NULL, 'khachhang', NULL, 0),
('stevbros2583285794', 'Abdus Sabur Chowdhury', '', 'U', 'chowdhury.sabur@gmail.com', '+8801768676936', '98.116.115.112', '', '00', 'TTQT', 1, 1, '2013-09-15 22:29:59', NULL, 'khachhang', 'phuong', 0),
('stevbros9152674259', 'Nitin Kulkarni', '', 'U', 'nskulk@gmail.com', '0097339154160', '82.194.46.2', '', '00', 'TTQT', 1, 0, '2013-09-17 04:44:30', NULL, 'khachhang', NULL, 0),
('stevbros8594002173', 'rad', '', 'U', 'fds@dfs.com', '+5712358695', '181.55.250.6', '', '00', 'TTQT', 1, 0, '2013-09-19 16:28:27', NULL, 'khachhang', NULL, 0),
('stevbros4049051833', 'AHMED , ABDULLH', '', 'U', 'ahmed_altae_84@yahoo.com', '009647701686656', '37.238.129.1', '', '00', 'TTQT', 1, 0, '2013-09-20 09:32:42', NULL, 'khachhang', NULL, 0),
('stevbros9185476053', 'LALIT DONGRE', '', 'U', 'elect_lalit124@rediffmail.com', '7208070727', '122.162.95.221', '', '00', 'TTQT', 1, 0, '2013-09-22 07:10:23', NULL, 'khachhang', NULL, 0),
('stevbros3789592304', 'Beauty Verma', 'IN', 'U', 'beautyverma81@gmail.com', '919971882955', '122.161.79.58', '', '00,00', 'TTQT', 2, 1, '2013-10-02 13:13:15', NULL, 'khachhang', NULL, 0),
('stevbros4938236086', 'Amit Sachdeva', 'IN', 'U', 'amitsachdeva29@hotmail.com', '919650407222', '122.161.79.58', '', '00,00', 'TTQT', 2, 1, '2013-10-02 13:35:38', NULL, 'khachhang', NULL, 0),
('stevbros9206598776', 'Nguyen Duy Phuong', 'VN', 'U', 'duyphuongcr@gmail.com', '+84919240782', '42.117.66.92', '', '00,00', 'TTQT', 1, 1, '2013-10-09 06:49:51', NULL, 'khachhang', NULL, 0),
('stevbros6832314942', 'Raj Tyagi', 'BH', 'U', 'rajktyagi@gmail.com', '0097339074452', '84.255.173.14', '', '00,00', 'TTQT', 2, 1, '2013-10-01 09:58:16', NULL, 'khachhang', NULL, 0),
('stevbros5254417122', 'Beauty Verma', 'IN', 'U', 'beautyverma81@gmail.com', '+91-9971882955', '122.161.79.58', '', '00', 'TTQT', 2, 0, '2013-10-01 06:21:33', NULL, 'khachhang', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `thanhtoan_nganhang`
--

CREATE TABLE IF NOT EXISTS `thanhtoan_nganhang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `manh` varchar(50) NOT NULL,
  `url_hinh` varchar(150) NOT NULL,
  `loaithe` tinyint(1) NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime DEFAULT NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `thanhtoan_nganhang`
--

INSERT INTO `thanhtoan_nganhang` (`id`, `name`, `manh`, `url_hinh`, `loaithe`, `status`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
(1, 'Ngân hàng Công Thương Viet Nam (Vietinbank)', '123PVTB', 'pvtb.jpg', 0, 0, '2013-08-07 13:36:04', '2013-08-15 01:45:52', 'admin', 'admin', 0),
(2, 'Ngân Hàng Dâu Khí Toàn Câu (GPBank)', '123PGPB', '', 0, 0, '2013-08-07 13:49:34', '2013-08-07 13:57:04', 'admin', 'admin', 0),
(3, 'Ngân hàng Ngoại Thương Việt Nam (Vietcombank)', '123PVCB', 'vcb.png', 0, 0, '2013-08-07 13:50:45', '2013-08-15 01:45:55', 'admin', 'admin', 0),
(4, 'Ngân hàng Ky Thương Viet Nam (Techcombank)', '123PTCB', 'tcb.png', 0, 0, '2013-08-07 13:51:08', '2013-08-14 01:46:00', 'admin', 'admin', 0),
(5, 'Ngân hàng Xuât Nhap Khau Viet Nam (Eximbank)', '123PEIB', 'exb.png', 0, 0, '2013-08-07 13:51:29', '2013-08-14 01:46:04', 'admin', 'admin', 0),
(6, 'Ngân hàng quôc tê (VIB)', '123PVIB', 'vib.png', 0, 0, '2013-08-07 13:51:51', '2013-08-07 13:51:51', 'admin', 'admin', 0),
(7, 'Ngân hàng quân ñoi (MB)', '123PMB', 'mb.png', 0, 0, '2013-08-07 13:52:10', '2013-08-07 13:52:10', 'admin', 'admin', 0),
(8, 'Ngân hàng Á Châu (ACB)', '123PACB', 'acb.png', 0, 0, '2013-08-07 13:52:22', '2013-08-14 01:46:10', 'admin', 'admin', 0),
(9, 'Ngân Hàng TMCP Phát Trien TPHCM (HDBank)', '123PHDB', 'hdb.png', 0, 0, '2013-08-07 13:52:38', '2013-08-07 13:52:38', 'admin', 'admin', 0),
(10, 'Ngân hàng Sài Gòn Thương Tín (Sacombank)', '123PSCB', 'scb.png', 0, 0, '2013-08-07 13:52:59', '2013-08-14 01:46:15', 'admin', 'admin', 0),
(11, 'Ngân hàng TMCP Nam Viet (NaviBank)', '123PNVB', 'nvb.png', 0, 0, '2013-08-07 13:53:13', '2013-08-07 13:53:13', 'admin', 'admin', 0),
(12, 'Ngân hàng TMCP Hàng Hải (Maritime Bank)', '123PMRTB', 'mtb.png', 0, 0, '2013-08-07 13:53:42', '2013-08-07 13:53:42', 'admin', 'admin', 0),
(13, 'Ngân hàng TMCP Viet Á', '123PVAB', 'vab.png', 0, 0, '2013-08-07 13:53:57', '2013-08-07 13:53:57', 'admin', 'admin', 0),
(14, 'Ngân hàng Việt Nam Thịnh Vượng (VPBank)', '123PVPB', 'vpb.png', 0, 0, '2013-08-07 13:54:30', '2013-08-07 13:54:30', 'admin', 'admin', 0),
(15, 'Ngân hàng TMCP Bac Á', '123PBAB', '', 0, 0, '2013-08-07 13:54:54', '2013-08-07 13:55:03', 'admin', 'admin', 0),
(16, 'Ngân hàng TMCP Đại Dương (OceanBank)', '123POCB', '', 0, 0, '2013-08-07 13:55:43', '2013-08-07 13:55:43', 'admin', 'admin', 0),
(17, 'Master Card', '123PCC', 'master.png', 1, 1, '2013-08-07 13:56:19', '2013-08-15 00:27:07', 'admin', 'admin', 0),
(18, 'Visa Card', '123PCC', 'visa.png', 1, 1, '2013-08-15 00:27:35', '2013-08-13 21:34:45', 'admin', 'admin', 0),
(19, 'JCB', 'JCB', 'jcb.png', 1, 1, '2013-08-15 00:27:59', '2013-08-12 21:34:38', 'admin', 'admin', 0);

-- --------------------------------------------------------

--
-- Table structure for table `thanhtoan_sanpham`
--

CREATE TABLE IF NOT EXISTS `thanhtoan_sanpham` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `name_rewrite` varchar(100) NOT NULL,
  `url_hinh` varchar(150) NOT NULL,
  `link` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime DEFAULT NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `thanhtoan_sanpham`
--

INSERT INTO `thanhtoan_sanpham` (`id`, `name`, `name_rewrite`, `url_hinh`, `link`, `price`, `status`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
(1, 'PMP® Exam Prep 35 PDUs lowest price (3-month account)', 'pmp-exam-prep-35-pdus-lowest-price', '35.jpg', 'http://www.stevbros.com/project-management-training/pmp-exam-prep-35-pdus-lowest-price.html', 35, 1, '2013-08-07 13:34:35', '2013-08-07 21:48:07', 'admin', 'phuong', 0),
(2, '60 PDUs Renew PMP® Certificate after every 3 years lowest price (3-month account)', '60-pdus-renew-pmp-certificate-after-every-3-years-lowest-price', '60.jpg', 'http://www.stevbros.com/project-management-training/60-pdus-renew-pmp-certificate-after-every-3-years-lowest-price.html', 60, 1, '2013-08-07 13:35:06', '2013-08-07 21:47:54', 'admin', 'phuong', 0),
(3, 'Test thanh toan 1 usd', 'test-thanh-toan-1-usd', 'bode.jpg', '', 1, 0, '2013-08-13 09:42:41', '2013-08-20 04:45:46', 'admin', 'admin', 0),
(4, 'Lỗi thanh toán', 'error', '', '', 0, 0, '2013-08-13 09:43:00', '2013-08-13 09:43:00', 'admin', 'admin', 0),
(5, 'PMP® Mock Tests simulating the real PMP® exam (3-month account)', 'pmp-mock-tests-simulating-the-real-pmp-exam', 'bode.jpg', 'http://www.stevbros.com/project-management-training/pmp-mock-tests-simulating-the-real-pmp-exam.html', 35, 1, '2013-08-18 09:22:58', '2013-08-18 21:47:34', 'phuong', 'phuong', 0),
(6, 'Accelerated PMP® Exam Prep public course in Singapore', 'accelerated-pmp-exam-prep-public-course-in-singapore', 'khaigiang (1).gif', 'http://www.stevbros.com/public-course-schedule/public-course-schedule.html', 550, 1, '2013-10-15 05:30:45', '2013-10-15 05:30:45', 'phuong', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `thuvienanh`
--

CREATE TABLE IF NOT EXISTS `thuvienanh` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `idMenu` int(3) NOT NULL,
  `idUser` int(3) NOT NULL,
  `Ngay` date NOT NULL,
  `MoTa` varchar(150) NOT NULL,
  `urlHinh` varchar(100) NOT NULL,
  `ThuTu` int(8) DEFAULT '0',
  `AnHien` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=107 ;

--
-- Dumping data for table `thuvienanh`
--

INSERT INTO `thuvienanh` (`id`, `idMenu`, `idUser`, `Ngay`, `MoTa`, `urlHinh`, `ThuTu`, `AnHien`) VALUES
(19, 5, 25, '2012-12-23', 'Thi đầu bếp chuyên nghiệp lập kỷ lục cuốn gỏi cuốn', 'thi-dau-bep-chuyen-nghiep-lap-ky-luc-cuon-goi-cuon.jpg', 0, 1),
(24, 5, 25, '2012-12-23', 'THẦY NGUYỄN VĂN LẬP 1', 'Thay-Nguyen-Van-Lap-Giang-Vien-Chinh4.JPG', 0, 1),
(25, 5, 25, '2012-12-23', 'THẦY NGUYỄN VĂN LẬP 2', 'Thay-Nguyen-Van-Lap-Giang-Vien-Chinh5.JPG', 0, 1),
(26, 5, 25, '2012-12-23', 'THẦY NGUYỄN VĂN LẬP 3', 'Thay-Nguyen-Van-Lap-Giang-Vien-Chinh6.JPG', 0, 1),
(27, 5, 25, '2012-12-23', 'THẦY NGUYỄN VĂN LẬP 4', 'Thay-Nguyen-Van-Lap-Giang-Vien-Chinh7.JPG', 0, 1),
(28, 5, 25, '2012-12-23', 'THẦY NGUYỄN VĂN LẬP 5', 'Thay-Nguyen-Van-Lap-Giang-Vien-Chinh8.JPG', 0, 1),
(29, 5, 25, '2012-12-23', 'THẦY NGUYỄN VĂN LẬP 6', 'Thay-Nguyen-Van-Lap-Giang-Vien-Chinh9.JPG', 0, 1),
(30, 5, 25, '2012-12-23', 'Chương trình gia đình vào bếp', 'chuong-trinh-gia-dinh-vao-bep.jpg', 0, 1),
(31, 5, 25, '2012-12-23', 'Đại hội lần thứ IV - Hội đầu bếp chuyên nghiệp Sài Gòn', 'dai-hoi-lan-thu-4-hoi-dau-bep-chuyen-nghiep-sai-gon.jpg', 0, 1),
(32, 5, 25, '2012-12-23', 'Giao lưu với vua bếp Yan Can Cook', 'giao-luu-voi-vua-bep-yan-can-cook.jpg', 0, 1),
(33, 5, 25, '2012-12-23', 'Huấn luyện tay nghề hội viên', 'huan-luyen-tay-nghe-hoi-vien.jpg', 0, 1),
(34, 5, 25, '2012-12-23', 'Huấn luyện trang trí món ăn thầy David Thái', 'huan-luyen-trang-tri-mon-an-thay-david-thai.jpg', 0, 1),
(35, 5, 25, '2012-12-23', 'Kỷ lục 100 món gỏi', 'ky-luc-100-mon-goi.jpg', 0, 1),
(36, 5, 25, '2012-12-23', 'Kỷ lục bánh xèo lớn nhất', 'ky-luc-banh-xeo-lon-nhat.jpg', 0, 1),
(37, 5, 25, '2012-12-23', 'Kỷ lục gỏi cuốn dài nhất', 'ky-luc-goi-cuon-dai-nhat.jpg', 0, 1),
(38, 5, 25, '2012-12-23', 'Kỷ lục xôi phòng lớn nhất', 'ky-luc-xoi-phong-lon-nhat.jpg', 0, 1),
(39, 5, 25, '2012-12-23', 'Kỷ niệm ngày quốc tế đầu bếp', 'ky-niem-ngay-quoc-te-dau-bep.jpg', 0, 1),
(40, 5, 25, '2012-12-23', 'Lễ ký kết hợp tác giữa Netspace và Hội đầu bếp chuyên nghiệp Sài Gòn', 'le-ky-ket-hop-tac-netspace-hoi-dau-bep-chuyen-nghiep-sai-gon.jpg', 0, 1),
(41, 5, 25, '2012-12-23', 'Thầy Đinh Văn Toan dạy nghề bếp', 'thay-dinh-van-toan-day-nghe-bep.jpg', 0, 1),
(42, 5, 25, '2012-12-23', 'Thầy Lê Võ Anh Duy', 'thay-le-vo-anh-duy.jpg', 0, 1),
(43, 5, 25, '2012-12-23', 'Thầy Nguyễn Văn Lập dạy cắt tỉa', 'thay-nguyen-van-lap-day-cat-tia.jpg', 0, 1),
(44, 5, 25, '2012-12-23', 'Thầy Quách Thanh Tường dạy chương trình quản lý bếp', 'thay-quach-thanh-tuong-day-chuong-trinh-quan-ly-bep.jpg', 0, 1),
(45, 5, 25, '2012-12-23', 'Thầy Tăng Quốc VInh dạy nghề Bếp', 'thay-tang-quoc-vinh-day-bep.jpg', 0, 1),
(46, 5, 25, '2012-12-23', 'Thi làm gỏi cuốn', 'thi-lam-goi-cuon.jpg', 0, 1),
(47, 5, 25, '2012-12-23', 'Cô Trần Thị Minh Tâm với lớp học', 'co-tran-thi-minh-tam-voi-lop-hoc.jpg', 0, 1),
(48, 5, 25, '2012-12-23', 'Bài thi học viên Gỏi Cuốn Tứ Xuyên', 'Bai-thi-hoc-vien-NetSpace-Goi-Muc-Tu-Xuyen.jpg', 0, 1),
(49, 5, 25, '2012-12-23', 'Bánh tôm Hồ Tây', 'Banh-Tom-Ho-Tay.jpg', 0, 1),
(50, 5, 25, '2012-12-23', 'Buổi biển diễn của siêu đầu bếp David Thái tại NetSpace', 'Buoi-bieu-dien-cua-sieu-dau-bep-David-Thai.jpg', 0, 1),
(51, 5, 25, '2012-12-23', 'Buổi kiểm tra thực hành nấu ăn tại NetSpace', 'Buoi-kiem-tra-thuc-hanh-nau-an-tai-NetSpace.jpg', 0, 1),
(52, 5, 25, '2012-12-23', 'Chà giò Hà Nội', 'cha-gio-Ha-Noi.jpg', 0, 1),
(53, 5, 25, '2012-12-23', 'David Thái tại trường NetSpace', 'David-Thai-tai-truong-NetSpace.jpg', 0, 1),
(54, 5, 25, '2012-12-23', 'Điêu khắc mùa trung thu tại trường NetSpace', 'dieu-khac-mua-trung-thu-tai-NetSpace.jpg', 0, 1),
(55, 5, 25, '2012-12-23', 'Học viên NetSpace học dã ngoại', 'hoc-vien-NetSpace-hoc-da-ngoai.jpg', 0, 1),
(56, 5, 25, '2012-12-23', 'Học viên NetSpace học làm Bánh', 'Hoc-vien-NetSpace-hoc-lam-banh.jpg', 0, 1),
(57, 5, 25, '2012-12-23', 'Học viên NetSpace tham quan KDL Văn Thánh', 'hoc-vien-NetSpace-tham-quan-KDL-Van-Thanh.jpg', 0, 1),
(58, 5, 25, '2012-12-23', 'Học viên NetSpace thực tập tại Nhà Hàng', 'Hoc-vien-thuc-tap-tai-nha-hang.jpg', 0, 1),
(59, 5, 25, '2012-12-23', 'Lớp học điêu khắc Trái Cây tại trường NetSpace', 'lop-hoc-dieu-khac-trai-cay.jpg', 0, 1),
(60, 5, 25, '2012-12-23', 'NetSpace dạy tại doanh nghiệp', 'NetSpace-day-tai-doanh-nghiep.jpg', 0, 1),
(61, 5, 25, '2012-12-23', 'Người mẫu, diễn viên Trương Minh Cường tại trường NetSpace', 'nguoi-mau-dien-vien-Truong-Minh-Cuong-Tai-NetSpace.jpg', 0, 1),
(62, 5, 25, '2012-12-23', 'Người mẫu, diễn viên Trương Minh Cường học Chả Giò, Bánh Kem tại trường NetSpace', 'Truong-Minh-Cuong-Hoc-cha-gio-kem-tai-NetSpace.jpg', 0, 1),
(63, 5, 25, '2012-12-23', 'Sản phẩm điêu khắc từ học viên tại trường NetSpace', 'san-pham-dieu-khac-tu-hoc-vien-NetSpace.jpg', 0, 1),
(64, 5, 25, '2012-12-23', 'Trường ẩm thực Evolution thăm trường NetSpace', 'truong-am-thuc-Evolution-tham-NetSpace.jpg', 0, 1),
(65, 5, 25, '2012-12-23', 'Các đối tác nước ngoài của trường NETSPACE', 'Cac-Doi-Tac-Nuoc-Ngoai-Cua-Truong-Netspace.jpg', 0, 1),
(66, 5, 25, '2012-12-23', 'Cô Duyên dạy làm bánh', 'Co-Duyen-Day-Lam-Banh.jpg', 0, 1),
(67, 5, 25, '2012-12-23', 'Cô Tâm cùng với Hội đầu bếp', 'Co-Tam-Cung-Voi-Hoi-Dau-Bep.jpg', 0, 1),
(68, 5, 25, '2012-12-23', 'Cô Thu dạy nấu ăn', 'Co-Thu-Day-Nau-An.jpg', 0, 1),
(69, 5, 25, '2012-12-23', 'Diễn viên Trương Minh Cường giao lưu với học viên', 'Dien-Vien-Truong-Minh-Cuong-Giao-Luu-Voi-Hoc-Vien.jpg', 0, 1),
(70, 5, 25, '2012-12-23', 'Diễn viên Trương Minh Cường học nấu ăn', 'Dien-Vien-Truong-Minh-Cuong-Hoc-Nau-An.jpg', 0, 1),
(71, 5, 25, '2012-12-23', 'Giao lưu với khách nước ngoài', 'Giao-Luu-Voi-Khach-Nuoc-Ngoai.jpg', 0, 1),
(72, 5, 25, '2012-12-23', 'Hội đầu bếp & sinh nhật Má Sáu', 'Hoi-Dau-Bep-_-Sinh-Nhat-Ma-Sau.jpg', 0, 1),
(73, 5, 25, '2012-12-23', 'Ký kết hợp tác giữa trường NETSPACE và Evolution Institute', 'Ky-Ket-Hop-Tac-Giua-Truong-Netspace-Va-Evolution-Institute.jpg', 0, 1),
(74, 5, 25, '2012-12-23', 'Thầy Duy sinh hoạt lớp Bếp Chính', 'Thay-Duy-Sinh-Hoat-Lop-Bep-Chinh.jpg', 0, 1),
(75, 5, 25, '2012-12-23', 'Thầy Nhân dạy món Âu', 'Thay-Nhan-Day-Mon-Au.jpg', 0, 1),
(76, 5, 25, '2012-12-23', 'Vua Bếp - Dương Huy Khải tại trường NETSPACE', 'Vua-Bep-Duong-Huy-Khai-Tai-Truong-Netspace.jpg', 0, 1),
(77, 5, 25, '2012-12-23', 'Siêu Đầu Bếp David Thái với Học viên NetSpace', 'Sieu-Dau-Bep-David-Thai-Voi-Hoc-Vien-Netspace.jpg', 0, 1),
(78, 5, 25, '2012-12-23', 'Dạy nấu ăn và trình bày cho học viên NETSPACE', 'day-nau-trinh-bay-mon-an.jpg', 0, 1),
(79, 5, 25, '2012-12-23', 'Dã ngoại & thi nấu ăn tại KDL Văn Thánh do trường NETSPACE tổ chức', 'thi-nau-an-tai-khu-du-lich-Van-Thanh-do-truong-netspace-to-chuc-cho-hoc-vien.jpg', 0, 1),
(80, 5, 25, '2012-12-23', 'Món ăn được học viên trình bày trong hoạt động dã ngoại tại KDL Văn Thánh', 'mon-an-do-hoc-vien-NETSPACE-trinh-bay.jpg', 0, 1),
(81, 5, 25, '2012-12-23', 'Học viên trường ẩm thực NETSPACE dã ngoại tại KDL Văn Thánh', 'Hoc-vien-truong-am-thuc-NETSPACE-da-ngoai-khu-du-lich-Van-Thanh.jpg', 0, 1),
(82, 5, 25, '2012-12-23', 'Cô Hồ Thị Hoàng Anh “Vua Bếp Việt Nam” tại Trường NetSpace', 'Co-Ho-Thi-Hoang-Anh-Vua-Bep-Viet-Nam-Tai-Truong-Netspace.jpg', 0, 1),
(83, 5, 25, '2012-12-23', 'Trường NetSpace giao lưu và trao học bổng cho CLB Bếp Lâm Đồng', 'Truong-Netspace-Giao-Luu-Va-Trao-Hoc-Bong-Cho-Clb-Bep-Lam-Dong.jpg', 0, 1),
(84, 5, 25, '2012-12-23', 'Thầy Duy và Học viên K5 tại trường ẩm thực NetSpace', 'Thay-Duy-Va-Hoc-Vien-K5-Tai-Truong-Am-Thuc-Netspace.jpg', 0, 1),
(85, 5, 25, '2012-12-23', 'Món Gà Hấp Hành', 'Mon-Ga-Hap-Hanh-Tai-Truong-Netspace.jpg', 0, 1),
(86, 5, 25, '2012-12-23', '1', '1.jpg', 0, 1),
(87, 5, 25, '2012-12-23', '2', '2.jpg', 0, 1),
(88, 5, 25, '2012-12-23', '3', '3.jpg', 0, 1),
(89, 5, 25, '2012-12-23', '4', '4.jpg', 0, 1),
(90, 5, 25, '2012-12-23', '5', '5.jpg', 0, 1),
(91, 5, 25, '2012-12-23', '6', '6.jpg', 0, 1),
(92, 5, 25, '2012-12-23', '7', '7.jpg', 0, 1),
(93, 5, 25, '2012-12-23', '8', '8.jpg', 0, 1),
(94, 5, 25, '2012-12-23', '9', '9.jpg', 0, 1),
(95, 5, 25, '2012-12-23', '21', '21.jpg', 0, 1),
(96, 5, 25, '2012-12-23', '10', '10.jpg', 0, 1),
(97, 5, 25, '2012-12-23', '11', '11.jpg', 0, 1),
(98, 5, 25, '2012-12-23', '12', '12.jpg', 0, 1),
(99, 5, 25, '2012-12-23', '13', '13.jpg', 0, 1),
(100, 5, 25, '2012-12-23', '14', '14.jpg', 0, 1),
(101, 5, 25, '2012-12-23', '15', '15.jpg', 0, 1),
(102, 5, 25, '2012-12-23', '16', '16.jpg', 0, 1),
(103, 5, 25, '2012-12-23', '17', '17.jpg', 0, 1),
(104, 5, 25, '2012-12-23', '18', '18.jpg', 0, 1),
(105, 5, 25, '2012-12-23', '19', '19.jpg', 0, 1),
(106, 5, 25, '2012-12-23', '20', '20.jpg', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `quyen_xem` varchar(200) NOT NULL,
  `quyen_action` varchar(200) NOT NULL,
  `idGroup` int(11) DEFAULT '0',
  `Active` tinyint(1) DEFAULT '1',
  `RandomKey` varchar(255) DEFAULT NULL,
  `LoginNumber` int(11) DEFAULT '0',
  `DisableDate` datetime DEFAULT NULL,
  `Expiration` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `date_create` datetime NOT NULL,
  `date_update` datetime DEFAULT NULL,
  `user_create` varchar(30) NOT NULL,
  `user_update` varchar(30) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `Username` (`Username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `Username`, `Password`, `quyen_xem`, `quyen_action`, `idGroup`, `Active`, `RandomKey`, `LoginNumber`, `DisableDate`, `Expiration`, `status`, `date_create`, `date_update`, `user_create`, `user_update`, `delete`) VALUES
(25, 'Trần Hiếu Nhân', 'admin', 'e10adc3949ba59abbe56e057f20f883e', ',1,2,3,4,5,13,12,11,7,8,9,10,15,', ',1,2,3,4,5,13,12,11,7,8,9,10,15,', 1, 1, NULL, 0, '2011-09-21 16:42:26', NULL, 1, '2013-06-14 00:00:00', NULL, 'admin', 'admin', 0),
(40, 'Phương', 'phuong', 'e10adc3949ba59abbe56e057f20f883e', ',1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,', ',1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,', 1, 1, NULL, NULL, NULL, NULL, 1, '2013-06-14 00:00:00', NULL, 'admin', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_group`
--

CREATE TABLE IF NOT EXISTS `users_group` (
  `idGroup` int(2) NOT NULL AUTO_INCREMENT,
  `MoTa` varchar(50) NOT NULL,
  PRIMARY KEY (`idGroup`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users_group`
--

INSERT INTO `users_group` (`idGroup`, `MoTa`) VALUES
(1, 'Quản trị web site'),
(2, 'Thành viên'),
(3, 'null');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE IF NOT EXISTS `video` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `idMenu` int(3) NOT NULL,
  `idUser` int(11) NOT NULL,
  `Ngay` date NOT NULL,
  `MoTa` varchar(150) NOT NULL,
  `MoTa_KhongDau` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `urlHinh` varchar(100) NOT NULL,
  `ThuTu` int(11) DEFAULT '0',
  `AnHien` tinyint(1) DEFAULT '1',
  `Khac1` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `idMenu`, `idUser`, `Ngay`, `MoTa`, `MoTa_KhongDau`, `url`, `urlHinh`, `ThuTu`, `AnHien`, `Khac1`) VALUES
(2, 100, 25, '2012-12-13', 'Các hoạt động của trường dạy nghề ẩm thực NETSPACE', '', 'http://www.youtube.com/embed/s5j9JgNiOyE', '', 0, 1, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
