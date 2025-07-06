
-- View: student_course_summary
CREATE OR REPLACE VIEW student_course_summary AS
SELECT 
    s.student_id,
    s.name AS student_name,
    c.title AS course_title,
    e.enrollment_date
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id;

-- Use the view
SELECT * FROM student_course_summary;

-- View: grade_level_count
CREATE OR REPLACE VIEW grade_level_count AS
SELECT 
    grade_level,
    COUNT(*) AS total_students
FROM Students
GROUP BY grade_level;

-- Use the view
SELECT * FROM grade_level_count;

--  View for abstraction/security: hide email column
CREATE OR REPLACE VIEW public_student_list AS
SELECT student_id, name
FROM Students;

-- Use the view
SELECT * FROM public_student_list;