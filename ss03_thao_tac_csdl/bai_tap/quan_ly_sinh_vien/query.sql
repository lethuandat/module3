use `quan_ly_sinh_vien`;
select *
from student
where student_name like 'h%' ;
select *
from `subject`
where credit >= 3 and credit <= 5 ;
select *
from class
where MONTH(start_date) = '12';
update student
set class_id = 2
where student_name = 'Hung';
select s.student_name, sub.sub_name, m.mark 
from student s 
join mark m on s.student_id = m.student_id
join `subject` sub on sub.sub_id = m.sub_id
order by mark desc, student_name
