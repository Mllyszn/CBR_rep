-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2024 at 12:03 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cbr_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` int(11) UNSIGNED NOT NULL,
  `Q_id` int(11) UNSIGNED NOT NULL,
  `answer` varchar(255) NOT NULL,
  `true_false` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `Q_id`, `answer`, `true_false`) VALUES
(1, 4, 'People with auditory impairments', 0),
(2, 4, 'Blind people', 1),
(3, 4, 'People have trouble walking', 0),
(4, 5, 'no', 0),
(5, 6, 'yes', 0),
(9, 6, 'Maximum speed', 1),
(10, 6, 'Minimum speed', 0),
(11, 6, 'Adversary speed', 0),
(12, 7, 'no', 0),
(13, 7, 'yes', 1),
(14, 8, 'Symbol B', 0),
(15, 8, 'Symbol A', 0),
(16, 8, 'Neither', 1),
(17, 9, 'brake', 1),
(18, 9, 'let go of gas', 0),
(19, 9, 'nothing', 0),
(20, 10, 'yes', 1),
(21, 10, 'no', 0),
(22, 11, 'Brake', 0),
(23, 11, 'Let go of gas', 1),
(24, 11, 'Nothing', 0),
(25, 12, 'no', 1),
(26, 12, 'yes', 0),
(27, 14, 'The concentration decreases', 0),
(28, 14, 'The concentration improves', 1),
(29, 13, 'More fuel use', 1),
(30, 13, 'less fuel use', 0),
(31, 13, 'nothing', 0),
(32, 15, '50 meters', 1),
(33, 15, '25 meters', 0),
(34, 15, '100 meters', 0),
(35, 16, 'Race track', 0),
(36, 16, 'Roundabout', 1),
(37, 18, 'No vehicles', 0),
(38, 18, 'Cyclists', 1),
(39, 18, 'Motor vehicles', 0),
(40, 18, 'Sign A', 0),
(41, 19, 'Sign B', 0),
(42, 19, 'Transport of dangerous materials', 0),
(43, 19, 'Deceleration lane motorway', 1),
(44, 19, 'Diversion', 0),
(45, 20, 'yes', 1),
(46, 20, 'no', 0),
(47, 21, 'Winter tyre', 0),
(48, 21, 'Normal tyre', 0),
(49, 21, 'Broad tyre', 1),
(50, 2, '4 years', 0),
(51, 2, '1 years', 1),
(52, 2, '3 years', 0),
(53, 3, '14 meters', 0),
(54, 3, '5 meters', 1),
(55, 3, '25 meters', 0),
(56, 5, 'yes', 1);

-- --------------------------------------------------------

--
-- Table structure for table `chapter`
--

CREATE TABLE `chapter` (
  `id` int(11) UNSIGNED NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chapter`
--

INSERT INTO `chapter` (`id`, `category`) VALUES
(1, 'Engineering, maintenance and inspection of vehicles'),
(6, 'Environmentally-friendly and energy efficient driving'),
(2, 'General provisions'),
(16, 'Give priority at crossroads'),
(12, 'Give priority at turns'),
(8, 'Give priority to the blind, the disabled and pedestrians'),
(4, 'Interior, loading and towing of vehicles'),
(9, 'Place on the road and pre-sorting'),
(17, 'Priority vehicles, military convoys, funeral processions and trams'),
(15, 'Response to accidents and car failure while in transit'),
(7, 'Risks related properties and state own vehicle'),
(13, 'Risks related to the presence and behavior of other traffic'),
(14, 'Risks related to the state of the driver'),
(10, 'Speed'),
(3, 'Terms authorization to drive and driving licenses'),
(11, 'Traffic signs'),
(5, 'Use of seatbelts and helmets; seating area');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `id` int(11) UNSIGNED NOT NULL,
  `questions` varchar(255) NOT NULL,
  `category_id` int(11) UNSIGNED NOT NULL,
  `type` int(10) UNSIGNED NOT NULL,
  `feedback` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`id`, `questions`, `category_id`, `type`, `feedback`) VALUES
