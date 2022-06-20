-- 1.	Thêm mới thông tin cho tất cả các bảng có trong CSDL.
use furama_resort;
insert into bo_phan 
values (1, 'Sale-Marketing', 0),
	(2, 'Hành chính', 0),
	(3, 'Phục vụ', 0),
	(4, 'Quản lý', 0);
insert into dich_vu_di_kem 
values (1, 'Karaoke', 10000, 'giờ', 'tiện nghi, hiện tại', 0),
	(2, 'Thuê xe máy', 10000, 'chiếc', 'hỏng 1 xe', 0),
	(3, 'Thuê xe đạp', 20000, 'chiếc', 'tốt', 0),
	(4, 'Buffet buổi sáng', 15000, 'suất', 'đầy đủ đồ ăn, tráng miệng', 0),
    (5, 'Buffet buổi trưa', 90000, 'suất', 'đầy đủ đồ ăn, tráng miệng', 0),
    (6, 'Buffet buổi tối', 16000, 'suất', 'đầy đủ đồ ăn, tráng miệng', 0);   
insert into vi_tri
values (1, 'Quản lý', 0),
	   (2, 'Nhân viên', 0);
insert into trinh_do
values (1, 'Trung Cấp', 0),
	   (2, 'Cao Đẳng', 0),
	   (3, 'Đại Học', 0),
	   (4, 'Sau Đại Học', 0);
insert into nhan_vien
values (1, 'Nguyễn Văn An', '1970-11-07', '456231786', 10000000, '0901234121', 'annguyen@gmail.com', '295 Nguyễn Tất Thành, Đà Nẵng', 1, 3, 1, 0),
	 (2, 'Lê Văn Bình', '1997-04-09', '654231234', 7000000, '0931234121', 'binh@gmail.com', '22 Yên Bái, Đà Nẵng', 1, 2, 2, 0),
	 (3, 'Hồ Thị Yến', '1995-12-12', '999231723', 12000000, '0921234121', 'yen@gmail.com', 'K234/11 Điện Biên Phủ, Gia Lai', 1, 3, 2, 0),
	 (4, 'Võ Công Toản', '1980-04-04', '123231365', 3000000, '0961234121', 'toan@gmail.com', '77 Hoàng Diệu, Quảng Trị', 1, 4, 4, 0),
	 (5, 'Nguyễn Bỉnh Phát', '1999-12-09', '456341786', 5000000, '0981234121', 'phat@gmail.com', '43 Yên Bái, Đà Nẵng', 2, 1, 1, 0),
	 (6, 'Khúc Nguyễn An Nghi', '2000-11-08', '126231786', 7000000, '0931234121', 'nghi@gmail.com', '294 Nguyễn Tất Thành, Đà Nẵng', 2, 2, 3, 0),
	 (7, 'Nguyễn Hữu Hà', '1993-01-01', '456231786', 6000000, '0901264121', 'ha@gmail.com', '4 Nguyễn Chí Thanh, Huế', 2, 3, 2, 0),
	 (8, 'Nguyễn Hà Đông', '1989-09-03', '496231786', 8000000, '0911234121', 'dong@gmail.com', '111 Hùng Vương, Hà Nội', 2, 4, 4, 0),
	 (9, 'Tòng Hoang', '1982-09-03', '826231786', 9000000, '0921234121', 'hoang@gmail.com', '213 Hàm Nghi, Đà Nẵng', 2, 4, 4, 0),
	 (10, 'Nguyễn Công Đạo', '1994-01-08', '946231786', 4000000, '0971234121', 'dao@gmail.com', '6 Hoà Khánh, Đồng Nai', 2, 3, 2, 0);
insert into loai_khach
values (1, 'Diamond', 0),
	(2, 'Platinum', 0),
	(3, 'Gold', 0),
	(4, 'Silver', 0),
	(5, 'Member', 0);
