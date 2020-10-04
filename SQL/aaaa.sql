DROP DATABASE IF EXISTS testing_system_Assignment_1;
CREATE DATABASE testing_system_Assignment_1;
USE testing_system_Assignment_1;



CREATE TABLE Department (
DepartmentID 	SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
DepartmentName 	VARCHAR(50) NOT NULL
);

CREATE TABLE Position (
PositionID 		SMALLINT UNSIGNED,
PositionName	ENUM("Dev","Test","Scrum Master","PM")
);
CREATE TABLE `Account` (
AccountID 		SMALLINT UNSIGNED,
Email			VARCHAR(255),
Username 		VARCHAR(255),
FullName		NVARCHAR(255),
DepartmentID 	TINYINT,
PositionID		TINYINT,
CeateDate		DATE
);


CREATE TABLE `Group` (
GroupID 		SMALLINT UNSIGNED,
AccountID		SMALLINT UNSIGNED,
CreatorID		TINYINT UNSIGNED,
CreatorDate		DATE
);

CREATE TABLE GroupAccount (
GroupID 	SMALLINT UNSIGNED,
AccountID	SMALLINT UNSIGNED,
JoinDate	DATE

);
CREATE TABLE TypeQuestion(
TypeID 			SMALLINT UNSIGNED,
TypeName		ENUM("Essay","Multiple-Choice")
);
CREATE TABLE CategoryQuestion(
CategoryID 		SMALLINT UNSIGNED,
CategoryName	CHAR(20)
);
CREATE TABLE Question(
QuestionID 		SMALLINT UNSIGNED,
Content			VARCHAR(255),
QuestionID		SMALLINT UNSIGNED,
isCorrect		Boolean
);
CREATE TABLE Answer(
AnswerID 		SMALLINT UNSIGNED,
Content			NVARCHAR(255),
QuestionID		TINYINT UNSIGNED,
isCorrect		Boolean
);

CREATE TABLE Exam(
ExamID 			SMALLINT UNSIGNED,
`Code`			TINYINT UNSIGNED,
Title			VARCHAR(255),
CategoryID		TINYINT UNSIGNED,
Duration			SMALLINT UNSIGNED,
CreatorID		TINYINT	UNSIGNED,
CreateDate 		DATE
);
CREATE TABLE ExamQuestion(
ExamID			SMALLINT UNSIGNED,
QuestionID		SMALLINT UNSIGNED);
	











