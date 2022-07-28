-- QUESTAO 1

SELECT COUNT("endDate") as "currentExperiences" 
FROM experiences;

-- QUESTAO 2

SELECT "userId" as id, COUNT("courseId") as educations  
FROM educations as e 
GROUP BY "userId";

-- QUESTAO 3

SELECT usr.name as writer, COUNT(te."writerId") 
FROM testimonials te 
JOIN users usr ON usr.id=te."writerId" 
WHERE usr.id=435 
GROUP BY writer;



-- QUESTAO 4 

SELECT roles.name ,MAX(salary) as salary from jobs
JOIN roles ON roles.id="roleId"
WHERE jobs.active = true
GROUP BY roles.name
ORDER BY salary ASC