insert into khach_hang
values (1, 5, 'Nguyễn Thị Hào', '1970-11-07', 0, '643431213', '0987654321', 'thihao07@gmail.com', '23 Nguyễn Hoàng, Đà Nẵng', 0),
	 (2, 3, 'Phạm Xuân Diệu', '1992-08-08', 1, '865342123', '0987654321', 'xuandieu92@gmail.com', 'K77/22 Thái Phiên, Quảng Trị', 0),
	 (3, 1, 'Trương Đình Nghệ', '1990-02-27', 1, '488645199', '0987654321', 'nghenhan2702@gmail.com', 'K323/12 Ông Ích Khiêm, Vinh', 0),
	 (4, 1, 'Dương Văn Quan', '1981-07-08', 1, '634635974', '0987654321', 'duongquan@gmail.com', 'K453/12 Lê Lợi, Đà Nẵng', 0),
	 (5, 4, 'Hoàng Trần Nhi Nhi', '1995-12-09', 0, '241234757', '0987654321', 'nhinhi123@gmail.com', '224 Lý Thái Tổ, Gia Lai', 0),
	 (6, 4, 'Tôn Nữ Mộc Châu', '2005-12-06', 0, '956352456', '0987654321', 'tonnuchau@gmail.com', '37 Yên Thế, Đà Nẵng', 0),
	 (7, 1, 'Nguyễn Mỹ Kim', '1984-04-08', 0, '445682467', '0987654321', 'kimcuong84@gmail.com', 'K123/45 Lê Lợi, Hồ Chí Minh', 0),
	 (8, 3, 'Nguyễn Thị Hào', '1999-04-08', 0, '456789034', '0987654321', 'haohao99@gmail.com', '55 Nguyễn Văn Linh, Kon Tum', 0),
	 (9, 1, 'Trần Đại Danh', '1994-07-01', 1, '456788956', '0987654321', 'danhhai99@gmail.com', '24 Lý Thường Kiệt, Quảng Ngãi', 0),
	 (10, 2, 'Nguyễn Tâm Đắc', '1989-07-01', 1, '435678954', '0987654321', 'dactam@gmail.com', '22 Ngô Quyền, Đà Nẵng', 0);
insert into kieu_thue
values (1, 'year', 0),
	 (2, 'month', 0),
	 (3, 'day', 0),
	 (4, 'hour', 0);
insert into loai_dich_vu
values (1, 'Villa', 0),
	   (2, 'House', 0),
	   (3, 'Room', 0);
insert into hop_dong_chi_tiet
values (1, 2, 4, 5, 0),
	 (2, 2, 5, 8, 0),
	 (3, 2, 6, 15, 0),
	 (4, 3, 1, 1, 0),
	 (5, 3, 2, 11, 0),
	 (6, 1, 3, 1, 0),
	 (7, 1, 2, 2, 0),
	 (8, 12, 2, 2, 0);
insert into hop_dong 
values (1, '2020-12-08', '2020-12-08', 0, 3, 1, 3, 0),
 (2, '2020-07-14', '2020-07-21', 200000, 7, 3, 1, 0),
 (3, '2021-03-15', '2021-03-17', 50000, 3, 4, 2, 0),
 (4, '2021-01-14', '2021-01-18', 100000, 7, 5, 5, 0),
 (5, '2021-07-14', '2021-07-15', 0, 7, 2, 6, 0),
 (6, '2021-06-01', '2021-06-03', 0, 7, 7, 6, 0),
 (7, '2021-09-02', '2021-09-05', 100000, 7, 4, 4, 0),
 (8, '2021-06-17', '2021-06-18', 150000, 3, 4, 1, 0),
 (9, '2020-11-19', '2020-11-19', 0, 3, 4, 3, 0),
 (10, '2021-04-12', '2021-04-14', 0, 10, 3, 5, 0),
 (11, '2021-04-25', '2021-04-25', 0, 2, 2, 1, 0),
 (12, '2021-05-25', '2021-05-27', 0, 7, 10, 1, 0);
