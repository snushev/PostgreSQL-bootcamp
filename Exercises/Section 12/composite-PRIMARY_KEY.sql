-- composite PRIMARY KEY

CREATE TABLE t_grades(
    course_id VARCHAR(100) NOT NULL,
    student_id VARCHAR(100) NOT NULL,
    grade int NOT NULL
);

INSERT INTO t_grades(
    course_id,
    student_id,
    grade
)
VALUES
('Math', 'S1', 50),
('Chemistry', 'S1', 70),
('English', 'S2', 70),
('Physics', 'S1', 80);


SELECT * FROM t_grades;

DROP TABLE t_grades;

-- create composite key on new table
CREATE TABLE t_grades(
    course_id VARCHAR(100) NOT NULL,
    student_id VARCHAR(100) NOT NULL,
    grade int NOT NULL,
    PRIMARY KEY (course_id, student_id)
);

-- drop constraint
ALTER TABLE t_grades
DROP CONSTRAINT t_grades_pkey;

-- add constraint to existing table
ALTER TABLE t_grades
ADD CONSTRAINT t_grades_pkey
PRIMARY KEY (course_id, student_id);
