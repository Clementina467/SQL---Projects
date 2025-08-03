-- Avg Salary of Celebrities by Country --
SELECT 
    c.Country, 
    ROUND(AVG(p.Annual_Salary_USD), 2) AS Avg_Salary_Of_Celebrities
FROM Celebrity c
JOIN Profession p ON c.Celeb_id = p.Celeb_id
GROUP BY c.Country
ORDER BY Avg_Salary_Of_Celebrities DESC; 


-- Salary by gender
SELECT c.Gender, 
    ROUND(AVG(p.Annual_Salary_USD), 2) AS Avg_Salary
FROM Celebrity c
JOIN Profession p ON c.Celeb_id = p.Celeb_id
GROUP BY c.Gender;


-- Award count by gender
SELECT 
    c.Gender, 
    COUNT(a.Award_id) AS Award_Count
FROM Celebrity c
JOIN Award a ON c.Celeb_id = a.Celeb_id
GROUP BY c.Gender;


-- Avg salary of Primary Profession --
SELECT 
    Content, 
    AVG(Revenue_Million) AS Avg_Revenue
FROM Industry
GROUP BY Content
ORDER BY Avg_Revenue DESC;
SELECT Primary_Profession, AVG(Annual_Salary_USD) AS Avg_Salary
FROM profession
GROUP BY Primary_Profession
ORDER BY Avg_Salary DESC;

-- Avg Active years of primary profession --
SELECT 
    Primary_Profession, 
    ROUND(AVG(2025 - Debut_Year), 2) AS Avg_Years_Active
FROM Profession
GROUP BY Primary_Profession
ORDER BY Avg_Years_Active DESC;

-- Awards count by country and award category --
SELECT 
    co.Country, 
    a.Award_Category, 
    COUNT(*) AS Award_Count
FROM Award a
JOIN Celebrity c ON a.Celeb_id = c.Celeb_id
JOIN Country co ON c.Country = co.Country
GROUP BY co.Country, a.Award_Category
ORDER BY Award_Count DESC;


-- Correlation of debut Age and Annual salary --
SELECT 
    c.Full_name, p.Debut_Year - YEAR(c.Date_of_Birth) AS Debut_Age, p.Annual_Salary_USD, COUNT(a.Award_id) AS Awards_Won
FROM Celebrity c
JOIN Profession p ON c.Celeb_id = p.Celeb_id
JOIN award a ON p.Celeb_id = a.Celeb_id
GROUP BY c.Full_name, p.Annual_Salary_USD, Debut_Age
ORDER BY Debut_Age;
    

-- Skill count of celebrities -- 
SELECT 
    c.Full_name,
    p.Primary_Profession,
    p.Other_Profession,
    LENGTH(p.Other_Profession) - LENGTH(REPLACE(p.Other_Profession, ',', '')) + 1 AS Skill_Count
FROM Celebrity c
JOIN Profession p ON c.Celeb_id = p.Celeb_id
ORDER BY Skill_Count DESC;    

-- Correlation between Years of experience and Annual salary --
SELECT 
    DISTINCT c.Full_name AS Celebrity_name,
    (2025 - p.Debut_Year) AS Years_Experience,
    p.Annual_Salary_USD
FROM Celebrity c
JOIN Profession p ON c.Celeb_id = p.Celeb_id
WHERE p.Annual_Salary_USD IS NOT NULL
GROUP BY c.Full_name, Years_Experience, p.Annual_Salary_USD
ORDER BY Annual_Salary_USD DESC;