insert into dich_vu
values (1, 'Villa Beach Front', 25000, 10000000, 10, 3, 1, 'vip', 'Có hồ bơi', 500, 4, 0),
	   (2, 'House Princess 01', 14000, 5000000, 7, 2, 2, 'vip', 'Có thêm bếp nướng', null, 3, 0),
	   (3, 'Room Twin 01', 5000, 1000000, 2, 4, 3, 'normal', 'Có tivi', null, null, 0),
	   (4, 'Villa No Beach Front', 22000, 9000000, 8, 3, 1, 'normal', 'Có hồ bơi', 300, 3, 0),
	   (5, 'House Princess 02', 10000, 4000000, 5,  3, 2, 'normal', 'Có thêm bếp nướng', null, 2, 0),
	   (6, 'Room Twin 02', 3000, 900000, 2, 4, 3, 'normal', 'Có tivi', null, null, 0);
       
-- 2.	Hiển thị thông tin của tất cả nhân viên có trong hệ thống có tên bắt đầu là một trong các ký tự “H”, “T” hoặc “K” và có tối đa 15 kí tự.
select * 
from nhan_vien
where (ho_ten like 'H%' or  ho_ten like 'T%' or  ho_ten like 'K%') and character_length(ho_ten) <= 15;

-- 3.	Hiển thị thông tin của tất cả khách hàng có độ tuổi từ 18 đến 50 tuổi và có địa chỉ ở “Đà Nẵng” hoặc “Quảng Trị”.
select *
from khach_hang
where ((datediff(curdate(), ngay_sinh) / 365) between 18 and 50) and (dia_chi like '%Đà Nẵng' or dia_chi like '%Quảng Trị');

-- 4.	Đếm xem tương ứng với mỗi khách hàng đã từng đặt phòng bao nhiêu lần. Kết quả hiển thị được sắp xếp tăng dần theo số lần đặt phòng của khách hàng. Chỉ đếm những khách hàng nào có Tên loại khách hàng là “Diamond”.
select kh.ma_khach_hang, kh.ho_ten, count(kh.ma_khach_hang) as so_lan_dat_phong
from khach_hang kh
join hop_dong hd on kh.ma_khach_hang = hd.ma_khach_hang
join loai_khach lk on kh.ma_loai_khach = lk.ma_loai_khach
where lk.ten_loai_khach = 'Diamond'
group by kh.ma_khach_hang
order by so_lan_dat_phong;

-- 5.	Hiển thị ma_khach_hang, ho_ten, ten_loai_khach, ma_hop_dong, ten_dich_vu, ngay_lam_hop_dong, ngay_ket_thuc, tong_tien (Với tổng tiền được tính theo công thức như sau: Chi Phí Thuê + Số Lượng * Giá, với Số Lượng và Giá là từ bảng dich_vu_di_kem, hop_dong_chi_tiet) cho tất cả các khách hàng đã từng đặt phòng. (những khách hàng nào chưa từng đặt phòng cũng phải hiển thị ra).
select kh.ma_khach_hang, kh.ho_ten, lk.ten_loai_khach, hd.ma_hop_dong, dv.ten_dich_vu, hd.ngay_lam_hop_dong, hd.ngay_ket_thuc, ifnull(dv.chi_phi_thue, 0) + ifnull(hdct.so_luong * dvdk.gia, 0) as tong_tien
from khach_hang kh 
left join loai_khach lk on kh.ma_loai_khach = lk.ma_loai_khach
left join hop_dong hd on kh.ma_khach_hang = hd.ma_khach_hang
left join dich_vu dv on dv.ma_dich_vu = hd.ma_dich_vu
left join hop_dong_chi_tiet hdct on hdct.ma_hop_dong = hd.ma_hop_dong
left join dich_vu_di_kem dvdk on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
group by kh.ma_khach_hang;

