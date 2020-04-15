DESC course;

SELECT course_id, title, credits, course_dept FROM course;

SELECT * FROM course;

SELECT title from course;

SELECT title, credits from course WHERE credits >= 6;

SELECT * FROM instructor;

SELECT inst_name, salary from instructor where salary>50000;

SELECT inst_name, salary, salary*1.1 AS new_salary from instructor;

