SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS Teacher;
DROP TABLE IF EXISTS Student;
DROP TABLE IF EXISTS Certificate;
DROP TABLE IF EXISTS ProgressLevel;
DROP TABLE IF EXISTS Questions;
DROP TABLE IF EXISTS Answers;
DROP TABLE IF EXISTS Login;
DROP TABLE IF EXISTS ScoreBoard;
SET FOREIGN_KEY_CHECKS=1;

CREATE TABLE Teacher (
id INT, -- Should this auto increment?
fname VARCHAR(50) NOT NULL,
lname VARCHAR(50) NOT NULL,
loginID INT NOT NULL, -- Do we need this?

PRIMARY KEY (id)
);

CREATE TABLE Student (
id INT, -- Should this auto increment?
fname VARCHAR(50) NOT NULL,
lname VARCHAR(50) NOT NULL,
teacherID INT NOT NULL UNIQUE,
scoreboardID INT NOT NULL UNIQUE DEFAULT '0',
loginID INT NOT NULL UNIQUE, -- Do we need this?

PRIMARY KEY (id)
);

CREATE TABLE Certificate (
id INT,
levelType VARCHAR(50), -- Is this the datatype we want?
levelID INT,

PRIMARY KEY (id)
);

CREATE TABLE ProgressLevel (
id INT,
studentID INT,

PRIMARY KEY (id)
);

CREATE TABLE Questions (
id INT,
singleDigitFirst INT, -- what is best datatype for actual equations?
singleDigitSecond INT,
doubleDigitFirst INT,
doubleDigitSecond INT,
placeValue INT, -- this should be a string
teacherOptions INT, -- do we want teachers to be able to build their own? Or only select from the list?
ProgressLevelID INT,

PRIMARY KEY (id)
);

CREATE TABLE Answers (
id INT, -- what is the best way to match answers to questions then trigger correct/incorrect msg
singleDigAns INT,
doubleDigAns INT,
placeValue INT,

PRIMARY KEY (id)
);

CREATE TABLE Login (
studentID INT UNIQUE, -- do we need to make these secure? -- Is login just ID or some sort of combo of name and id?
teacherID INT UNIQUE

);

CREATE TABLE ScoreBoard (
id INT,
score INT, -- how should this work and store student progress?
studentID INT,
teacherID INT,

PRIMARY KEY (id)
);

INSERT INTO Questions
(id, singleDigitFirst, singleDigitSecond, doubleDigitFirst, doubleDigitSecond)

VALUES
(0, 1, 1, 10, 10),
(1, 2, 2, 11, 11),
(2, 3, 3, 12, 12),
(3, 4, 4, 13, 13),
(4, 5, 5, 14, 14),
(5, 6, 6, 15, 15),
(6, 7, 7, 16, 16),
(7, 8, 8, 17, 17),
(8, 9, 9, 18, 18);

