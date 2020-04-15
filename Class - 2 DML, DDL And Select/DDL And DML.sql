CREATE DATABASE demo;

use demo;

CREATE TABLE info(id int, name varchar(20), phone varchar(20));

DESC student_info;

ALTER TABLE info ADD email varchar(20);

ALTER TABLE info DROP email;

ALTER TABLE info MODIFY name varchar(30);

ALTER TABLE info RENAME COLUMN name to student_name;

ALTER TABLE info RENAME TO student_info;

INSERT INTO student_info (id, student_name, phone) VALUES (1, 'lana', '9876543');

INSERT INTO student_info VALUES (2, 'hassan', '0875678');

INSERT INTO student_info VALUES (2, 'Sharif','NULL');

INSERT INTO student_info (id, student_name) VALUES (3, 'Nodira');

DELETE FROM student_info WHERE id=3;

UPDATE student_info SET phone = '94567' WHERE student_name ='Sharif';

TRUNCATE student_info;

DROP TABLE student_info;


