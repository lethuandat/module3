use demo;

create table products (
    id int primary key,
    product_code char(2),
    product_name varchar(50),
    product_price double,
    product_amount int,
    product_description varchar(255),
    product_status bit(1)
);

insert into products
values (1, 'AP', 'Iphone 13', 700, 5, 'Hàng mới, chính hãng', 1),
       (2, 'SS', 'Samsung S20', 500, 2, 'Hàng mới, chính hãng', 1),
       (3, 'OP', 'Oppo Reno', 300, 3, 'Hàng cũ, xách tay', 0),
       (4, 'NO', 'Nokia 7', 200, 1, 'Hàng cũ, xách tay', 0),
       (5, 'MI', 'Xiaomi Mi 9', 350, 7, 'Hàng cũ, đã qua sử dụng', 1);
        
select * from products where product_code like '%P';
explain select * from products where product_code like '%P';
alter table products add unique index idx_product_code (product_code);

select * from products where product_name like '%o%' or product_price > 500;
explain select * from products where product_name like '%o%' or product_price > 500;
alter table products add index idx_product_name_price (product_name, product_price);

create view products_view as
select product_code, product_name, product_price, product_status from products; 
select * from products_view;
update products_view
set product_status = 1
where product_code = 'OP'; 
drop view products_view;

delimiter //
create procedure display_product()
begin
    select * from products;
end;
// delimiter ;
call display_product();

delimiter //
create procedure add_product(id int, 
			    product_code char(2), 
		   	    product_name varchar(50),
			    product_price double,
			    product_amount int,
			    product_description varchar(255),
			    product_status bit(1))
begin
    insert into products 
    values (id, product_code, product_name, product_price, product_amount, product_description, product_status);
end;
// delimiter ;
call add_product(6, 'LG', 'LG G6', 350, 3, 'Hãng chính hãng 100%', 1);

delimiter //
create procedure edit_product(id_edit int,
								product_code char(2), 
								product_name varchar(50),
								product_price double,
								product_amount int,
								product_description varchar(255),
								product_status bit(1))
begin
	update products
    set product_code = product_code,
		product_name = product_name,
		product_price = product_price,
		product_amount = product_amount,
		product_description = product_description,
		product_status = product_status
	where id = id_edit;
end;
// delimiter ;
call edit_product(6,'BP','Bphone', 400, 4, 'Hàng VN chất lượng cao', 1);

delimiter //
create procedure delete_product(id_delete int)
begin
    delete from products
    where products.id = id_delete;
end;
// delimiter ;

call delete_product(5);
