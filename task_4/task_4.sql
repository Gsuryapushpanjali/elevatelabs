-- Use your existing EdTechDB
USE EdTechDB;

-- 1. COUNT how many students are enrolled in each course
SELECT 
    course_id,
    COUNT(student_id) AS total_enrollments
FROM Enrollments
GROUP BY course_id;

-- 2. AVG: Average number of enrollments per course
-- (Assumes each course is enrolled at least once)
SELECT 
    c.title,
    COUNT(e.student_id) AS total_students
FROM Courses c
LEFT JOIN Enrollments e ON c.course_id = e.course_id
GROUP BY c.course_id;

-- 3. COUNT: Total number of students per grade level
SELECT 
    grade_level,
    COUNT(student_id) AS number_of_students
FROM Students
GROUP BY grade_level;

-- 4. Use HAVING to show only grade levels with more than 1 student
SELECT 
    grade_level,
    COUNT(student_id) AS number_of_students
FROM Students
GROUP BY grade_level
HAVING COUNT(student_id) > 1;

-- 5. Extra: Total enrollments by date (to see peak days)
SELECT 
    enrollment_date,
    COUNT(*) AS enrollments_on_day
FROM Enrollments
GROUP BY enrollment_date
ORDER BY enrollment_date;
