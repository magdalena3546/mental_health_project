CREATE DATABASE mental_health;

USE mental_health;

CREATE TABLE student_mental_health_data (
	id INT PRIMARY KEY AUTO_INCREMENT,
    gender VARCHAR(20) NOT NULL,
    age INT NOT NULL,
    major VARCHAR(100) NOT NULL,
    year_of_study VARCHAR(10) NOT NULL,
    cgpa VARCHAR(20) NOT NULL,
    marital_status TINYINT(1) NOT NULL,  
    depression TINYINT(1) NOT NULL,
    anxiety TINYINT(1) NOT NULL,
    panic_attack TINYINT(1) NOT NULL,
    seen_specialist_for_treatment TINYINT(1) NOT NULL
);

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\student_mental_health.csv'
INTO TABLE student_mental_health_data
CHARACTER SET utf8
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(gender, age, major, year_of_study, cgpa, marital_status, depression, anxiety, panic_attack, seen_specialist_for_treatment)
;

SELECT * FROM student_mental_health_data;