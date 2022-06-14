create database if not exists quan_ly_ban_hang;
use quan_ly_ban_hang;
create table phieu_xuat (
	so_px int,
    ngay_xuat date,
    primary key (so_px)
);
create table vat_tu (
	ma_vt int,
    ten_vt varchar(50),
    primary key (ma_vt)
);
create table phieu_nhap (
	so_pn int,
    ngay_nhap date,
    primary key (so_pn)
);
create table don_dh (
	so_dh int,
    ngay_dh date,
    ma_ncc int,
    primary key (so_dh),
    foreign key (ma_ncc) references nha_cc (ma_ncc)
);
create table so_dien_thoai (
	ma_ncc int,
	sdt varchar(10),
    nha_mang varchar(20),
    primary key (ma_ncc, sdt),
    foreign key (ma_ncc) references nha_cc (ma_ncc)
);
create table nha_cc (
	ma_ncc int,
    ten_ncc varchar(45),
    dia_chi varchar(60),
    primary key (ma_ncc)
);
create table chi_tiet_phieu_xuat (
	so_px int,
    ma_vt int,
    dg_xuat double,
    sl_xuat int,
    primary key (so_px, ma_vt),
    foreign key (so_px) references phieu_xuat (so_px),
    foreign key (ma_vt) references vat_tu (ma_vt)
);
create table chi_tiet_phieu_nhap (
	so_pn int,
    ma_vt int,
    dg_nhap double,
    sl_nhap int,
    primary key (so_pn, ma_vt),
    foreign key (so_pn) references phieu_nhap (so_pn),
    foreign key (ma_vt) references vat_tu (ma_vt)
);
create table chi_tiet_don_hang (
	so_dh int,
	ma_vt int,
    primary key (so_dh, ma_vt),
    foreign key (so_dh) references don_dh (so_dh),
    foreign key (ma_vt) references vat_tu (ma_vt)
);