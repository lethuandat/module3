-- cach 1
select distinct ho_ten
from khach_hang;
-- cach 2
select ho_ten
from khach_hang
group by ho_ten;
-- cach 3
select ho_ten from khach_hang
union select ho_ten from khach_hang;