(2, 'after, how many years must a hybrid car first be APK tested?', 1, 1, 'Hybrid car must be, like a petrol-fuelled car, first be APK tested within the first 4 years.'),
(3, 'You are driving 50 km\\/h. How many meters is the braking distance?', 7, 1, '2 meters is the braking distance'),
(4, 'who are these signs meant for?', 8, 0, 'This sign is sign is meant for people with auditory impairment, someone could, for example, place this sign on the back of their moped.'),
(5, 'You want to turn left here, is that allowed?', 9, 2, 'It is too late, there is no more block marking to be seen. You are no longer allowed to turn left!'),
(6, 'What does his sign indicate?', 10, 1, 'The round sign with the red edge over the hectometre post indicates that this is the maximum speed for that road.\",\"o'),
(7, 'Do you expect a turn to the right if you see this sign?', 11, 2, 'With this board you expect a left turn as the arrow is pointing to that direction.'),
(8, 'Which of these symbols means: coolant?', 1, 1, 'Symbol B means that something is wrong with the car\'s cooling system, or that the coolant needs to be refilled.'),
(9, 'You\'re driving 50 km\\/h. What do you do?', 13, 4, 'You have a clear overview of the road and there are no other traffic participants. You can maintain this speed.'),
(10, 'You want to turn left. Do you need to give priority to the cyclist?', 12, 2, 'You need to give priority to the cyclist. After all, the cyclist is going straight on the same road as you are. This still concerns the same road, even if you are not on the same piece of road, because it is a bicycle path.'),
(11, 'You\'re driving 70 km\\/h. What do you do?', 13, 4, 'The driver in front of you is braking. You also brake to avoid a collision, even though the indicated maximum speed is 70 km\\/h. You do not know what happened down the road.'),
(12, 'You have driving licence B. Are you allowed to transport a 1750 kg trailer using a car that weighs 2000 kg?', 3, 2, 'With a driving licence B, the combination of the pulling vehicle and trailer may not be more than 3500 kg. In the case above, the total is 3750 kg, which is too much.'),
(13, 'Wat is het gevolg van een lage bandenspanning?', 6, 1, 'Door een te lage bandenspanning ontstaat er meer weerstand tussen de banden en het wegdek, waardoor het brandstofverbruik hoger ligt.'),
(14, 'What influence does fatigue have on the driver\'s concentration?', 14, 1, 'Fatigue has a negative effect on you when you are behind the wheel. It is important to see if you can still drive.'),
(15, 'What following distance do you minimally keep at 90 km\\/h?', 13, 1, 'To calculate the minimum following distance, you can calculate the following sum: (speed\\/2)+10%. So, with a speed of 90 km\\/h, the minimum following distance is 90\\/2=45 ? 45+10%=49,5. Then you choose the answer closest to the result of the sum, which is'),
(16, 'You are in the water with your car. Is it a good idea to turn off the contact?\"', 15, 2, 'When you disable the contact, the lights will also turn off. The lights will actually be usefull for help to find you. Also, the electronic windows will be inoperable.'),
(17, ' Are you allowed to park 2 meters before an intersection?', 16, 2, 'You are not allowed to park within 5 meters of an intersection.'),
(18, 'A bus wants to drive away in the built-up area. Does a funeral procession need to yield to the bus?', 17, 2, 'A funeral procession has priority regarding a bus that wants to drive away from the bus stop in a built-up area.'),
(19, 'Wich sign indicates the built-up area?', 10, 1, 'Sign B: \'Amsterdam\' indicates you are driving into the built-up area. Sign A indicates a maximum speed.'),
(20, 'What does this sign indicate?', 11, 1, 'When you are transporting dangerous goods, you have to follow this route.'),
(21, 'You are driving in the rain. Which tyre gives you the least chance on aquaplaning?', 7, 1, 'Winter tyres give you the smallest chance on aquaplaning, because those tyres have the deepest profile which helps them drain the water most effectively so no layer of water remains between the tyre and the road surface.');

-- --------------------------------------------------------

--
-- Table structure for table `img`
--

CREATE TABLE `img` (
  `id` int(11) UNSIGNED NOT NULL,
  `Q_id` int(11) UNSIGNED NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `img`
--

INSERT INTO `img` (`id`, `Q_id`, `photo`) VALUES
(1, 2, 'ef_270.JPG'),
(2, 3, '168.png'),
(3, 4, 'dsh.png'),
(4, 5, '336.png'),
(5, 6, '7R-A16-52,8.png'),
(6, 7, 'J05.png'),
(7, 8, 's_029.png'),
(8, 9, 'gvr_011a.jpg'),
(9, 10, '063.png'),
(10, 11, 'gvr_239b.jpg'),
(11, 12, '131b.png'),
(12, 14, 'ef_341.jpg'),
(13, 13, 'ef_180.JPG'),
(14, 15, '100.png'),
(15, 16, '149.png'),
(16, 17, '109.png'),
(17, 18, 'a01-50_h1.png'),
(18, 19, 'k14.png'),
(19, 20, '175.png'),
(20, 21, '162b.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `answer` (`Q_id`);

--
-- Indexes for table `chapter`
--
ALTER TABLE `chapter`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category` (`category`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category_id`);

--
-- Indexes for table `img`
--
ALTER TABLE `img`
  ADD PRIMARY KEY (`id`),
  ADD KEY `img` (`Q_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `chapter`
--
ALTER TABLE `chapter`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `img`
--
ALTER TABLE `img`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answer` FOREIGN KEY (`Q_id`) REFERENCES `exam` (`id`);

--
-- Constraints for table `exam`
--
ALTER TABLE `exam`
  ADD CONSTRAINT `category` FOREIGN KEY (`category_id`) REFERENCES `chapter` (`id`);

--
-- Constraints for table `img`
--
ALTER TABLE `img`
  ADD CONSTRAINT `img` FOREIGN KEY (`Q_id`) REFERENCES `exam` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
