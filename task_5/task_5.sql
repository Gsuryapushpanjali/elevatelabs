USE EdTechDB;

-- INNER JOIN: Show students with their enrollment details
SELECT 
    s.student_id,
    s.name AS student_name,
    e.course_id,
    e.enrollment_date
FROM Students s
INNER JOIN Enrollments e ON s.student_id = e.student_id;

--  LEFT JOIN: Show all students, even if they’re not enrolled
SELECT 
    s.student_id,
    s.name AS student_name,
    e.course_id,
    e.enrollment_date
FROM Students s
LEFT JOIN Enrollments e ON s.student_id = e.student_id;

-- RIGHT JOIN: Show all enrollments

SELECT 
    s.student_id,
    s.name AS student_name,
    e.course_id,
    e.enrollment_date
FROM Students s
RIGHT JOIN Enrollments e ON s.student_id = e.student_id;

-- FULL OUTER JOIN: Combine LEFT and RIGHT using UNION 

SELECT 
    s.student_id,
    s.name AS student_name,
    e.course_id,
    e.enrollment_date
FROM Students s
LEFT JOIN Enrollments e ON s.student_id = e.student_id

UNION

SELECT 
    s.student_id,
    s.name AS student_name,
    e.course_id,
    e.enrollment_date
FROM Students s
RIGHT JOIN Enrollments e ON s.student_id = e.student_id;
