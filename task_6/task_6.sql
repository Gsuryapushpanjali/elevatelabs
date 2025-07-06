USE EdTechDB;

-- Scalar Subquery: Show the students with the most recent enrollment
SELECT student_id, name
FROM Students
WHERE student_id = (
    SELECT student_id
    FROM Enrollments
    ORDER BY enrollment_date DESC
    LIMIT 1
);

--  Correlated Subquery: List students who are enrolled in any course
SELECT name
FROM Students s
WHERE EXISTS (
    SELECT 1
    FROM Enrollments e
    WHERE e.student_id = s.student_id
);

-- Subquery using IN: Students who are enrolled in 'Algebra for Beginners'
SELECT name
FROM Students
WHERE student_id IN (
    SELECT e.student_id
    FROM Enrollments e
    JOIN Courses c ON e.course_id = c.course_id
    WHERE c.title = 'Algebra for Beginners'
);

-- Correlated Subquery with HAVING: Students enrolled in more than 1 course
SELECT s.student_id, s.name
FROM Students s
WHERE (
    SELECT COUNT(*)
    FROM Enrollments e
    WHERE e.student_id = s.student_id
) > 1;

--  subquery using =  to Show all students who enrolled on the most recent enrollment date
SELECT name, student_id
FROM Students
WHERE student_id IN (
    SELECT student_id
    FROM Enrollments
    WHERE enrollment_date = (
        SELECT MAX(enrollment_date)
        FROM Enrollments
    )
);
