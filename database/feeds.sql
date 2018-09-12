-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2018-09-04 07:49:30
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `wui1805`
--

-- --------------------------------------------------------

--
-- 表的结构 `feeds`
--
DROP TABLE IF EXISTS `feeds`;
CREATE TABLE IF NOT EXISTS `feeds` (
  `id` int(12) NOT NULL AUTO_INCREMENT, 
  `user_avatar` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL, 
  `content` varchar(255) NOT NULL,  
  `images` varchar(255) NOT NULL, 
  `publish_time` varchar(255) NOT NULL, 
  `publish_address` varchar(255) NOT NULL, 
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `feeds` (`user_avatar`,`user_name`,`content`,`images`,`publish_time`,`publish_address`) VALUES
('http://img2.woyaogexing.com/2018/09/10/bc867a2c5dd84b8abe83cd20f95b2280!400x400.jpeg','欣玥','最近科技圈最火的手机，应该就属vivo X23了。','http://img13.360buyimg.com/n7/jfs/t20293/89/697940413/175156/2dc4fbd1/5b15ffd5Nccf91838.jpg;http://img13.360buyimg.com/n7/jfs/t20293/89/697940413/175156/2dc4fbd1/5b15ffd5Nccf91838.jpg','8分钟前','墨尔本')，
('http://img2.woyaogexing.com/2018/09/10/bc867a2c5dd84b8abe83cd20f95b2280!400x400.jpeg','欣玥','最近科技圈最火的手机，应该就属vivo X23了。','https://article-fd.zol-img.com.cn/t_s200x150/g5/M00/0A/0A/ChMkJluM_M-IOxrPAAESq-GbdG4AArbJQO60kEAARLD446.jpg;https://article-fd.zol-img.com.cn/t_s200x150/g5/M00/0A/0A/ChMkJluM_M-IOxrPAAESq-GbdG4AArbJQO60kEAARLD446.jpg','8分钟前','墨尔本');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
