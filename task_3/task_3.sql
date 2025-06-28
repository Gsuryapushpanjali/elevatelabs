-- Use the existing database
USE EdTechDB;

-- Select all students
SELECT * FROM Students;

-- Select only student names and emails
SELECT name, email FROM Students;

-- Select courses taught by a specific teacher
SELECT * FROM Courses
WHERE teacher_id = 1;

-- List students in Grade 10 only
SELECT * FROM Students
WHERE grade_level = 'Grade 10';

-- List students who have an email assigned
SELECT * FROM Students
WHERE email IS NOT NULL;

-- Sort courses alphabetically by title
SELECT * FROM Courses
ORDER BY title ASC;

-- Show the 2 most recent enrollments
SELECT * FROM Enrollments
ORDER BY enrollment_date DESC
LIMIT 2;

-- Show teacher names who teach Science
SELECT name FROM Teachers
WHERE subject_specialty = 'Science';
