-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2018-09-24 10:16:13
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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

CREATE TABLE IF NOT EXISTS `feeds` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `openid` varchar(255) NOT NULL,
  `user_avatar` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `images` text NOT NULL,
  `publish_address` varchar(255) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- 转存表中的数据 `feeds`
--

INSERT INTO `feeds` (`id`, `openid`, `user_avatar`, `user_name`, `content`, `images`, `publish_address`, `ctime`) VALUES
(1, 'opZhN5etBG7WXh5hVd7CN4w7v7as', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erxMnXnb4zE8dwdtTSCOqGicD3rxwGHzIjEWf2JPVgY9RDDP5AQrLaic1vGahyTYXMslwt0Fl4jf60w/132', '马浩东', 'try first oppenid', 'http://try.third.com/assets/wechat/wx648f891ef721c399.o6zAJs-M5KU0V-0AqWovUQH2p3p0.kEkDEH73TpGha917b647f30af0e0f8523196dbfd4ea7.jpg;http://try.third.com/assets/wechat/wx648f891ef721c399.o6zAJs-M5KU0V-0AqWovUQH2p3p0.TyAjencwxIoQ9bf5ee5deacdf9b48725cfc74b47b168.jpg', '悉尼', '2018-09-23 13:22:20'),
(2, 'opZhN5etBG7WXh5hVd7CN4w7v7as', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erxMnXnb4zE8dwdtTSCOqGicD3rxwGHzIjEWf2JPVgY9RDDP5AQrLaic1vGahyTYXMslwt0Fl4jf60w/132', '马浩东', '1', 'http://try.third.com/assets/wechat/wx648f891ef721c399.o6zAJs-M5KU0V-0AqWovUQH2p3p0.a14zFwo2O2Nya917b647f30af0e0f8523196dbfd4ea7.jpg;http://try.third.com/assets/wechat/wx648f891ef721c399.o6zAJs-M5KU0V-0AqWovUQH2p3p0.4OcjgW3Rr0WTa917b647f30af0e0f8523196dbfd4ea7.jpg;http://try.third.com/assets/wechat/wx648f891ef721c399.o6zAJs-M5KU0V-0AqWovUQH2p3p0.a9no9QFSLG7B40e2685f9f624c5e4b30ee62ac40d47b.jpg;http://try.third.com/assets/wechat/wx648f891ef721c399.o6zAJs-M5KU0V-0AqWovUQH2p3p0.VhuKddrpApMw70acffff8381569fcd7e388d578c5116.jpg;http://try.third.com/assets/wechat/wx648f891ef721c399.o6zAJs-M5KU0V-0AqWovUQH2p3p0.wUgPOO6gz4bH07d4fd23b9721f17967766b187eccbe6.jpg;http://try.third.com/assets/wechat/wx648f891ef721c399.o6zAJs-M5KU0V-0AqWovUQH2p3p0.EIW4GZpzrB0R07d4fd23b9721f17967766b187eccbe6.jpg;http://try.third.com/assets/wechat/wx648f891ef721c399.o6zAJs-M5KU0V-0AqWovUQH2p3p0.BbVlRAVmN6PU9bf5ee5deacdf9b48725cfc74b47b168.jpg;http://try.third.com/assets/wechat/wx648f891ef721c399.o6zAJs-M5KU0V-0AqWovUQH2p3p0.LsCRWENHLi4M9bf5ee5deacdf9b48725cfc74b47b168.jpg;http://try.third.com/assets/wechat/wx648f891ef721c399.o6zAJs-M5KU0V-0AqWovUQH2p3p0.KkKXpCghC1Xa9bf5ee5deacdf9b48725cfc74b47b168.jpg', '悉尼', '2018-09-23 13:27:35'),
(3, 'opZhN5SZ6bmfJnP6OB18pjf9QpJo', 'https://wx.qlogo.cn/mmopen/vi_32/zycMugKptp0jKhKJswXmJQAWJRynlUWuRYzSbtfmdTZWgJib81NABrnnibGricWuTaiaU782SHVnsDOdFEzlsXCwCA/132', '渡。', '2', 'http://try.third.com/assets/wechat/wx648f891ef721c399.o6zAJs82gmmeRoiv2cwCU8TR2oGk.Mi8HeJ6i1MVD40e2685f9f624c5e4b30ee62ac40d47b.jpg;http://try.third.com/assets/wechat/wx648f891ef721c399.o6zAJs82gmmeRoiv2cwCU8TR2oGk.km34RA4TEbnoa917b647f30af0e0f8523196dbfd4ea7.jpg;http://try.third.com/assets/wechat/wx648f891ef721c399.o6zAJs82gmmeRoiv2cwCU8TR2oGk.9TTGXvseFkwZ70acffff8381569fcd7e388d578c5116.jpg', '悉尼', '2018-09-23 13:43:26'),
(4, 'opZhN5etBG7WXh5hVd7CN4w7v7as', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erxMnXnb4zE8dwdtTSCOqGicD3rxwGHzIjEWf2JPVgY9RDDP5AQrLaic1vGahyTYXMslwt0Fl4jf60w/132', '马浩东', '123', '', '悉尼', '2018-09-23 14:23:34'),
(5, 'opZhN5etBG7WXh5hVd7CN4w7v7as', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erxMnXnb4zE8dwdtTSCOqGicD3rxwGHzIjEWf2JPVgY9RDDP5AQrLaic1vGahyTYXMslwt0Fl4jf60w/132', '马浩东', 'uhuii', '', '悉尼', '2018-09-23 14:44:50'),
(6, 'opZhN5etBG7WXh5hVd7CN4w7v7as', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erxMnXnb4zE8dwdtTSCOqGicD3rxwGHzIjEWf2JPVgY9RDDP5AQrLaic1vGahyTYXMslwt0Fl4jf60w/132', '马浩东', '789', '', '悉尼', '2018-09-23 15:02:09'),
(7, 'opZhN5etBG7WXh5hVd7CN4w7v7as', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erxMnXnb4zE8dwdtTSCOqGicD3rxwGHzIjEWf2JPVgY9RDDP5AQrLaic1vGahyTYXMslwt0Fl4jf60w/132', '马浩东', 'mahaodng ', '', '悉尼', '2018-09-23 15:32:30'),
(8, 'opZhN5etBG7WXh5hVd7CN4w7v7as', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erxMnXnb4zE8dwdtTSCOqGicD3rxwGHzIjEWf2JPVgY9RDDP5AQrLaic1vGahyTYXMslwt0Fl4jf60w/132', '马浩东', '123', '', '悉尼', '2018-09-23 15:58:44'),
(9, 'opZhN5etBG7WXh5hVd7CN4w7v7as', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erxMnXnb4zE8dwdtTSCOqGicD3rxwGHzIjEWf2JPVgY9RDDP5AQrLaic1vGahyTYXMslwt0Fl4jf60w/132', '马浩东', 'qweqwe', '', '悉尼', '2018-09-23 16:07:41'),
(10, 'opZhN5etBG7WXh5hVd7CN4w7v7as', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erxMnXnb4zE8dwdtTSCOqGicD3rxwGHzIjEWf2JPVgY9RDDP5AQrLaic1vGahyTYXMslwt0Fl4jf60w/132', '马浩东', '432423423ewrwe', '', '悉尼', '2018-09-23 16:08:02'),
(11, 'opZhN5etBG7WXh5hVd7CN4w7v7as', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erxMnXnb4zE8dwdtTSCOqGicD3rxwGHzIjEWf2JPVgY9RDDP5AQrLaic1vGahyTYXMslwt0Fl4jf60w/132', '马浩东', 'qweqwe', 'http://try.third.com/assets/wechat/wx648f891ef721c399.o6zAJs-M5KU0V-0AqWovUQH2p3p0.3HirdJ9Qa5Q440e2685f9f624c5e4b30ee62ac40d47b.jpg', '悉尼', '2018-09-23 16:30:00'),
(12, 'opZhN5etBG7WXh5hVd7CN4w7v7as', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erxMnXnb4zE8dwdtTSCOqGicD3rxwGHzIjEWf2JPVgY9RDDP5AQrLaic1vGahyTYXMslwt0Fl4jf60w/132', '马浩东', '纤维', '', '悉尼', '2018-09-24 07:12:00'),
(13, 'opZhN5etBG7WXh5hVd7CN4w7v7as', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erxMnXnb4zE8dwdtTSCOqGicD3rxwGHzIjEWf2JPVgY9RDDP5AQrLaic1vGahyTYXMslwt0Fl4jf60w/132', '马浩东', '1', '', '悉尼', '2018-09-24 07:13:53'),
(14, 'opZhN5etBG7WXh5hVd7CN4w7v7as', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erxMnXnb4zE8dwdtTSCOqGicD3rxwGHzIjEWf2JPVgY9RDDP5AQrLaic1vGahyTYXMslwt0Fl4jf60w/132', '马浩东', 'we', '', '悉尼', '2018-09-24 07:26:00'),
(15, 'opZhN5etBG7WXh5hVd7CN4w7v7as', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erxMnXnb4zE8dwdtTSCOqGicD3rxwGHzIjEWf2JPVgY9RDDP5AQrLaic1vGahyTYXMslwt0Fl4jf60w/132', '马浩东', 'www', '', '悉尼', '2018-09-24 07:29:01'),
(16, 'opZhN5etBG7WXh5hVd7CN4w7v7as', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erxMnXnb4zE8dwdtTSCOqGicD3rxwGHzIjEWf2JPVgY9RDDP5AQrLaic1vGahyTYXMslwt0Fl4jf60w/132', '马浩东', 'eee', '', '悉尼', '2018-09-24 07:48:43'),
(17, 'opZhN5etBG7WXh5hVd7CN4w7v7as', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erxMnXnb4zE8dwdtTSCOqGicD3rxwGHzIjEWf2JPVgY9RDDP5AQrLaic1vGahyTYXMslwt0Fl4jf60w/132', '马浩东', 'qweqwe', '', '悉尼', '2018-09-24 07:57:05'),
(18, 'opZhN5etBG7WXh5hVd7CN4w7v7as', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erxMnXnb4zE8dwdtTSCOqGicD3rxwGHzIjEWf2JPVgY9RDDP5AQrLaic1vGahyTYXMslwt0Fl4jf60w/132', '马浩东', 'weqweqweqw', '', '悉尼', '2018-09-24 07:58:32'),
(19, 'opZhN5etBG7WXh5hVd7CN4w7v7as', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erxMnXnb4zE8dwdtTSCOqGicD3rxwGHzIjEWf2JPVgY9RDDP5AQrLaic1vGahyTYXMslwt0Fl4jf60w/132', '马浩东', 'qwe', '', '悉尼', '2018-09-24 08:01:04'),
(20, 'opZhN5SZ6bmfJnP6OB18pjf9QpJo', 'https://wx.qlogo.cn/mmopen/vi_32/zycMugKptp0jKhKJswXmJQAWJRynlUWuRYzSbtfmdTZWgJib81NABrnnibGricWuTaiaU782SHVnsDOdFEzlsXCwCA/132', '渡。', '123', 'http://try.third.com/assets/wechat/wx648f891ef721c399.o6zAJs82gmmeRoiv2cwCU8TR2oGk.tRZCaZS5KXUXa917b647f30af0e0f8523196dbfd4ea7.jpg;http://try.third.com/assets/wechat/wx648f891ef721c399.o6zAJs82gmmeRoiv2cwCU8TR2oGk.RHOgGQwO7eg140e2685f9f624c5e4b30ee62ac40d47b.jpg;http://try.third.com/assets/wechat/wx648f891ef721c399.o6zAJs82gmmeRoiv2cwCU8TR2oGk.suctxccXeP8S70acffff8381569fcd7e388d578c5116.jpg', '悉尼', '2018-09-24 08:07:46');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
