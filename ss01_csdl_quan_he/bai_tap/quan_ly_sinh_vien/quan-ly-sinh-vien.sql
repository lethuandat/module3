create database `student_management`;
use `student_management`;
create table `student` (
<<<<<<< HEAD
	id int primary key auto_increment,
=======
    id int primary key auto_increment,
>>>>>>> e4b65c4a0e1e8b340ef7e1a685135d20ab697f78
    name varchar(45),
    age int,
    country varchar(45)
);
create table `class` (
<<<<<<< HEAD
	id int primary key auto_increment,
    name varchar(45)
);
create table `teacher` (
	id int primary key auto_increment,
=======
    id int primary key auto_increment,
    name varchar(45)
);
create table `teacher` (
    id int primary key auto_increment,
>>>>>>> e4b65c4a0e1e8b340ef7e1a685135d20ab697f78
    name varchar(45),
    age int,
    country varchar(45)
);
