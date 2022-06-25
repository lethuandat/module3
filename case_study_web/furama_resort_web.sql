create database if not exists furama_resort_web;
use furama_resort_web;

create table position (
position_id int primary key,
position_name varchar(45),
flag bit(1) default 0
);

create table education_degree (
education_degree_id int primary key,
education_degree_name varchar(45),
flag bit(1) default 0
);

create table division (
division_id int primary key,
division_name varchar(45),
flag bit(1) default 0
);

create table service_type (
service_type_id int primary key,
service_type_name varchar(45),
flag bit(1) default 0
);

create table customer_type (
customer_type_id int primary key,
customer_type_name varchar(45),
flag bit(1) default 0
);

create table rent_type (
rent_type_id int primary key,
rent_type_name varchar(45),
rent_type_cost double,
flag bit(1) default 0
);

create table `user` (
username varchar(255) primary key,
`password` varchar(255),
flag bit(1) default 0
);

create table `role` (
role_id int primary key,
role_name varchar(255),
flag bit(1) default 0
);

create table user_role (
role_id int,
username varchar(255),
flag bit(1) default 0,
primary key (role_id, username),
foreign key (role_id) references `role` (role_id),
foreign key (username) references `user` (username)
);

create table attach_service (
attach_service_id int primary key,
attach_service_name varchar(45),
attach_service_cost double,
attach_service_unit int,
attach_service_status varchar(45),
flag bit(1) default 0
);

create table employee (
employee_id int primary key,
employee_name varchar(45),
employee_birthday date,
employee_id_card varchar(45),
employee_salary double,
employee_phone varchar(45),
employee_email varchar(45),
employee_address varchar(45),
position_id int,
education_degree_id int,
division_id int,
username varchar(255),
flag bit(1) default 0,
foreign key (position_id) references position (position_id),
foreign key (education_degree_id) references education_degree (education_degree_id),
foreign key (division_id) references division (division_id),
foreign key (username) references `user` (username)
);

create table customer (
customer_id int primary key,
customer_type_id int,
customer_name varchar(45),
customer_birthday date,
customer_gender bit(1),
customer_id_card varchar(45),
customer_phone varchar(45),
customer_email varchar(45),
customer_address varchar(45),
flag bit(1) default 0,
foreign key (customer_type_id) references customer_type (customer_type_id)
);

create table service (
service_id int primary key,
service_name varchar(45),
service_area int,
service_cost double,
service_max_people int,
rent_type_id int,
service_type_id int,
standard_room varchar(45),
description_other_convenence varchar(45),
pool_area double,
number_of_floors int,
flag bit(1) default 0,
foreign key (rent_type_id) references rent_type (rent_type_id),
foreign key (service_type_id) references service_type (service_type_id)
);

create table contract (
contract_id int primary key,
contract_start_date datetime,
contract_end_date datetime,
contract_deposit double,
contract_total_money double,
employee_id int,
customer_id int,
service_id int,
flag bit(1) default 0,
foreign key (employee_id) references employee (employee_id),
foreign key (customer_id) references customer (customer_id),
foreign key (service_id) references service (service_id)
);

create table contract_detail (
contract_detail_id int primary key,
contract_id int,
attach_service_id int,
quantity int,
flag bit(1) default 0,
foreign key (contract_id) references contract (contract_id),
foreign key (attach_service_id) references attach_service (attach_service_id)
);