use sale_management;

-- Thêm dữ liệu vào trong 4 bảng
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
insert into order_detail
values(2, 1, 1);
insert into order_detail
values(3, 1, 8);
insert into order_detail
values(2, 5, 4);
insert into order_detail
values(2, 3, 3);

-- Hiển thị các thông tin gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order
select o.o_id, o.o_date, sum(p.p_price * od.od_quantity) as tong_tien_hoa_don
from product p
join order_detail od on od.p_id = p.p_id
join `order` o on o.o_id = od.o_id
group by o.o_id;

-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách
select c.c_name, p.p_name
from customer c
join `order` o on c.c_id = o.c_id
join order_detail od on od.o_id = o.o_id
join product p on p.p_id = od.p_id;

-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào
select c.c_id, c.c_name, count(o.c_id) as so_lan_mua
from `order` o
right join customer c on c.c_id = o.c_id
group by o.o_id
having so_lan_mua = 0;

-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn (giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn. Giá bán của từng loại được tính = odQTY*pPrice)
select o.o_id, o.o_date, (od.od_quantity * p.p_price) as total_price
from `order` o
join order_detail od on od.o_id = o.o_id
join product p on p.p_id = od.p_id
group by o.o_id;
