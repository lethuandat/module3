use sale_management;
insert into customer
values(1, 'Minh Quan', 10);
insert into customer
values(2, 'Ngoc Oanh', 20);
insert into customer
values(3, 'Hong Ha', 50);
insert into `order`
values(1, '2006-03-21', Null, 1);
insert into `order`
values(2, '2006-03-23', Null, 2);
insert into `order`
values(3, '2006-03-16', Null, 1);
insert into product
values(1, 'May Giat', 3);
insert into product
values(2, 'Tu Lanh', 5);
insert into product
values(3, 'Dieu Hoa', 7);
insert into product
values(4, 'Quat', 1);
insert into product
values(5, 'Bep Dien', 2);
insert into order_detail
values(1, 1, 3);
insert into order_detail
values(1, 3, 7);
insert into order_detail
values(1, 4, 2);
insert into orderdetail
values(2, 1, 1);
insert into order_detail
values(3, 1, 8);
insert into order_detail
values(2, 5, 4);
insert into order_detail
values(2, 3, 3);
select o_id, o_date, o_total_price
from `order`;
