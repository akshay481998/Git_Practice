create database Demo
use Demo

CREATE TABLE Student (
    ID INT PRIMARY KEY NOT NULL,
    Name VARCHAR(20) NOT NULL,
    Age INT NOT NULL,
    Address VARCHAR(25)
)

INSERT INTO Student (ID, Name, Age, Address) VALUES
    (1, 'Akshay Kadam', 20, '123 Delhi'),
    (2, 'Kiran Jadhav', 22, '456 Delhi'),
    (3, 'Arti Mode', 19, '789 Delhi'),
    (4, 'Sarthak Raj', 21, '101 Pune'),
    (5, 'Abhi Kale', 18, '222 Nashik');