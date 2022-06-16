use quan_ly_sinh_vien;

-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
select *
from `subject` 
group by sub_name
having credit >= all (select credit from `subject`);

-- Hiển thị các thông tin môn học có điểm thi lớn nhất.
select sub.sub_id, sub.sub_name, m.mark
from `subject` sub
join mark m on sub.sub_id = m.sub_id
group by sub.sub_id, sub.sub_name
having m.mark >= all (select m.mark from mark m);

-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
select s.student_id, s.student_name, ifnull(avg(m.mark), 0) 
from student s
left join mark m on s.student_id = m.student_id
left join `subject` sub on sub.sub_id = m.sub_id
group by s.student_id, s.student_name
order by avg(m.mark) desc;
