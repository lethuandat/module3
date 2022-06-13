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
select student_name, mark 
from student
inner join mark on student.student_id = mark.student_id
order by mark desc, student_name
