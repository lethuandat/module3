create database `student_management`;
use `student_management`;
create table `Student` (
	id int primary key auto_increment,
    name varchar(45),
    age int,
    country varchar(45)
);
create table `Class` (
	id int primary key auto_increment,
    name varchar(45)
);
create table `Teacher` (
	id int primary key auto_increment,
    name varchar(45),
    age int,
    country varchar(45)
);