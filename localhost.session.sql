-- Use the existing EdTechDB
USE EdTechDB;

-- Insert data into Students
INSERT INTO Students (student_id, name, email, grade_level) VALUES
(1, 'Anya Reddy', 'anya@example.com', 'Grade 8'),
(2, 'Vikram Rao', 'vikram@example.com', 'Grade 9'),
(3, 'Sara Khan', NULL, 'Grade 10'),  -- Missing email
(4, 'Manoj Das', 'manoj@example.com', NULL); -- Missing grade_level

-- Insert data into Teachers
INSERT INTO Teachers (teacher_id, name, subject_specialty, email) VALUES
(1, 'Ms. Priya Iyer', 'Math', 'priya@example.com'),
(2, 'Mr. Nikhil Verma', 'Science', 'nikhil@example.com');

-- Insert data into Courses
INSERT INTO Courses (course_id, title, description, teacher_id) VALUES
(1, 'Algebra Basics', 'Intro to Algebra', 1),
(2, 'Physics 101', 'Basic Physics course', 2);

-- Insert data into Enrollments
INSERT INTO Enrollments (enrollment_id, student_id, course_id, enrollment_date) VALUES
(1, 1, 1, '2025-06-01'),
(2, 2, 1, '2025-06-02'),
(3, 3, 2, '2025-06-03');

-- UPDATE: Fix missing email for Sara
UPDATE Students
SET email = 'sara.khan@example.com'
WHERE student_id = 3;

--  UPDATE: Assign grade level to Manoj
UPDATE Students
SET grade_level = 'Grade 10'
WHERE student_id = 4;

--  UPDATE: Rename course title
UPDATE Courses
SET title = 'Algebra for Beginners'
WHERE course_id = 1;

--  DELETE: Remove enrollment for student who dropped
DELETE FROM Enrollments
WHERE student_id = 2 AND course_id = 1;

--  View final data
SELECT * FROM Students;
SELECT * FROM Teachers;
SELECT * FROM Courses;
SELECT * FROM Enrollments;
