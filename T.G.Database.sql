CREATE DATABASE T_GARARGE;

CREATE TABLE USERS(
USERS_ID INT (10) NOT NULL PRIMARY KEY, FirstName VARCHAR (20) NOT NULL, Surame VARCHAR (20) NOT NULL, Email VARCHAR (50) NOT NULL, Phone int (20) NOT NULL, HireDate DATE NULL, Qualifications VARCHAR NULL,
PRIMARY KEY (USERS_ID)
);

CREATE TABLE CUSTOMER(
CUS_ID INT (10) NOT NULL PRIMARY KEY, FirstName VARCHAR (20) NOT NULL, Surame VARCHAR (20) NOT NULL, Email VARCHAR (50) NOT NULL, Phone int (20),
PRIMARY KEY (CUS_ID),
FOREIGN KEY (VEHICALE_REG) REFERENCES VEHICALE(VEHICALE_REG)
);

CREATE TABLE VEHICLE(
VEHICLE_REG INT (10) NOT NULL PRIMARY KEY, VEHICLE_MODEL VARCHAR (20) NOT NULL, VEHICLE_YEAR DATE (10) NOT NULL, VEHICLE_COLOUR VARCHAR (20) NOT NULL,
PRIMARY KEY (VEHICALE_REG),
FOREIGN KEY (CUS_ID) REFERENCES CUSTOMER(CUS_ID)
);

CREATE TABLE W.O.F.(
WOF_NUM INT (10) PRIMARY KEY, WOF_RESULT VARCHAR (2),
PRIMARY KEY (WOF_NUM),
FOREIGN KEY (VEHICALE_REG) REFERENCES VEHICALE(VEHICALE_REG)
);

CREATE TABLE JOB(
JOB_ID INT (10) PRIMARY KEY,
PRIMARY KEY (JOB_ID),
FOREIGN KEY (VEHICALE_REG) REFERENCES VEHICALE(VEHICALE_REG),
FOREIGN KEY (CUS_ID) REFERENCES CUSTOMER(CUS_ID),
FOREIGN KEY (WOF_NUM) REFERENCES W.O.F.(WOF_NUM)
); 

CREATE TABLE test(test_ID int (10), test_Name VARCHAR (20)
);

INSERT into USERS (USERS_ID, FirstName, Surname, Email, Phone, HireDate, Qualifications)
VALUES ('','','','','','',''),
('','','','','','','');

INSERT into CUSTOMER (CUSTOMER_ID, FirstName, Surname, Email, Phone)
VALUES ('','','','',''),
('','','','','');

INSERT into VEHICLE (VEHICALE_REG, VEHICALE_MODEL, VEHICALE_YEAR, VEHICALE_COLOUR)
VALUES ('','','',''),
('','','','');

INSERT into W.O.F. (WOF_NUM, WOF_RESULT)
VALUES ('',''),
('','');

INSERT into test (test_ID, test_Name)
VALUES ('1','dave'),
('2','dude');


SELECT * USERS, CUSTOMER, VEHICALE, W.O.F.;

SELECT USERS, USERS.FirstName, CUSTOMER, CUSTOMER.FirstName
FROM USERS_ID, VEHICALE_REG, CUSTOMER_ID
WHERE USERS_ID = " " OR CUSTOMER_ID = " ";

UPDATE test
SET test_Name = 'daveset'
WHERE test_ID = 1;

ALTER TABLE test
DROP COLUMN test_ID;

DROP TABLE test;