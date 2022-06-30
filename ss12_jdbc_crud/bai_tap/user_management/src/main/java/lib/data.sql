create database user_management;
use  user_management;

create table country (
country_id int primary key auto_increment,
country_name varchar(255),
country_location varchar(255));

create table users (
id int primary key auto_increment,
`name` varchar(45),
email varchar(45),
country_id int,
foreign key (country_id) references country (country_id));

insert into country (country_name, country_location)
values ("Việt Nam", "Đông Nam Á"),
 ("Thái Lan", "Đông Nam Á"),
 ("Trung Quốc", "Đông Á"),
 ("Hàn Quốc", "Đông Á"),
 ("Ấn Độ", "Nam Á");
 
 insert into users (`name`, email, country_id)
 values ("Nam", "nam@gmail.com", 2),
 ("Long", "long@gmail.com", 2),
 ("Huy", "huy@gmail.com", 1),
 ("Quân", "quan22@gmail.com", 3),
 ("Hoàng", "hoang34@gmail.com", 5);