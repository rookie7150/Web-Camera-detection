-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-10-21 14:35:33
-- 伺服器版本： 10.4.32-MariaDB
-- PHP 版本： 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `camera`
--

-- --------------------------------------------------------

--
-- 資料表結構 `camerainformation`
--

CREATE TABLE `camerainformation` (
  `id` int(100) NOT NULL,
  `cameraName` varchar(100) NOT NULL,
  `isFocus` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `camerainformation`
--

INSERT INTO `camerainformation` (`id`, `cameraName`, `isFocus`) VALUES
(1, 'camera1', 0),
(2, 'camera2', 0),
(3, 'camera3', 0),
(4, 'camera4', 0),
(5, 'camera5', 0),
(6, 'camera6', 0);

-- --------------------------------------------------------

--
-- 資料表結構 `feature`
--

CREATE TABLE `feature` (
  `id` int(11) NOT NULL,
  `personId` int(100) NOT NULL,
  `feature` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `feature`
--

INSERT INTO `feature` (`id`, `personId`, `feature`, `color`) VALUES
(721, 99, 'dress', 'orange'),
(722, 99, 'jacket', 'yellow'),
(723, 99, 'shoe', 'gray'),
(724, 100, 'skirt', 'cyan'),
(725, 100, 'shirt', 'gray'),
(726, 100, 'shoe', 'gray'),
(727, 101, 'bag', 'yellow'),
(728, 101, 'shoe', 'brown'),
(729, 101, 'shirt', 'white'),
(730, 101, 'jacket', 'white'),
(731, 101, 'shorts', 'gray'),
(732, 102, 'shoe', 'gray'),
(733, 102, 'jacket', 'gray'),
(734, 102, 'shirt', 'white'),
(735, 102, 'skirt', 'black'),
(736, 102, 'skirt', 'black'),
(737, 102, 'sunglass', 'gray'),
(738, 102, 'sunglass', 'gray'),
(739, 103, 'pants', 'pink'),
(740, 103, 'shirt', 'yellow'),
(741, 103, 'bag', 'gray'),
(742, 103, 'shoe', 'pink'),
(743, 104, 'skirt', 'blue'),
(744, 104, 'shoe', 'gray'),
(745, 104, 'shirt', 'green'),
(746, 104, 'jacket', 'green'),
(747, 104, 'bag', 'gray');

-- --------------------------------------------------------

--
-- 資料表結構 `featurern`
--

CREATE TABLE `featurern` (
  `id` int(11) NOT NULL,
  `personId` int(100) NOT NULL,
  `feature` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `featurern`
--

INSERT INTO `featurern` (`id`, `personId`, `feature`, `color`) VALUES
(1, 1, 'sunglass', 'Black'),
(2, 1, 'dress', 'Black'),
(3, 1, 'shoe', 'Black'),
(4, 2, 'sunglass', 'Black'),
(5, 2, 'shirt', 'White'),
(6, 2, 'pants', 'Blue'),
(7, 2, 'bag', 'Brown'),
(8, 2, 'shoe', 'Purple'),
(9, 3, 'hat', 'Red'),
(10, 3, 'shirt', 'Red'),
(11, 3, 'pants', 'Black'),
(12, 3, 'shoe', 'Black'),
(13, 4, 'shirt', 'Blue'),
(14, 4, 'pants', 'Blue'),
(15, 5, 'shirt', 'Black'),
(16, 5, 'pants', 'Blue'),
(17, 6, 'shirt', 'Black'),
(18, 6, 'pants', 'Blue'),
(19, 6, 'shoe', 'Black'),
(20, 7, 'shirt', 'White'),
(21, 7, 'pants', 'Blue'),
(22, 7, 'shoe', 'Brown'),
(23, 8, 'hat', 'Blue'),
(24, 8, 'shirt', 'White'),
(25, 8, 'pants', 'Blue'),
(26, 8, 'bag', 'Blue'),
(27, 9, 'shirt', 'Blue'),
(28, 9, 'pants', 'Blue'),
(29, 9, 'shoe', 'White'),
(30, 9, 'bag', 'Brown'),
(31, 10, 'shirt', 'Red'),
(32, 10, 'pants', 'Black'),
(33, 10, 'shoe', 'Brown'),
(34, 11, 'shirt', 'Blue'),
(35, 11, 'pants', 'Blue'),
(36, 11, 'bag', 'Brown'),
(37, 11, 'shoe', 'Purple'),
(106, 71, 'skirt', 'red'),
(107, 71, 'shirt', 'gray'),
(108, 71, 'sunglass', 'brown'),
(109, 71, 'shoe', 'brown'),
(110, 72, 'skirt', 'red'),
(111, 72, 'shirt', 'gray'),
(112, 72, 'sunglass', 'brown'),
(113, 72, 'shoe', 'brown'),
(114, 73, 'shirt', 'gray'),
(115, 73, 'pants', 'gray'),
(116, 73, 'shoe', 'brown'),
(117, 73, 'bag', 'gray');

-- --------------------------------------------------------

--
-- 資料表結構 `personinformation`
--

CREATE TABLE `personinformation` (
  `id` int(11) NOT NULL,
  `inCamera` int(100) NOT NULL,
  `Picture` int(100) NOT NULL,
  `startTime` varchar(100) NOT NULL,
  `endTime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `personinformation`
--

INSERT INTO `personinformation` (`id`, `inCamera`, `Picture`, `startTime`, `endTime`) VALUES
(99, 1, 99, '2024-01-01 12:00', '2024-01-02 12:00'),
(100, 1, 100, '2024-01-01 12:00', '2024-01-02 12:00'),
(101, 1, 101, '2024-01-01 12:00', '2024-01-02 12:00'),
(102, 1, 102, '2024-01-01 12:00', '2024-01-02 12:00'),
(103, 1, 103, '2024-01-01 12:00', '2024-01-02 12:00'),
(104, 1, 104, '2024-01-01 12:00', '2024-01-02 12:00'),
(105, 1, 105, '2024-01-01 12:00', '2024-01-02 12:00'),
(106, 1, 106, '2024-01-01 12:00', '2024-01-02 12:00'),
(107, 1, 107, '2024-01-01 12:00', '2024-01-02 12:00'),
(108, 1, 108, '2024-01-01 12:00', '2024-01-02 12:00'),
(202, 1, 202, '2024-01-01 12:00', '2024-01-02 12:00');

-- --------------------------------------------------------

--
-- 資料表結構 `personinformationrn`
--

CREATE TABLE `personinformationrn` (
  `id` int(11) NOT NULL,
  `inCamera` int(100) NOT NULL,
  `Picture` varchar(100) NOT NULL,
  `startTime` varchar(100) NOT NULL,
  `endTime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `personinformationrn`
--

INSERT INTO `personinformationrn` (`id`, `inCamera`, `Picture`, `startTime`, `endTime`) VALUES
(1, 1, '2', '2023-01-01 12:00', '2023-01-01 12:10'),
(2, 2, '3', '2023-01-01 12:00', '2023-01-01 12:30'),
(3, 6, '4', '2023-01-02 13:00', '2023-01-02 13:05'),
(4, 2, '5', '2023-01-02 6:00', '2023-01-02 6:34'),
(5, 3, '6', '2023-01-06 7:00', '2023-01-06 7:12'),
(6, 4, '7', '2023-01-06 16:00', '2023-01-06 16:29'),
(7, 4, '8', '2023-01-08 9:00', '2023-01-08 9:15'),
(8, 5, '9', '2023-01-08 14:00', '2023-01-08 14:11'),
(9, 6, '10-1', '2023-01-11 12:00', '2023-01-11 12:03'),
(10, 4, '10-2', '2023-01-11 15:00', '2023-01-11 15:10'),
(11, 1, '11', '2023-01-11 15:10', '2023-01-11 15:22'),
(71, 1, '71', '2024-12-12 12:00', '2024-12-02 12:00'),
(72, 1, '72', '2024-12-12 12:00', '2024-12-02 12:00'),
(73, 1, '73', '2024-12-12 12:00', '2024-12-02 12:00');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `camerainformation`
--
ALTER TABLE `camerainformation`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `feature`
--
ALTER TABLE `feature`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `featurern`
--
ALTER TABLE `featurern`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `personinformation`
--
ALTER TABLE `personinformation`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `personinformationrn`
--
ALTER TABLE `personinformationrn`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `camerainformation`
--
ALTER TABLE `camerainformation`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `feature`
--
ALTER TABLE `feature`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=864;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `featurern`
--
ALTER TABLE `featurern`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `personinformation`
--
ALTER TABLE `personinformation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `personinformationrn`
--
ALTER TABLE `personinformationrn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