-- 6.	Hiển thị ma_dich_vu, ten_dich_vu, dien_tich, chi_phi_thue, ten_loai_dich_vu của tất cả các loại dịch vụ chưa từng được khách hàng thực hiện đặt từ quý 1 của năm 2021 (Quý 1 là tháng 1, 2, 3).
select dv.ma_dich_vu, dv.ten_dich_vu, dv.dien_tich, dv.chi_phi_thue, ldv.ten_loai_dich_vu
from dich_vu dv
join loai_dich_vu ldv on dv.ma_loai_dich_vu = ldv.ma_loai_dich_vu
join hop_dong hd on dv.ma_dich_vu = hd.ma_dich_vu
where hd.ma_dich_vu not in (select hd.ma_dich_vu
							from hop_dong hd
							where year(hd.ngay_lam_hop_dong) = '2021' and month(hd.ngay_lam_hop_dong) between 1 and 3)
group by dv.ma_dich_vu;

-- 7.	Hiển thị thông tin ma_dich_vu, ten_dich_vu, dien_tich, so_nguoi_toi_da, chi_phi_thue, ten_loai_dich_vu của tất cả các loại dịch vụ đã từng được khách hàng đặt phòng trong năm 2020 nhưng chưa từng được khách hàng đặt phòng trong năm 2021.
select dv.ma_dich_vu, dv.ten_dich_vu, dv.dien_tich, dv.so_nguoi_toi_da, dv.chi_phi_thue, ldv.ten_loai_dich_vu
from dich_vu dv
join loai_dich_vu ldv on ldv.ma_loai_dich_vu = dv.ma_loai_dich_vu
join hop_dong hd on hd.ma_dich_vu = dv.ma_dich_vu
where year(hd.ngay_lam_hop_dong) = '2020' and  year(hd.ngay_lam_hop_dong) <> '2021'
group by dv.ma_dich_vu;

-- 8.	Hiển thị thông tin ho_ten khách hàng có trong hệ thống, với yêu cầu ho_ten không trùng nhau.
-- Cách 1:
select distinct ho_ten
from khach_hang;

-- Cách 2:
select ho_ten
from khach_hang
group by ho_ten;

-- Cách 3:
select ho_ten from khach_hang
union select ho_ten from khach_hang;

-- 9.	Thực hiện thống kê doanh thu theo tháng, nghĩa là tương ứng với mỗi tháng trong năm 2021 thì sẽ có bao nhiêu khách hàng thực hiện đặt phòng.
select month(hd.ngay_lam_hop_dong) as '#thang', count(hd.ma_khach_hang) as so_luong_khach_hang
from hop_dong hd
where year(hd.ngay_lam_hop_dong) = '2021'
group by month(hd.ngay_lam_hop_dong)
order by month(hd.ngay_lam_hop_dong);

-- 10.	Hiển thị thông tin tương ứng với từng hợp đồng thì đã sử dụng bao nhiêu dịch vụ đi kèm. Kết quả hiển thị bao gồm ma_hop_dong, ngay_lam_hop_dong, ngay_ket_thuc, tien_dat_coc, so_luong_dich_vu_di_kem (được tính dựa trên việc sum so_luong ở dich_vu_di_kem).
select hd.ma_hop_dong, hd.ngay_lam_hop_dong, hd.ngay_ket_thuc, hd.tien_dat_coc, sum(hdct.so_luong) as so_luong_dich_vu_di_kem
from hop_dong hd
left join hop_dong_chi_tiet hdct on hd.ma_hop_dong = hdct.ma_hop_dong
left join dich_vu_di_kem dvdk on hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
group by hd.ma_hop_dong;

-- 11.	Hiển thị thông tin các dịch vụ đi kèm đã được sử dụng bởi những khách hàng có ten_loai_khach là “Diamond” và có dia_chi ở “Vinh” hoặc “Quảng Ngãi”.
select dvdk.ma_dich_vu_di_kem, dvdk.ten_dich_vu_di_kem
from dich_vu_di_kem dvdk
join hop_dong_chi_tiet hdct on hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
join hop_dong hd on hd.ma_hop_dong = hdct.ma_hop_dong
join khach_hang kh on kh.ma_khach_hang = hd.ma_khach_hang
join loai_khach lk on lk.ma_loai_khach = kh.ma_loai_khach
where lk.ten_loai_khach = 'Diamond'  and (kh.dia_chi like '%Quảng Ngãi' or kh.dia_chi like '%Vinh');

