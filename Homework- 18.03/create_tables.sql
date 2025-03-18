-- CREATE DATABASE test;

-- CREATE TABLE person(
-- 	person_id INT PRIMARY key,
--     name VARCHAR(64),
--     surename VARCHAR(64)
-- );
-- DROP TABLE job;
-- CREATE TABLE job (
-- 	job_id int PRIMARY key,
--     job_name VARCHAR(64),
--     person_id int,
--     FOREIGN KEY (person_id) REFERENCES person(person_id)
-- );
-- INSERT into person
-- VALUES
-- (1, "Hrant", "Mikaelyan");

-- INSERT into job
-- VALUES (1, 'programer', 1);
 
-- SELECT CONSTRAINT_NAME
-- FROM information_schema.KEY_COLUMN_USAGE
-- WHERE TABLE_NAME = 'job' AND TABLE_SCHEMA = 'school';

-- CREATE TABLE person_job(
-- 	person_id int,
--     CONSTRAINT CTperson FOREIGN KEY (person_id) REFERENCES person(person_id),
--     job_id INT,
--     CONSTRAINT CTjob FOREIGN KEY 
-- )
USE school;
CREATE TABLE teacher (
	id INT PRIMARY KEY,
    firstname VARCHAR(64),
    lastname VARCHAR(64)
);

CREATE TABLE classes (
	id INT PRIMARY KEY,
    classes_name VARCHAR(64)
);

CREATE TABLE teacher_classes (
	teacher_id INT,
    classes_id INT,
    FOREIGN KEY (teacher_id) REFERENCES teacher (id),
    FOREIGN KEY (classes_id) REFERENCES classes (id)
);

CREATE TABLE student (
	id INT PRIMARY KEY,
    firstname VARCHAR(64),
    lastname VARCHAR(64),
    classes_id INT,
	FOREIGN KEY (classes_id) REFERENCES classes (id)
);

CREATE TABLE grades (
	id INT PRIMARY KEY,
    student_id INT,
    FOREIGN KEY (student_id) REFERENCES student (id),
    subject VARCHAR(64),
    grades INT
);


