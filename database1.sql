USE employee_data;

-- Drop dependent tables first (if they exist)
DROP TABLE IF EXISTS project_resource;
DROP TABLE IF EXISTS project;
DROP TABLE IF EXISTS employee_skill;
DROP TABLE IF EXISTS department;
DROP TABLE IF EXISTS skill;
DROP TABLE IF EXISTS this_is_a_test;
DROP TABLE IF EXISTS employee_personal_data;

-- Recreate employee_personal_data
CREATE TABLE employee_personal_data (
    employee_id INT AUTO_INCREMENT NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    manager_id INT,
    PRIMARY KEY (employee_id),
    FOREIGN KEY (manager_id) REFERENCES employee_personal_data(employee_id)
);

-- Recreate department
CREATE TABLE department (
    department_id INT AUTO_INCREMENT NOT NULL,
    department_name VARCHAR(50) NOT NULL,
    department_code VARCHAR(4) NOT NULL,
    department_manager_id INT,
    PRIMARY KEY (department_id),
    FOREIGN KEY (department_manager_id) REFERENCES employee_personal_data(employee_id)
);

-- Recreate skill
CREATE TABLE skill (
    skill_id INT AUTO_INCREMENT NOT NULL,
    skill_name VARCHAR(50) NOT NULL,
    PRIMARY KEY (skill_id)
);

-- Recreate employee_skill
CREATE TABLE employee_skill (
    employee_skill_id INT AUTO_INCREMENT NOT NULL,
    employee_id INT,
    skill_id INT,
    PRIMARY KEY (employee_skill_id),
    FOREIGN KEY (employee_id) REFERENCES employee_personal_data(employee_id),
    FOREIGN KEY (skill_id) REFERENCES skill(skill_id)
);

-- Recreate project
CREATE TABLE project (
    project_id INT AUTO_INCREMENT NOT NULL,
    project_name VARCHAR(100),
    project_number VARCHAR(10),
    project_leader_id INT,
    PRIMARY KEY (project_id),
    FOREIGN KEY (project_leader_id) REFERENCES employee_personal_data(employee_id)
);

-- Recreate project_resource
CREATE TABLE project_resource (
    project_resource_id INT AUTO_INCREMENT NOT NULL,
    project_id INT,
    employee_id INT,
    PRIMARY KEY (project_resource_id),
    FOREIGN KEY (project_id) REFERENCES project(project_id),
    FOREIGN KEY (employee_id) REFERENCES employee_personal_data(employee_id)
);

-- Recreate this_is_a_test
CREATE TABLE this_is_a_test (
    test_id INT AUTO_INCREMENT NOT NULL,
    test_name VARCHAR(10),
    PRIMARY KEY (test_id)
);


