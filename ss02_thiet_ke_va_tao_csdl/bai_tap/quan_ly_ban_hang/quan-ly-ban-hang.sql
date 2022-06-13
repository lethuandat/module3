create database `sale_management`;
use `sale_management`;
create table `customer` (
	c_id int auto_increment primary key,
    c_name varchar(45),
    c_age int
);
create table `order` (
	o_id int auto_increment primary key,
	o_date date,
	o_total_price double,
    c_id int,
    foreign key (`c_id`) references `customer`(`c_id`)
);
create table `product` (
	p_id int auto_increment,
    p_name varchar(255),
    p_price double,
    primary key (`p_id`)
);
create table `order_detail` (
	o_id int,
    p_id int,
    od_quantity int,
    primary key (`o_id`, `p_id`),
    foreign key (`o_id`) references `order` (`o_id`),
    foreign key (`p_id`) references `product` (`p_id`)
);