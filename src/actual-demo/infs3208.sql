-- server version： 5.7.34
-- PHP version： 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


--
-- database： `infs3208`
--

-- --------------------------------------------------------


CREATE TABLE `booking` (
  `bid` int(11) NOT NULL,
  `guestname` varchar(50) NOT NULL,
  `startdate` varchar(50) NOT NULL,
  `enddate` varchar(50) NOT NULL,
  `guestnumber` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `booking` (`bid`, `guestname`, `startdate`, `enddate`, `guestnumber`) VALUES
(1, 'aa', 'Sun Oct 02 2022', 'Mon Oct 03 2022', 1),
(3, '1234', 'Sat Oct 01 2022', 'Sun Oct 02 2022', 3);

-- --------------------------------------------------------


CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, '123', '123'),
(24, '222', '222'),
(25, '12345', '12345');



ALTER TABLE `booking`
  ADD PRIMARY KEY (`bid`);


ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `booking`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;


ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;
