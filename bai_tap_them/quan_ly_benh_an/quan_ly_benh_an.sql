create database quan_ly_benh_an;

use quan_ly_benh_an;

create table benh_an (
	ma_benh_an char(6) primary key,
    ten_benh_an varchar(255),
    ma_benh_nhan char(6),
    ngay_nhap_vien date,
    ngay_ra_vien date,
    li_do_nhap_vien varchar(255),
    foreign key (ma_benh_nhan) references benh_nhan (ma_benh_nhan)
);

create table benh_nhan ( 
	ma_benh_nhan char(6) primary key,
    ten_benh_nhan varchar(255),
    ngay_sinh date,
    dia_chi varchar(255)
);

insert into benh_nhan 
values ('BN-001', 'Lê Văn Lâm', '1992-02-12', 'Đà Nẵng');

insert into benh_an ()
values ('BA-001', 'Covid 19', 'BN-001', '2022-07-01', '2022-07-04', 'covid');