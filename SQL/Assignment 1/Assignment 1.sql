drop database if exists Testing_System_Assignment_1 ;
CREATE DATABASE if not exists Testing_System_Assignment_1 ;
USE Testing_System_Assignment_1 ;
drop table if exists Department;
CREATE TABLE Department (
DepartmentID                TINYINT AUTO_INCREMENT PRIMARY KEY,
DepartmentName              NVARCHAR(50) NOT NULL

);

CREATE TABLE Position (
PositionID                  SMALLINT AUTO_INCREMENT PRIMARY KEY ,
PositionName                NVARCHAR(50) NOT NULL
);

CREATE TABLE Account (
AccountID                   SMALLINT AUTO_INCREMENT PRIMARY KEY ,
Email                       NVARCHAR(50) NOT NULL ,
Fullname                    VARCHAR(50) ,
DepartmentID                int ,
PositionID                  int ,
createDate                  DATE,
FOREIGN KEY (DepartmentID) REFERENCES Department (DepartmentID)
);
CREATE TABLE Group (
GroupID                     SMALLINT AUTO_INCREMENT PRIMARY KEY,
GroupName                   NVARCHAR(50) NOT NULL,
CreatorID                   INT NOT NULL,
CreateDate                  DATE
)
CREATE TABLE GroupAccount (
GroupID                     SMALLINT AUTO_INCREMENT PRIMARY KEY,
AccountID                   NVARCHAR(50) NOT NULL,
JoinDate                    DATE
)
CREATE TABLE TypeQuestion (
TypeID                      SMALLINT AUTO_INCREMENT PRIMARY KEY,
TypeName                    NVARCHAR(100) NOT NULL
)
CREATE TABLE CategoryQuestion (
CategoryID                  SMALLINT AUTO_INCREMENT PRIMARY KEY,
CategoryName                NVARCHAR(100) NOT NULL
)
CREATE TABLE Question (
QuestionID                  SMALLINT AUTO_INCREMENT PRIMARY KEY,
Content                     NVARCHAR(100) NOT NULL,
CategoryID                  NVARCHAR(100) NOT NULL,
TypeID                      NVARCHAR(100) NOT NULL,
CreatorID                   INT NOT NULL,
CreateDate                  DATE
)
CREATE TABLE Answer (
AnswerID                    MEDIUMINT AUTO_INCREMENT PRIMARY KEY,
Content                     NVARCHAR(100) NOT NULL,
QuestionID                  NVARCHAR(100) NOT NULL,
isCorrect                   VARCHAR(50) NOT NULL,
)
CREATE TABLE Exam (
ExamID                      SMALLINT AUTO_INCREMENT PRIMARY KEY,
Code                        INT NOT NULL,
Title                       NVARCHAR(50) NOT NULL,
CategoryID                  NVARCHAR(100) NOT NULL,
Duration                    DATE,
CreatorID                   INT NOT NULL,
CreateDate                  DATE
)
CREATE TABLE ExamQuestion (
ExamID                      SMALLINT AUTO_INCREMENT PRIMARY KEY,
QuestionID                  NVARCHAR(50) NOT NULL,
)