select dv.ma_dich_vu, dv.ten_dich_vu, dv.dien_tich, dv.chi_phi_thue, ldv.ten_loai_dich_vu
from dich_vu dv
join loai_dich_vu ldv on dv.ma_loai_dich_vu = ldv.ma_loai_dich_vu
join hop_dong hd on dv.ma_dich_vu = hd.ma_dich_vu
where hd.ma_dich_vu not in (select hd.ma_dich_vu
							from hop_dong hd
							where year(hd.ngay_lam_hop_dong) = '2021' and month(hd.ngay_lam_hop_dong) between 1 and 3)
group by dv.ma_dich_vu;