-- 12.	Hiển thị thông tin ma_hop_dong, ho_ten (nhân viên), ho_ten (khách hàng), so_dien_thoai (khách hàng), ten_dich_vu, so_luong_dich_vu_di_kem (được tính dựa trên việc sum so_luong ở dich_vu_di_kem), tien_dat_coc của tất cả các dịch vụ đã từng được khách hàng đặt vào 3 tháng cuối năm 2020 nhưng chưa từng được khách hàng đặt vào 6 tháng đầu năm 2021.
select hd.ma_hop_dong, nv.ho_ten as ho_ten_nhan_vien, kh.ho_ten as ho_ten_khach_hang, kh.so_dien_thoai, dv.ten_dich_vu, sum(hdct.so_luong) as so_luong_dich_vu_di_kem, hd.tien_dat_coc
from hop_dong hd
join nhan_vien nv on hd.ma_nhan_vien = nv.ma_nhan_vien
join khach_hang kh on hd.ma_khach_hang = kh.ma_khach_hang
join dich_vu dv on hd.ma_dich_vu = dv.ma_dich_vu
join hop_dong_chi_tiet hdct on hd.ma_hop_dong = hdct.ma_hop_dong
join dich_vu_di_kem dvdk on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
where (hd.ngay_lam_hop_dong between '2020-10-01' and '2021-12-31') and hd.ngay_lam_hop_dong not in (select ngay_lam_hop_dong
																								    from hop_dong hd
																									where ngay_lam_hop_dong between '2021-01-01' and '2021-06-30')
group by hd.ma_hop_dong;

-- 13.	Hiển thị thông tin các Dịch vụ đi kèm được sử dụng nhiều nhất bởi các Khách hàng đã đặt phòng. (Lưu ý là có thể có nhiều dịch vụ có số lần sử dụng nhiều như nhau).
select dvdk.ma_dich_vu_di_kem, dvdk.ten_dich_vu_di_kem, sum(hdct.so_luong) as so_luong_dich_vu_di_kem
from dich_vu_di_kem dvdk
join hop_dong_chi_tiet hdct on hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
group by dvdk.ma_dich_vu_di_kem
having sum(hdct.so_luong) >= all (select sum(hdct.so_luong) 
                                  from dich_vu_di_kem dvdk
								  join hop_dong_chi_tiet hdct on hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
								  group by dvdk.ma_dich_vu_di_kem);
                                  
-- 14.	Hiển thị thông tin tất cả các Dịch vụ đi kèm chỉ mới được sử dụng một lần duy nhất. Thông tin hiển thị bao gồm ma_hop_dong, ten_loai_dich_vu, ten_dich_vu_di_kem, so_lan_su_dung (được tính dựa trên việc count các ma_dich_vu_di_kem).
select hd.ma_hop_dong, ldv.ten_loai_dich_vu, dvdk.ten_dich_vu_di_kem, count(dvdk.ma_dich_vu_di_kem) as so_lan_su_dung
from hop_dong hd
join hop_dong_chi_tiet hdct on hdct.ma_hop_dong = hd.ma_hop_dong
join dich_vu_di_kem dvdk on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
join dich_vu dv on dv.ma_dich_vu = hd.ma_dich_vu
join loai_dich_vu ldv on ldv.ma_loai_dich_vu = dv.ma_loai_dich_vu
group by dvdk.ten_dich_vu_di_kem
having count(dvdk.ma_dich_vu_di_kem) = 1;

