CREATE TABLE `buytbl` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `userid` char(8) NOT NULL,
  `prodname` char(6) NOT NULL,
  `groupname` char(4) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `amount` smallint(6) NOT NULL,
  PRIMARY KEY (`num`),
  KEY `userid` (`userid`),
  CONSTRAINT `buytbl_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `usertbl` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `usertbl` (
  `userid` char(8) NOT NULL,
  `username` varchar(10) NOT NULL,
  `birthyear` int(20) NOT NULL,
  `addr` char(2) NOT NULL,
  `mobile1` char(3) DEFAULT NULL,
  `mobile2` char(8) DEFAULT NULL,
  `heigth` smallint(20) DEFAULT NULL,
  `mdate` date DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

