USE test1_1;

ALTER TABLE professor
ADD COLUMN hire_date varchar(10) NOT NULL;

ALTER TABLE professor
ADD COLUMN retirement_date varchar(10);