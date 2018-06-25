CREATE DATABASE Student;

CREATE TABLE Student(
Student_ID INT (10), FirstName VARCHAR (20), Surname VARCHAR (50), Email VARCHAR (60),
PRIMARY KEY (Student_ID)
);

CREATE TABLE Tutor(
Tutor_ID INT (10), FirstName VARCHAR (20), Surame VARCHAR (20), Location VARCHAR (30)
PRIMARY KEY (Tutor_ID),
FOREIGN KEY (Paper_ID) REFERENCES Papers(Paper_ID),
FOREIGN KEY (Course_ID) REFERENCES Course(Course_ID)
);

CREATE TABLE Room(
Room_ID INT (10), RoomName VARCHAR (20),
PRIMARY KEY (Room_ID),
FOREIGN KEY (Paper_ID) REFERENCES Papers(Paper_ID)
);

CREATE TABLE Papers(
Paper_ID VARCHAR (10), PaperName VARCHAR (20),
PRIMARY KEY (Paper_ID),
FOREIGN KEY (Room_ID) REFERENCES Room(Room_ID),
FOREIGN KEY (Tutor_ID) REFERENCES Tutor(Tutor_ID),
FOREIGN KEY (Tutor.FirstName) REFERENCES Tutor(FirstName),
FOREIGN KEY (Tutor.Surname) REFERENCES Tutor(Surname)
);

CREATE TABLE Course(
Course_ID INT (10), 
CourseName VARCHAR (30),
Student_ID INT (10),
Tutor_ID INT (10),
Paper_ID VARCHAR (10),
Tutor.FirstName VARCHAR (20),
Tutor.Surname VARCHAR (50),
PRIMARY KEY (Course_ID),
FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID),
FOREIGN KEY (Tutor.FirstName) REFERENCES Tutor(FirstName),
FOREIGN KEY (Tutor.Surname) REFERENCES Tutor(Surname),
FOREIGN KEY (Paper_ID) REFERENCES Papers(Paper_ID)
);

CREATE TABLE Admin(
Admin_ID INT (15)
);

INSERT into Student (Student_ID, FirstName, Surname, Email)
VALUES ('21600681','Dude','Nixion','DNix@email.com');

INSERT into Papers (Paper_ID, PaperName)
VALUES ('21600681','Dude');

INSERT into Room (Room_ID, RoomName)
VALUES ('21600681','Dude');

INSERT into Tutor (Tutor_ID, FirstName, Surame, Location)
VALUES ('21600681','Dude','Nixion','DNix@email.com');

INSERT into Admin (Admin_ID)
VALUES ('21600681');
