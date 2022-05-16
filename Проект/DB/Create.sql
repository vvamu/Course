create database NuCharacter;

use NuCharacter;

CREATE TABLE _GROUP 
(
    ID_Group int IDENTITY(1,1) PRIMARY KEY,
    Name varchar(15),
    DateCreate datetime,
    DateLastEdit datetime
)

CREATE TABLE CHARACTER 
(
    Id int IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(15),
    ID_Group int FOREIGN KEY REFERENCES _GROUP(ID_Group)

    

)

CREATE TABLE USER 
(
    Id_User int IDENTITY(1,1) PRIMARY KEY,
    Login VARCHAR(15),
    PASSWORD VARCHAR(10)
)



INSERT INTO _GROUP(Name,DateCreate,DateLastEdit) values
 ('Group1', GETDATE(), GETDATE()),
 ('Group2', GETDATE(), GETDATE());

 SELECT * FROM _GROUP
 SELECT * FROM [CHARACTER]

INSERT into CHARACTER(Name,ID_Group) VALUES
('CH1',1),
('CH2',1),
('CH3',2)

SELECT * FROM _GROUP g join [CHARACTER] c on g.ID_Group=c.ID_Group where g.ID_Group = 1
