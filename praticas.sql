-- QUESTAO 1

SELECT users.id, users.name, cities.name as city FROM users JOIN cities ON  cities.name='Rio de Janeiro';

-- QUESTAO 2

SELECT testimonials.id, u1.name as writer, u2.name as recipient, testimonials.message FROM testimonials JOIN users u1 ON u1.id=testimonials."writerId" JOIN users u2 ON u2.id=testimonials."recipientId";

-- QUESTAO 3


SELECT users.id AS id, users.name AS name, courses.name AS course, schools.name AS school, educations."endDate" as "endDate"
FROM educations 
JOIN users ON educations."userId" = users.id
JOIN courses ON educations."courseId" = courses.id
JOIN schools ON educations."schoolId" = schools.id
WHERE users.id = 30;

-- QUESTAO 4 

SELECT users.id AS id, users.name AS name, roles.name AS role, companies.name AS company, experiences."startDate" AS "startDate"
FROM experiences
JOIN companies ON experiences."companyId" = companies.id
JOIN roles ON experiences."roleId" = roles.id
JOIN users ON experiences."userId" = users.id
WHERE users.id = 50
AND experiences."endDate" IS NULL;