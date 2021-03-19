create DATABASE sqldb;
use sqldb;
CREATE TABLE usertbl
(userID 	CHAR(8) NOT NULL PRIMARY KEY,
 name 		VARCHAR(10) NOT NULL,
 birthYear	INT NOT NULL,
 addr		CHAR(2) NOT NULL,
 mobile1	CHAR(3),
 mobile2	CHAR(8),
 height		SMALLINT,
 mDate		DATE);
 
 CREATE TABLE buytbl
 (num		INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
  userID 	CHAR(8) NOT NULL,
  prodName	CHAR(6) NOT NULL,
  groupName CHAR(4),
  price		INT NOT NULL, 
  amount	SMALLINT NOT NULL,
  FOREIGN KEY (userID) REFERENCES usertbl(userID)
 );