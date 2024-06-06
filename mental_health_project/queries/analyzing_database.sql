-- calculating average age
SELECT 
	AVG(age) AS averageAge
FROM student_mental_health_data;

-- cgpa distribution
SELECT 
	cgpa, 
	COUNT(*) numOfStudents
FROM student_mental_health_data 
GROUP BY cgpa
ORDER BY numOfStudents DESC;

-- deprssion distribution
SELECT 
	depression,
    COUNT(*) numOfStudents
FROM student_mental_health_data
WHERE depression=1
GROUP BY depression;

-- anxiety distribution
SELECT 
	anxiety,
	COUNT(*) numOfStudents
FROM student_mental_health_data
WHERE anxiety = 1
GROUP BY anxiety;

-- panic attack distribution
SELECT 
	panic_attack,
    COUNT(*) numOfStudents
FROM student_mental_health_data
WHERE panic_attack=1
GROUP BY panic_attack;
    
-- specialist treatment distribution
SELECT 
	seen_specialist_for_treatment,
    COUNT(*) numOfStudents
FROM student_mental_health_data
WHERE seen_specialist_for_treatment=1
GROUP BY seen_specialist_for_treatment;
	
-- correlation between depression, anxiety, panic_attack
SELECT 
	depression,
    anxiety,
    panic_attack,
	COUNT(*) numOfStudents
FROM student_mental_health_data
WHERE depression=1 || anxiety=1 || panic_attack=1
GROUP BY depression, anxiety, panic_attack
ORDER BY numOfStudents DESC;

-- depression and specialist treatment distribution
SELECT 
	depression,
    seen_specialist_for_treatment,
    COUNT(*) AS numOfStudents
FROM student_mental_health_data
WHERE depression=1
GROUP BY depression, seen_specialist_for_treatment;

-- number of men and women
SELECT 
	gender,
    COUNT(*)
FROM student_mental_health_data
GROUP BY gender;

-- gender, depression and specialist treatment
SELECT 
	gender,
	depression,
    seen_specialist_for_treatment,
    COUNT(*) numOfStudents
FROM student_mental_health_data
GROUP BY gender, depression, seen_specialist_for_treatment;

-- gender and depression
SELECT 
	gender,
	depression,
    COUNT(*) numOfStudents
FROM student_mental_health_data
WHERE depression=1
GROUP BY gender, depression;

-- gender, anxiety and panic attack distrbution
SELECT 
	gender,
	anxiety,
    panic_attack,
    COUNT(*) numOfStudents
FROM student_mental_health_data
WHERE anxiety=1 || panic_attack=1
GROUP BY gender, anxiety, panic_attack;
    
-- age and mental health issues distribution
SELECT 
	age,
	anxiety,
    panic_attack,
    COUNT(*) numOfStudents
FROM student_mental_health_data
WHERE depression=1 || anxiety=1 || panic_attack=1
GROUP BY age, anxiety, panic_attack
ORDER BY age DESC;

-- major and mental health issues distribution
SELECT 
	major,
    depression,
	anxiety,
    panic_attack,
    COUNT(*) numOfStudents
FROM student_mental_health_data
WHERE depression=1 || anxiety=1 || panic_attack=1
GROUP BY major, depression, anxiety, panic_attack
ORDER BY major;
-- CGPA and mental health issues distribution
SELECT 
	cgpa,
    depression,
	anxiety,
    panic_attack,
    COUNT(*) numOfStudents
FROM student_mental_health_data
WHERE depression=1 || anxiety=1 || panic_attack=1
GROUP BY cgpa, depression, anxiety, panic_attack
ORDER BY cgpa;
-- marital status and mental health issues distribution
SELECT 
	marital_status,
    depression,
	anxiety,
    panic_attack,
    COUNT(*) numOfStudents
FROM student_mental_health_data
WHERE marital_status=1
GROUP BY marital_status, depression, anxiety, panic_attack;

-- age and specialist treatment distribution
SELECT 
	age,
    seen_specialist_for_treatment,
    COUNT(*) numOfStudents
FROM student_mental_health_data
WHERE seen_specialist_for_treatment=1
GROUP BY age, seen_specialist_for_treatment
ORDER BY age;