CREATE DATABASE MyApp;

CREATE TABLE Users(
Id INT PRIMARY KEY IDENTITY(1, 1),
Name NVARCHAR(50) NOT NULL,
Surname NVARCHAR(50) NOT NULL,
Email NVARCHAR(50) UNIQUE,
RegistrationDate DATETIME DEFAULT(GETDATE()) CHECK(RegistrationDate <= GETDATE()),
ContactNumber NVARCHAR(50) DEFAULT '+994000000000' ,
Age INT CHECK(Age >= 18),
Address NVARCHAR(50)
);

DROP TABLE Users;
TRUNCATE TABLE Users;

INSERT INTO Users (Name, Surname, Email, RegistrationDate, ContactNumber, Age, Address)
VALUES ('Anar', 'Eliyev', 'revan@gmail.com', '2024-06-21', '+99412345678', 19, 'agcabedi'),
('Revan', 'Eliyev', 'revann@gmail.com', '2024-06-21', '+99412345678', 19, 'agcabedi'),
('Abil', 'Eliyev', 'revannn@gmail.com', '2024-06-21','+99412345678', 19, 'agcabedi');


CREATE DATABASE Catagories;

CREATE TABLE Catagories(
Id INT PRIMARY KEY IDENTITY(1, 1),
Name NVARCHAR(50) NOT NULL,
Slug NVARCHAR(50) UNIQUE,
CreatedAt DATETIME CHECK(CreatedAt < GETDATE()) DEFAULT GETDATE(),
IsActive BIT DEFAULT 0,
);

SELECT Name, Surname, Email FROM Users;
SELECT Name, IsActive FROM Catagories;