--Count total participants

SELECT COUNT(*) AS total_respondents FROM survey;

--Top 10 countries by number of developers

SELECT Country, COUNT(*) AS num_respondents
FROM survey
GROUP BY Country
ORDER BY num_respondents DESC
LIMIT 10;

--Average years of coding experience by country
SELECT Country, AVG(YearsCoding) AS avg_years_coding
FROM survey
WHERE YearsCoding IS NOT NULL
GROUP BY Country
ORDER BY avg_years_coding DESC
LIMIT 10;

--Most used programming languages (had to split)
SELECT LanguageWorkedWith, COUNT(*) AS frequency
FROM survey
GROUP BY LanguageWorkedWith
ORDER BY frequency DESC
LIMIT 10;

SELECT 'JavaScript' AS language, COUNT(*) AS frequency
FROM Survey
WHERE LanguageWorkedWith LIKE '%JavaScript%'
UNION ALL
SELECT 'Python', COUNT(*)
FROM Survey
WHERE LanguageWorkedWith LIKE '%Python%'
UNION ALL
SELECT 'SQL', COUNT(*)
FROM Survey
WHERE LanguageWorkedWith LIKE '%SQL%'
UNION ALL
SELECT 'Java', COUNT(*)
FROM Survey
WHERE LanguageWorkedWith LIKE '%Java%'
UNION ALL
SELECT 'C#', COUNT(*)
FROM Survey
WHERE LanguageWorkedWith LIKE '%C#%'
UNION ALL
SELECT 'PHP', COUNT(*)
FROM Survey
WHERE LanguageWorkedWith LIKE '%PHP%'
UNION ALL
SELECT 'HTML', COUNT(*)
FROM Survey
WHERE LanguageWorkedWith LIKE '%HTML%'
UNION ALL
SELECT 'CSS', COUNT(*)
FROM Survey
WHERE LanguageWorkedWith LIKE '%CSS%'
UNION ALL
SELECT 'TypeScript', COUNT(*)
FROM Survey
WHERE LanguageWorkedWith LIKE '%TypeScript%'
UNION ALL
SELECT 'Bash/Shell', COUNT(*)
FROM Survey
WHERE LanguageWorkedWith LIKE '%Bash/Shell%'
ORDER BY frequency DESC;

--Job satisfaction level

SELECT JobSatisfaction, COUNT(*) AS frequency
FROM Survey
WHERE JobSatisfaction IS NOT NULL 
  AND JobSatisfaction != 'NA'
GROUP BY JobSatisfaction
ORDER BY frequency DESC;

--Developer Type/Role (had to split as well)

SELECT DevType, COUNT(*) AS frequency
FROM Survey
WHERE DevType NOT NULL
GROUP BY DevType
ORDER BY frequency DESC
LIMIT 10;

SELECT 'Mobile Developer' AS DevRole, COUNT(*) AS frequency
FROM Survey
WHERE DevType LIKE '%Mobile Developer%'
UNION ALL
SELECT 'Front-End Developer', COUNT(*)
FROM Survey
WHERE DevType LIKE '%Front-End Developer%'
UNION ALL
SELECT 'Back-End Developer', COUNT(*)
FROM Survey
WHERE DevType LIKE '%Back-End Developer%'
UNION ALL
SELECT 'Full-Stack Developer', COUNT(*)
FROM Survey
WHERE DevType LIKE '%Full-Stack Developer%'
UNION ALL
SELECT 'Database Administrator', COUNT(*)
FROM Survey
WHERE DevType LIKE '%Database Administrator%'
UNION ALL
SELECT 'DevOps Specialist', COUNT(*)
FROM Survey
WHERE DevType LIKE '%DevOps Specialist%'
UNION ALL
SELECT 'Desktop or Enterprise Applications Developer', COUNT(*)
FROM Survey
WHERE DevType LIKE '%Desktop or Enterprise Applications Developer%'
UNION ALL
SELECT 'Embedded Applications or Devices Developer', COUNT(*)
FROM Survey
WHERE DevType LIKE '%Embedded Applications or Devices Developer%'
UNION ALL
SELECT 'Data or Business Analyst', COUNT(*)
FROM Survey
WHERE DevType LIKE '%Data or Business Analyst%'
UNION ALL
SELECT 'Data Scientist or Machine Learning Specialist', COUNT(*)
FROM Survey
WHERE DevType LIKE '%Data Scientist or Machine Learning Specialist%'
ORDER BY frequency DESC;