-- 15.	Hiển thi thông tin của tất cả nhân viên bao gồm ma_nhan_vien, ho_ten, ten_trinh_do, ten_bo_phan, so_dien_thoai, dia_chi mới chỉ lập được tối đa 3 hợp đồng từ năm 2020 đến 2021.
select nv.ma_nhan_vien, nv.ho_ten, td.ten_trinh_do, bp.ten_bo_phan, nv.so_dien_thoai, nv.dia_chi
from nhan_vien nv
join bo_phan bp on bp.ma_bo_phan = nv.ma_bo_phan
join trinh_do td on td.ma_trinh_do = nv.ma_trinh_do
join hop_dong hd on hd.ma_nhan_vien = nv.ma_nhan_vien
group by nv.ma_nhan_vien
having count(hd.ma_nhan_vien) <= 3;

-- 16.	Xóa những Nhân viên chưa từng lập được hợp đồng nào từ năm 2019 đến năm 2021.
alter table nhan_vien add flag char(1);
alter table bo_phan add flag char(1);
alter table dich_vu add flag char(1);
alter table dich_vu_di_kem add flag char(1);
alter table hop_dong_chi_tiet add flag char(1);
alter table loai_dich_vu add flag char(1);
alter table loai_khach add flag char(1);
alter table trinh_do add flag char(1);
alter table vi_tri add flag char(1);
alter table kieu_thue add flag char(1);
-- Xóa trực tiếp
-- delete 
-- from nhan_vien
-- where ma_nhan_vien in (select * from (select nv.ma_nhan_vien
-- from nhan_vien nv
-- left join hop_dong hd on hd.ma_nhan_vien = nv.ma_nhan_vien
-- group by nv.ma_nhan_vien
-- having count(hd.ma_nhan_vien) = 0) as x);
update nhan_vien
set flag = 1
where ma_nhan_vien in (select * from (select nv.ma_nhan_vien
from nhan_vien nv
left join hop_dong hd on hd.ma_nhan_vien = nv.ma_nhan_vien
group by nv.ma_nhan_vien
having count(hd.ma_nhan_vien) = 0) as x);

-- Những nhân viên chưa từng lập hợp đồng nào từ năm 2019 - 2021:
select * 
from nhan_vien
where flag = 1;
-- 17.	Cập nhật thông tin những khách hàng có ten_loai_khach từ Platinum lên Diamond, chỉ cập nhật những khách hàng đã từng đặt phòng với Tổng Tiền thanh toán trong năm 2021 là lớn hơn 10.000.000 VNĐ.
update khach_hang
set ma_loai_khach = 1
where ma_khach_hang = (select * from (select kh.ma_khach_hang
									  from khach_hang kh
									  join hop_dong hd on hd.ma_khach_hang = kh.ma_khach_hang
									  join dich_vu dv on dv.ma_dich_vu = hd.ma_dich_vu
									  join hop_dong_chi_tiet hdct on hdct.ma_hop_dong = hd.ma_hop_dong
									  join dich_vu_di_kem dvdk on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
									  join loai_khach lk on lk.ma_loai_khach = kh.ma_loai_khach
									  where (dv.chi_phi_thue + hdct.so_luong * dvdk.gia) >= 10000000 and lk.ten_loai_khach = 'Platinum' and year(hd.ngay_lam_hop_dong) = '2021') as x);

-- 18.	Xóa những khách hàng có hợp đồng trước năm 2021 (chú ý ràng buộc giữa các bảng).
alter table khach_hang add flag char(1);
alter table hop_dong add flag char(1);

update khach_hang
set flag = 1
where ma_khach_hang in (select * from (select kh.ma_khach_hang
									  from khach_hang kh
									  join hop_dong hd on kh.ma_khach_hang = hd.ma_khach_hang
									  where hd.ngay_lam_hop_dong <= '2020/12/31') as x);
update hop_dong
set flag = 1
where ngay_lam_hop_dong <= '2020/12/31';

-- Những khách hàng có hợp đồng trước năm 2021
select *
from khach_hang
where flag = 1;

