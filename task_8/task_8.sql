-- STORED PROCEDURE: Get Enrollments by Student ID
CREATE PROCEDURE GetEnrollmentsByStudent(IN stu_id INT)
BEGIN
    SELECT 
        s.name AS student_name,
        c.title AS course_title,
        e.enrollment_date
    FROM Students s
    JOIN Enrollments e ON s.student_id = e.student_id
    JOIN Courses c ON e.course_id = c.course_id
    WHERE s.student_id = stu_id;
END;

-- CALL the procedure
CALL GetEnrollmentsByStudent(1);

-- FUNCTION: Check Grade Level Label
-- Returns label based on grade level

CREATE FUNCTION GetGradeLabel(grade VARCHAR(10))
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
    DECLARE label VARCHAR(20);

    IF grade = 'Grade 10' THEN
        SET label = 'Senior';
    ELSEIF grade = 'Grade 9' THEN
        SET label = 'Mid Senior';
    ELSE
        SET label = 'Junior';
    END IF;

    RETURN label;
END;
