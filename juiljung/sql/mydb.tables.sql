CREATE TABLE `book_company` (
  `company_name` char(10) NOT NULL,
  `company_employee` char(10) DEFAULT NULL,
  `company_tel` char(20) DEFAULT NULL,
  PRIMARY KEY (`company_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `books` (
  `book_num` char(10) NOT NULL,
  `book_company` char(10) DEFAULT NULL,
  `book_name` char(10) DEFAULT NULL,
  `book_cost` char(10) DEFAULT NULL,
  `book_company_company_name` char(10) NOT NULL,
  PRIMARY KEY (`book_num`),
  KEY `fk_books_book_company_idx` (`book_company_company_name`),
  CONSTRAINT `fk_books_book_company` FOREIGN KEY (`book_company_company_name`) REFERENCES `book_company` (`company_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `consumer` (
  `consumer_num` char(10) NOT NULL,
  `consumer_name` char(10) DEFAULT NULL,
  `consumer_address` char(10) DEFAULT NULL,
  `consumer_tel` char(20) DEFAULT NULL,
  PRIMARY KEY (`consumer_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `order` (
  `order_num` char(10) NOT NULL,
  `book_num` char(10) DEFAULT NULL,
  `oder_date` char(10) DEFAULT NULL,
  `order_cost` char(10) DEFAULT NULL,
  `books_book_num` char(10) NOT NULL,
  `consumer_consumer_num` char(10) NOT NULL,
  PRIMARY KEY (`order_num`),
  KEY `fk_order_books1_idx` (`books_book_num`),
  KEY `fk_order_consumer1_idx` (`consumer_consumer_num`),
  CONSTRAINT `fk_order_books1` FOREIGN KEY (`books_book_num`) REFERENCES `books` (`book_num`),
  CONSTRAINT `fk_order_consumer1` FOREIGN KEY (`consumer_consumer_num`) REFERENCES `consumer` (`consumer_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