-- 19.	Cập nhật giá cho các dịch vụ đi kèm được sử dụng trên 10 lần trong năm 2020 lên gấp đôi.
update dich_vu_di_kem 
set gia = gia * 2
where ma_dich_vu_di_kem in (select * from (select dvdk.ma_dich_vu_di_kem
										   from dich_vu_di_kem dvdk
										   join hop_dong_chi_tiet hdct on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
                                           join hop_dong hd on hd.ma_hop_dong = hdct.ma_hop_dong
										   where hdct.so_luong >= 10 and year(ngay_lam_hop_dong) = '2020') as x);

-- 20.	Hiển thị thông tin của tất cả các nhân viên và khách hàng có trong hệ thống, thông tin hiển thị bao gồm id (ma_nhan_vien, ma_khach_hang), ho_ten, email, so_dien_thoai, ngay_sinh, dia_chi.
select ma_nhan_vien as id, ho_ten, email, so_dien_thoai, ngay_sinh, dia_chi
from nhan_vien
union all
select ma_khach_hang as id, ho_ten, email, so_dien_thoai, ngay_sinh, dia_chi
from khach_hang;

-- 21.	Tạo khung nhìn có tên là v_nhan_vien để lấy được thông tin của tất cả các nhân viên có địa chỉ là “Hải Châu” và đã từng lập hợp đồng cho một hoặc nhiều khách hàng bất kì với ngày lập hợp đồng là “12/12/2019”.
create view v_nhan_vien as
select nv.*
from nhan_vien nv
join hop_dong hd on hd.ma_nhan_vien = nv.ma_nhan_vien
where dia_chi = 'Hải Châu' and hd.ngay_lam_hop_dong = '2019-12-12';

select * from v_nhan_vien;

-- 22.	Thông qua khung nhìn v_nhan_vien thực hiện cập nhật địa chỉ thành “Liên Chiểu” đối với tất cả các nhân viên được nhìn thấy bởi khung nhìn này.
update v_nhan_vien
set dia_chi = 'Liên Chiểu';

-- 23.	Tạo Stored Procedure sp_xoa_khach_hang dùng để xóa thông tin của một khách hàng nào đó với ma_khach_hang được truyền vào như là 1 tham số của sp_xoa_khach_hang.
delimiter //
create procedure sp_xoa_khach_hang (in ma_khach_hang int)
begin
	update khach_hang
    set flag = 1
    where khach_hang.ma_khach_hang = ma_khach_hang;
end;
// delimiter ;

call sp_xoa_khach_hang(5);

-- 24.	Tạo Stored Procedure sp_them_moi_hop_dong dùng để thêm mới vào bảng hop_dong với yêu cầu sp_them_moi_hop_dong phải thực hiện kiểm tra tính hợp lệ của dữ liệu bổ sung, với nguyên tắc không được trùng khóa chính và đảm bảo toàn vẹn tham chiếu đến các bảng liên quan.
delimiter //
create procedure sp_them_moi_hop_dong (in ma_hop_dong int,
									   in ngay_lam_hop_dong datetime,
									   in ngay_ket_thuc datetime,
                                       in tien_dat_coc double,
                                       in ma_nhan_vien int,
                                       in ma_khach_hang int,
                                       in ma_dich_vu int,
                                       in flag char(1))
begin
	insert into hop_dong
    values (ma_hop_dong, ngay_lam_hop_dong, ngay_ket_thuc, tien_dat_coc, ma_nhan_vien, ma_khach_hang, ma_dich_vu, flag);
end;
// delimiter ;

call sp_them_moi_hop_dong (13, '2022-06-20', '2022-06-25', 500000, 3, 4, 2, 0);

-- 25.	Tạo Trigger có tên tr_xoa_hop_dong khi xóa bản ghi trong bảng hop_dong thì hiển thị tổng số lượng bản ghi còn lại có trong bảng hop_dong ra giao diện console của database.
