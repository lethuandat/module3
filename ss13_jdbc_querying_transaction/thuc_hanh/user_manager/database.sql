use demo;

create table users (
 id  int(3) NOT NULL AUTO_INCREMENT,
 `name` varchar(120) NOT NULL,
 email varchar(220) NOT NULL,
 country varchar(120),
 PRIMARY KEY (id)
);

insert into users(name, email, country) values('Minh','minh@codegym.vn','Viet Nam');
insert into users(name, email, country) values('Kante','kante@che.uk','Kenia');

DELIMITER $$
CREATE PROCEDURE get_user_by_id(IN user_id INT)
BEGIN
    SELECT users.name, users.email, users.country
    FROM users
    where users.id = user_id;
    END$$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE insert_user(
IN user_name varchar(50),
IN user_email varchar(50),
IN user_country varchar(50)
)
BEGIN
    INSERT INTO users(name, email, country) VALUES(user_name, user_email, user_country);
END$$
DELIMITER ;

create table permision(
id int(11) primary key,
name varchar(50));

create table user_permision(
permision_id int(11),
user_id int(11));

insert into permision(id, name) values(1, 'add');
insert into permision(id, name) values(2, 'edit');
insert into permision(id, name) values(3, 'delete');
insert into permision(id, name) values(4, 'view');

delimiter //
create procedure display_user() 
begin
	select * from users;
end;
//delimiter ;

delimiter //
create procedure update_user(id int, `name` varchar(120), email varchar(220), country varchar(120))
begin
	update users 
    set users.`name` = `name`, users.email = email, users.country = country
    where users.id = id; 
end;
//delimiter ;

delimiter //
create procedure delete_user(id int)
begin
	delete from users
    where users.id = id;
end;
//delimiter ;

call delete_user(11);