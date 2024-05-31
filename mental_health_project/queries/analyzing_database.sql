-- calculating average age
SELECT 
	AVG(age) AS averageAge
FROM student_mental_health_data;

select * from student_mental_health_data;

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
GROUP BY depression;

-- deprssion anxiety
SELECT 
	anxiety,
	COUNT(*) numOfStudents
FROM student_mental_health_data
GROUP BY anxiety;

-- panic attack distribution
SELECT 
	panic_attack,
    COUNT(*) numOfStudents
FROM student_mental_health_data
GROUP BY panic_attack;
	
-- correlation between depression, anxiety, panic_attack
SELECT 
	depression,
    anxiety,
    panic_attack,
	COUNT(*) numOfStudents
FROM student_mental_health_data
GROUP BY depression, anxiety, panic_attack
ORDER BY numOfStudents DESC;
