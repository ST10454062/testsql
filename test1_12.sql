USE test1_1;

ALTER TABLE student
ADD CONSTRAINT fk_advisor FOREIGN KEY (advisor_id) REFERENCES student(student_id);

CREATE TABLE professor (
    professor_id INT PRIMARY KEY,
    prof_name VARCHAR(10),
    department VARCHAR(10)

);

CREATE TABLE course (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(10),
    credits INT,
    professor_id INT,
    FOREIGN KEY (professor_id) REFERENCES professor(professor_id)

);

CREATE TABLE enrollment (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    FOREIGN KEY (student_id) REFERENCES student(student_id),
    FOREIGN KEY (course_id) REFERENCES course(course_id)
    

);

ALTER TABLE professor
ADD COLUMN department_id INT NOT NULL;

