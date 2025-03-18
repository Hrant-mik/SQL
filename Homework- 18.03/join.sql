-- SELECT student.firstname, classes.classes_name
-- FROM student
-- JOIN classes ON student.classes_id = classes.id



-- SELECT teacher.firstname, teacher.lastname, classes.classes_name
-- FROM teacher
-- JOIN teacher_classes ON teacher.id = teacher_classes.teacher_id
-- JOIN classes ON teacher_classes.classes_id = classes.id;

-- SELECT student.firstname, student.lastname, grades.grades
-- FROM student
-- JOIN grades
-- ON student.id = grades.student_id

-- SELECT classes.classes_name, COUNT(student.id) AS student_count
-- FROM classes
-- LEFT JOIN student ON classes.id = student.classes_id
-- GROUP BY classes.classes_name;

SELECT student.firstname, student.lastname
FROM student
JOIN classes on student.classes_id = classes.id
WHERE classes.classes_name = "physics"