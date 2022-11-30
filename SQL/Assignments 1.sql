CREATE DATABASE IF NOT EXISTS TrainingManagement;
use TrainingManagement;
CREATE TABLE IF NOT EXISTS Trainee(
TraineeID int NOT NULL auto_increment,
PRIMARY KEY (TraineeID),
Full_Name varchar(100) NOT NULL,
Birth_Date DATE,
Gender Enum ('male', 'female', 'unknown'),
ET_IQ DECIMAL(20,0),
ET_Gmath DECIMAL(20,0),
ET_English DECIMAL(50,0),
Training_Class varchar(255),
Evaluation_Notes varchar(255)
);
