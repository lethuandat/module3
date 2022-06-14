use quan_ly_sinh_vien;

SELECT address, COUNT(student_id) AS 'Số lượng học viên'
FROM student
GROUP BY address;

SELECT s.student_id, s.student_name, AVG(m.mark)
FROM student s 
join mark m on s.student_id = m.student_id
GROUP BY s.student_id, s.student_name;

SELECT s.student_id, s.student_name, AVG(m.mark)
FROM student s 
join mark m on s.student_id = m.student_id
GROUP BY s.student_id, s.student_name
HAVING AVG(m.mark) > 15;

SELECT s.student_id, s.student_name, AVG(m.mark)
FROM student s 
join mark m on s.student_id = m.student_id
GROUP BY s.student_id, s.student_name
HAVING AVG(m.mark) >= all (SELECT AVG(m.mark) FROM mark m GROUP BY m.student_id);