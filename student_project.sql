CREATE DATABASE student_db;
USE student_db;
CREATE TABLE  IF NOT EXISTS students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    course VARCHAR(50),
    marks INT
);
INSERT INTO students VALUES
(101, 'Srushti', 21, 'Btech', 97),
(102, 'Siddhi', 20, 'Btech', 91),
(103, 'Shreya', 21, 'Btech', 97),
(104, 'Sneha', 20, 'Btech', 90),
(105, 'Aarohi', 20, 'Btech', 92),
(106, 'Priya', 21, 'Btech', 97);
SELECT * FROM students
ORDER BY marks DESC
LIMIT 1;
SELECT AVG(marks) FROM students;
SELECT * FROm students
WHERE course='Btech';
SELECT name, marks,
CASE
    WHEN marks >= 60 THEN 'Pass'
    ELSE 'Fail'
END AS result
FROM students;
