-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2019 at 11:42 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.1.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `electronic_shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(3) NOT NULL,
  `name` varchar(30) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(8) NOT NULL,
  `image` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `mobile`, `email`, `password`, `image`) VALUES
(1, 'admin', '7896541258', 'admin@gmail.com', 'password', 'admin2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartid` int(6) NOT NULL,
  `elecid` int(6) NOT NULL,
  `userid` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cartid`, `elecid`, `userid`) VALUES
(1, 13, 1),
(2, 7, 1),
(3, 1, 1),
(4, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `elecid` int(9) NOT NULL,
  `Title` varchar(40) NOT NULL,
  `category` varchar(40) NOT NULL,
  `elec_rating` int(3) NOT NULL,
  `image` varchar(90) NOT NULL,
  `discription` varchar(800) NOT NULL,
  `price` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`elecid`, `Title`, `category`, `elec_rating`, `image`, `discription`, `price`) VALUES
(1, 'Canon EOS 1500D Digital SLR', 'CamerasPhotography', 5, '914hFeTU2-L._SL1500_.jpg', 'Sold by Appario Retail Private Ltd (4.7 out of 5 | 128,795 ratings) and Fulfilled by Amazon. Gift-wrap available.', '26347.00'),
(2, 'Nikon D5300 24.2MP', 'CamerasPhotography', 5, '51Jby1iYrqL.jpg', 'Sold by Appario Retail Private Ltd (4.7 out of 5 | 128,799 ratings) and Fulfilled by Amazon. Gift-wrap available.', ' 31479.00'),
(3, 'Fujifilm Instax Mini 9 Instant Camera', 'CamerasPhotography', 3, '817aVWYpblL._SL1500_.jpg', 'Selfie mirror\r\nManual switching system (LED indicator in exposure meter)\r\nReal image finder, 0.37x, with target spot\r\nConstant firing flash', '3749.00'),
(4, 'IFITech 1080p HD Hidden Camera', 'CamerasPhotography', 2, '411yl8kDzmL.jpg', 'Very Easy to Use: The camera is used without any setting,just plug it into the wall when youre ready to start recording, and unplug it when youre done recording.', '2095.00'),
(5, 'Chevik Bike Mobile Holder', 'CarVehicleElectronics', 3, '717tgEBWorL._SL1500_.jpg', 'WHY CHEVIK X-GRIP - If you are looking for a compact mount for your mobile without the cookie cutter shape, youve found it. X-Grip expands to fit a wide range of phones while keeping all of your buttons accessible.', '1099.00 '),
(6, 'CrossBeats Mini Bluetooth Receiver', 'CarVehicleElectronics', 4, '61YZf+3PUPL._SL1500_.jpg', 'BLUETOOTH RECEIVER: It function transforms 3.5mm audio-out media devices into a Bluetooth device capable of streaming Bluetooth audio Receiver lets non-Bluetooth devices like car or home stereos receive high quality audio.', ' 1699.00'),
(7, 'AutoStark Motorcycle Phone Mount', 'CarVehicleElectronics', 1, '519ud14eFlL._SL1001_.jpg', 'Muliti-functional design, USB charger and mount holder 2-in-1\r\nEasy to install, gives you the perfect solution for phone use while driving riding.\r\nFast charging ,Pefect hold\r\nMade of durable material\r\nExclusive product', '798.00'),
(8, 'VeeDee Bluetooth FM Transmitter', 'CarVehicleElectronics', 3, '61fveBw3CTL._SL1000_.jpg', 'Plug and Play -- Plug the FM transmitter into your car cigarette lighter socket for power find a blank frequency for your car radio and keep the FM transmitter at the same one pair your mobile device with it via Bluetooth.', '1490.00 '),
(9, '50-Inch Lightweight Tripod with Bag', 'CamerasPhotography', 2, '91C4e69Ag7L._SL1500_.jpg', 'Adjustable-height tripod made of lightweight aluminum\r\nWeighs just over a pound\r\n3-way head allows for tilt and swivel motion with portrait or landscape options', '799.00'),
(10, 'Mobilegabbar Adjustable Mobile Holder', 'CarVehicleElectronics', 3, '61VdMekUtIL._SL1021_.jpg', 'Ultra Sticky Suction Pad:Secure Suction Pad Sticks Tightly On The Dashboard Or Most Surfaces. Remove Easily By Pulling The Suction Pad Without Leaving Any Nasty Mark On Your Dash.', '2000'),
(11, 'LG 80 cm (32 Inches) HD Ready LED Smart ', 'HomeTheaterTVVideo', 3, '51K5iBuBo8L._SL1224_.jpg', 'Resolution: HD Ready (1366x768p) | Refresh Rate: 50 hertz\r\nDisplay: Life-like Colour|Wide Viewing Angle | Colour Master Engine\r\nSmart TV Features: WebOS | Built-in WiFi', '20000.00'),
(12, 'Sony HT-IV300 Real 5.1ch Dolby Digital D', 'HomeTheaterTVVideo', 3, '61nENbBFsGL._SL1200_.jpg', '1024 WattsRMS output power\r\nNFC & Bluetooth & Wire speakers\r\nUSB- Multi format playability', '19896.00'),
(13, 'Tata Sky HD Set Top Box', 'HomeTheaterTVVideo', 1, '81YyJDd370L._SL1500_.jpg', 'Enjoy the high definition experience with 1080i resolution\r\nModify or make your pack based on the channels that are available\r\nDevice Type: High Definition, Compression Technology Mpeg4', '1649.00 '),
(14, 'IKALL TA-111 BT 5.1 Channel Home Theater', 'HomeTheaterTVVideo', 2, '51ejjCjem-L._SL1000_.jpg', 'Frequency: 40hz-200hz (Main Unit), 200hz-20khz (Satellite)\r\nColour: Black\r\nProvides great sound', ' 1986.00'),
(15, 'TCL 99.8 cm (40 Inches) Full HD LED Smar', 'HomeTheaterTVVideo', 3, '81pMt-3kCJL._SL1500_.jpg', 'Full HD (Resolution: 1920x1080), Refresh Rate: 60 hertz\r\nConnectivity: 3 HDMI, 2 USB\r\nSound output: 16 W\r\nWarranty Information: 18 months warranty provided by the manufacturer from date of purchase', '20000.00'),
(16, 'Sennheiser HD 4.40-BT Bluetooth Headphon', 'Headphones', 3, '616zfAHAGHL._SL1000_.jpg', 'Bluetooth 4.0 and aptX technologies to deliver exceptional wireless sound quality  Intuitive ear-cup mounted controls for changing tracks and for making calls via the integrated microphone', '700'),
(17, 'JBL C100SI In-Ear Headphones with Mic', 'Headphones', 2, '51G4ZRtO0tL._SL1200_.jpg', 'JBL Legendary Sound\r\nPowerful Drivers deliver thumping Bass\r\nLightweight and Comfortable with 3 sizes of ear tips that are included allow you to choose a size that gives you the most comfortable listening experience even for longer listening periods', '800'),
(18, 'Boat BassHeads 900 Wired Headphone with ', 'Headphones', 3, '61XBkWmmQeL._SL1421_.jpg', 'Super Extra Bass: Enjoy powerful, dynamic sound with punchy bass and clear, natural vocals with the responsive 40mm Neodymium drivers, balanced sound for a complete listening experience from 20 - 20,000 Hz', '1000'),
(19, 'Sony WH-1000XM2 Wireless Digital Noise C', 'Headphones', 5, '91UIwG5R2lL._SL1500_.jpg', 'Wireless headphones with Industry leading Noise Cancellation\r\nNew Sony | Headphones Connect App for Android iOS to use Smart Listening technology to control your ambient sound settings', '1500'),
(20, 'Sony - C400 Wireless Behind-Neck in Ear ', 'Headphones', 1, '51WbNBALLQL._SL1121_.jpg', 'One-touch listening with Bluetooth and NFC\r\nUp to 20 hours battery life for long listening hours, Changing Time Approx. 4.5 hrs\r\n9mm neodymium drivers for dynamic sound, Frequency Response 8 Hzâ€“22,000 Hz', '900'),
(21, 'Honor MediaPad T3 32 GB 8 inch with Wi-F', 'Tablets', 3, 'honor-kob-l09-original-imaf4e8ugfhgh5ap.jpeg', 'Single-piece anodized aluminium body\r\nBlue-light filter and low-light display modes to help your eyes\r\nMS Office Pre Installed\r\n3 GB RAM | 32 GB ROM | Expandable Upto 128 GB', '14,999'),
(22, 'Honor MediaPad T3 10 32 GB 9.6 inch with', 'Tablets', 2, 'honor-ags-l09-original-imaey3sggrzmsvjf.jpeg', '\r\nSingle-piece anodized aluminium body\r\nBlue-light filter and low-light display modes to help your eyes\r\nMS Office Pre Installed\r\n3 GB RAM | 32 GB ROM | Expandable Upto 128 GB', '16,999'),
(23, 'Samsung Galaxy Tab A T355Y 16 GB 8 inch ', 'Tablets', 5, 'samsung-sm-t355yzaains-original-imaessj2rvxnj3cy.jpeg', 'Only 7.5 mm thick and just 320 g, the Galaxy Tab A provides you with unbeatable portability, as well as a firm, secure grip\r\n4:3 aspect ratio screen is ideal for reading books, magazines and newspapers, as well as surfing the net', '14,999'),
(24, 'Lenovo Tab 4 8 16 GB 8 inch with Wi-Fi+4', 'Tablets', 5, 'lenovo-tb-8504x-original-imaewwbpzzq5nuhg.jpeg', 'Dolby Atmos helps to turn the Tab 4 8 into a mobile entertainment hub\r\nWide-angle display results in a great visual experience\r\nMultiple users can have their own account with individual passwords, settings, and social meda accounts\r\n2 GB RAM | 16 GB ROM | Expandable Upto 128 GB', '12,820'),
(25, 'Honor MediaPad T3 10 16 GB 9.6 inch with', 'Tablets', 3, 'samsung-sm-t355yzaains-original-imaessj2rvxnj3cy.jpeg', 'Single-piece anodized aluminium body\r\nBlue-light filter and low-light display modes to help your eyes\r\nMS Office Pre Installed\r\n2 GB RAM | 16 GB ROM | Expandable Upto 128 GB\r\n24.38 cm (9.6 inch) HD Display', '40000');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(3) NOT NULL,
  `cardnumber` int(10) NOT NULL,
  `card_expairy` varchar(60) NOT NULL,
  `cvc_code` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `userid` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `cardnumber`, `card_expairy`, `cvc_code`, `amount`, `userid`) VALUES
(1, 2147483647, '11/2', 489, 2447, 1),
(2, 2147483647, '11/3', 589, 60273, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(6) NOT NULL,
  `name` varchar(30) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `name`, `mobile`, `email`, `password`) VALUES
(1, 'anshu', '7896541236', 'anshu@gmail.com', '111111'),
(2, 'vishal', '7896541236', 'vishal@gmail.com', '111111');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartid`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`elecid`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartid` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `elecid` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
