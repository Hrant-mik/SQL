
-- USE school;

-- CREATE TABLE teachers (
-- 	teacher_id INT PRIMARY KEY,
--     first_name VARCHAR(64),
--     last_name VARCHAR(64)
-- );

-- CREATE TABLE classes(
-- 	class_id int PRIMARY KEY,
--     class_name VARCHAR(64),
--     teacher_id int,
--     FOREIGN KEY (teacher_id) REFERENCES teachers (teacher_id)
-- );


-- CREATE TABLE students(
-- 	student_id INT PRIMARY KEY,
--     first_name VARCHAR(64),
--     last_name VARCHAR(64),
--     class_id INT,
--     FOREIGN KEY (class_id) REFERENCES classes(class_id)
-- );

-- CREATE TABLE grades (
-- 	grade_id int PRIMARY key,
--     student_id int,
--     subject VARCHAR(64),
--     garde CHAR,
--     FOREIGN KEY (student_id) REFERENCES students (student_id)
-- );






SELECT *, database() school;