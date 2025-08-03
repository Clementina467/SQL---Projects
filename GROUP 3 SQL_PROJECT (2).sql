-- -- create a database --
CREATE DATABASE GROUP_3; 

-- creating a table -- 
CREATE TABLE Celebrity(Celeb_id INT, Full_name TEXT, Gender TEXT, Date_of_Birth DATE, Country TEXT);

-- Inserting values into Celebrity table --
INSERT INTO Celebrity VALUES (1, "Jackie Chan", "Male", "1954-04-7", "China");
INSERT INTO celebrity VALUES (2, "Priyanka Chopra", "Female", "1982-07-18", "India");
INSERT INTO celebrity VALUES (3, "Jungkook", "Male", "1997-09-1", "South Korea");
INSERT INTO Celebrity VALUES (4, "Fan Bingbing", "Female", "1981-09-16", "China");
INSERT INTO Celebrity VALUES (5, "Shah Rukh Khan", "Male", "1965-11-2", "India");
INSERT INTO Celebrity VALUES (6, "Aamir Khan", "Male", "1965-03-14", "India");
INSERT INTO Celebrity VALUES (7, "Jung Ji-hoon", "Male", "1982-06-25", "South Korea");
INSERT INTO Celebrity VALUES (8, "Zhang Ziyi", "Female", "1979-02-9", "China");
INSERT INTO Celebrity VALUES (9, "Lea Salonga", "Female", "1971-02-22", "Philippines");
INSERT INTO Celebrity VALUES (10, "Ken Watanabe", "Male", "1959-10-21", "Japan");
INSERT INTO Celebrity VALUES (11, "Nora Aunor", "Female", "1953-05-21", "Philippines");
INSERT INTO Celebrity VALUES (12, "Salman Khan", "Male", "1965-12-27", "India");
INSERT INTO Celebrity VALUES (13, "Lee Ji-eun", "Female", "1993-05-16", "South Korea");
INSERT INTO Celebrity VALUES (14, "Hiroshi Abe", "Male", "1964-06-22", "Japan");
INSERT INTO Celebrity VALUES (15, "Kris Wu", "Male", "1990-11-6", "China");
INSERT INTO Celebrity VALUES (16, "Deepika Padukone", "Female", "1986-01-5", "India");
INSERT INTO Celebrity VALUES (17, "Ayumi Hamasaki", "Female", "1978-10-2", "Japan");
INSERT INTO Celebrity VALUES (18, "Alden Richards", "Male", "1992-01-2", "Japan");
INSERT INTO Celebrity VALUES (19, "Gong Yoo", "Male", "1979-07-10", "South Korea");
INSERT INTO Celebrity VALUES (20, "Dilraba Dilmurat", "Female", "1992-06-3", "China");
-- Extracting Year from date of birth --
SELECT YEAR(Date_of_Birth) AS birth_year
FROM celebrity;

-- Finding Age from date of birth --	
SELECT date_of_birth,
FLOOR(DATEDIFF('2025-06-27', date_of_birth) / 365.25) AS age
FROM celebrity;

-- Selecting all from Celebrity -- 
SELECT *
FROM celebrity;

-- CREATE TABLE --
CREATE TABLE Profession(Profession_id INT PRIMARY KEY AUTO_INCREMENT, Celeb_id INT, Primary_Profession TEXT, Other_Profession TEXT, Annual_Salary_USD INT, Debut_Year INT);

-- Inserting values into Profession --
INSERT INTO Profession(Celeb_id,  Primary_Profession,  Other_Profession, Annual_Salary_USD, Debut_Year) VALUES (1, "Actor", "Martial Artist", 40000000, 1962);
INSERT INTO Profession(Celeb_id,  Primary_Profession,  Other_Profession, Annual_Salary_USD, Debut_Year) VALUES (1, "Actor", " Director", 40000000, 1962);
INSERT INTO Profession(Celeb_id,  Primary_Profession,  Other_Profession, Annual_Salary_USD, Debut_Year) VALUES (2, "Actor", "Singer", 10000000, 2002);
INSERT INTO Profession(Celeb_id,  Primary_Profession,  Other_Profession, Annual_Salary_USD, Debut_Year) VALUES (2, "Actor", "Producer", 10000000, 2002);
INSERT INTO Profession(Celeb_id,  Primary_Profession,  Other_Profession, Annual_Salary_USD, Debut_Year) VALUES (3, "Singer", "Dancer", 80000000, 2013);
INSERT INTO Profession(Celeb_id,  Primary_Profession,  Other_Profession, Annual_Salary_USD, Debut_Year) VALUES (3, "Singer", "Songwriter", 80000000, 2013);
INSERT INTO Profession(Celeb_id,  Primary_Profession,  Other_Profession, Annual_Salary_USD, Debut_Year) VALUES (4, "Actor", "Producer", 15000000, 1991);
INSERT INTO Profession(Celeb_id,  Primary_Profession,  Other_Profession, Annual_Salary_USD, Debut_Year) VALUES (4, "Actor", "Model", 15000000, 1991);
INSERT INTO Profession(Celeb_id,  Primary_Profession,  Other_Profession, Annual_Salary_USD, Debut_Year) VALUES (5, "Actor", "Producer", 35000000, 1988);
INSERT INTO Profession(Celeb_id,  Primary_Profession,  Other_Profession, Annual_Salary_USD, Debut_Year) VALUES (5, "Actor", "TV Host", 35000000, 1988);
INSERT INTO Profession(Celeb_id,  Primary_Profession,  Other_Profession, Annual_Salary_USD, Debut_Year) VALUES (6, "Actor", "Producer", 30000000, 1973);
INSERT INTO Profession(Celeb_id,  Primary_Profession,  Other_Profession, Annual_Salary_USD, Debut_Year) VALUES (6, "Actor", "Director", 30000000, 1973);
INSERT INTO Profession(Celeb_id,  Primary_Profession,  Other_Profession, Annual_Salary_USD, Debut_Year) VALUES (7, "Singer", "Actor", 12000000, 1998);
INSERT INTO Profession(Celeb_id,  Primary_Profession,  Other_Profession, Annual_Salary_USD, Debut_Year) VALUES (7, "Singer", "Dancer", 12000000, 1998);
INSERT INTO Profession(Celeb_id,  Primary_Profession,  Other_Profession, Annual_Salary_USD, Debut_Year) VALUES (8, "Actor", "Model", 10000000, 1996);
INSERT INTO Profession(Celeb_id,  Primary_Profession,  Other_Profession, Annual_Salary_USD, Debut_Year) VALUES (8, "Actor", "Producer", 10000000, 1996);
INSERT INTO Profession(Celeb_id,  Primary_Profession,  Other_Profession, Annual_Salary_USD, Debut_Year) VALUES (9, "Singer", "Actress", 5000000, 1978);
INSERT INTO Profession(Celeb_id,  Primary_Profession,  Other_Profession, Annual_Salary_USD, Debut_Year) VALUES (9, "Singer", "Voice Actress", 5000000, 1978);
INSERT INTO Profession(Celeb_id,  Primary_Profession,  Other_Profession, Annual_Salary_USD, Debut_Year) VALUES (10, "Actor", "Voice Actor", 8000000, 1979);
INSERT INTO Profession(Celeb_id,  Primary_Profession,  Other_Profession, Annual_Salary_USD, Debut_Year) VALUES (10, "Actor", "Theatre Artist", 8000000, 1979);
INSERT INTO Profession(Celeb_id,  Primary_Profession,  Other_Profession, Annual_Salary_USD, Debut_Year) VALUES (11, "Actor", "Singer", 2000000, 1967);
INSERT INTO Profession(Celeb_id,  Primary_Profession,  Other_Profession, Annual_Salary_USD, Debut_Year) VALUES (11, "Actor", "Producer", 2000000, 1967);
INSERT INTO Profession(Celeb_id,  Primary_Profession,  Other_Profession, Annual_Salary_USD, Debut_Year) VALUES (12, "Actor", "Producer", 40000000 ,1988);
INSERT INTO Profession(Celeb_id,  Primary_Profession,  Other_Profession, Annual_Salary_USD, Debut_Year) VALUES (12, "Actor", "TV Host", 40000000 ,1988);
INSERT INTO Profession(Celeb_id,  Primary_Profession,  Other_Profession, Annual_Salary_USD, Debut_Year) VALUES (13, "Singer", "Actress", 6000000, 2008);
INSERT INTO Profession(Celeb_id,  Primary_Profession,  Other_Profession, Annual_Salary_USD, Debut_Year) VALUES (13, "Singer", "Songwriter", 6000000, 2008);
INSERT INTO Profession(Celeb_id,  Primary_Profession,  Other_Profession, Annual_Salary_USD, Debut_Year) VALUES (14, "Actor", "Model", 4000000, 1983);
INSERT INTO Profession(Celeb_id,  Primary_Profession,  Other_Profession, Annual_Salary_USD, Debut_Year) VALUES (15, "Singer", "Actor", 2500000, 2007);
INSERT INTO Profession(Celeb_id,  Primary_Profession,  Other_Profession, Annual_Salary_USD, Debut_Year) VALUES (15, "Singer", "Model", 2500000, 2007);
INSERT INTO Profession(Celeb_id,  Primary_Profession,  Other_Profession, Annual_Salary_USD, Debut_Year) VALUES (16, "Actor", "Producer", 12000000, 2006);
INSERT INTO Profession(Celeb_id,  Primary_Profession,  Other_Profession, Annual_Salary_USD, Debut_Year) VALUES (16, "Actor", "Model", 12000000, 2006);
INSERT INTO Profession(Celeb_id,  Primary_Profession,  Other_Profession, Annual_Salary_USD, Debut_Year) VALUES (17, "Singer", "Songwriter", 5000000, 1998);
INSERT INTO Profession(Celeb_id,  Primary_Profession,  Other_Profession, Annual_Salary_USD, Debut_Year) VALUES (17, "Singer", "Actress", 5000000, 1998);
INSERT INTO Profession(Celeb_id,  Primary_Profession,  Other_Profession, Annual_Salary_USD, Debut_Year) VALUES (18, "Actor", "Model", 3000000, 2011);
INSERT INTO Profession(Celeb_id,  Primary_Profession,  Other_Profession, Annual_Salary_USD, Debut_Year) VALUES (18, "Actor", "Singer", 3000000, 2011);
INSERT INTO Profession(Celeb_id,  Primary_Profession,  Other_Profession, Annual_Salary_USD, Debut_Year) VALUES (19, "Actor", "Model", 7000000, 2001);
INSERT INTO Profession(Celeb_id,  Primary_Profession,  Other_Profession, Annual_Salary_USD, Debut_Year) VALUES (19, "Actor", "TV Host", 7000000, 2001);
INSERT INTO Profession(Celeb_id,  Primary_Profession,  Other_Profession, Annual_Salary_USD, Debut_Year) VALUES (20, "Actor", "Singer", 10000000, 2013);
INSERT INTO Profession(Celeb_id,  Primary_Profession,  Other_Profession, Annual_Salary_USD, Debut_Year) VALUES (20, "Actor", "Model", 10000000, 2013);

SELECT *
FROM profession;


 -- Selecting all from Profession --
SELECT *
FROM Profession;


-- creating table --
CREATE TABLE Industry (Industry_id INT, Title TEXT, Content TEXT, Release_year INT, Revenue_Million INT, Celeb_id INT);

-- Inserting Values into Industry --
INSERT INTO Industry VALUES (101, "Rush Hour", "Movie", 1998, 244.4, 1 );
INSERT INTO Industry VALUES(102, "Quantico", "TV Show", 2015, 60.0, 2 );
INSERT INTO Industry VALUES(103, "Dynamite", "Song", 2020, 190.0, 3 );
INSERT INTO Industry VALUES(104, "Lost in Beijing", "Movie", 2007, 30.0, 4);
INSERT INTO Industry VALUES(105, "My Name is Khan", "Movie", 2010, 150.0, 5 );
INSERT INTO Industry VALUES(106, "Dangal", "Movie", 2016, 330.0, 6 );
INSERT INTO Industry VALUES(107, "Full House", "TV Show", 2004, 20.0, 7);
INSERT INTO Industry VALUES(108, "Crouching Tiger Hidden Dragon", "Movie", 2000, 213.5, 8);
INSERT INTO Industry VALUES(109, "A Whole New World", "Song", 1992, 50.0, 9 );
INSERT INTO Industry VALUES(110, "The Last Samurai", "Movie", 2003, 456.0, 10);
INSERT INTO Industry VALUES(111, "Himala", "Movie", 1982, 2.5, 11);
INSERT INTO Industry VALUES(112, "Bajrangi Bhaijaan", "Movie", 2015, 150.0, 12);
INSERT INTO Industry VALUES(113, "Good Day", "Song", 2010, 95.0, 13 );
INSERT INTO Industry VALUES(114, "Still Walking", "Movie", 2008, 12.0, 14); 
INSERT INTO Industry VALUES(115, "Like That", "Song", 2018, 20.0, 15);
INSERT INTO Industry VALUES(116, "Chennai Express", "Movie", 2013, 68.0, 16);
INSERT INTO Industry VALUES(117, "M", "Album", 2002, 180.0, 17);
INSERT INTO Industry VALUES(118, "Hello Love Goodbye", "Movie", 2019, 35.9, 18);
INSERT INTO Industry VALUES(119, "Goblin", "TV Show", 2016, 75.0, 19);
INSERT INTO Industry VALUES(120, "Eternal Love", "TV Show", 2017, 100.0, 20); 
 
 -- Selecting all from Industry --
SELECT *
FROM Industry;

-- create a table --
CREATE TABLE Award (Award_id INT, Award_name TEXT, Award_Category TEXT, Year_won INT, Celeb_id INT);


-- Inserting values into Award --
INSERT INTO Award VALUES (201, "Academy Honorary Award", "Life Time Achievement", 2016, 1);
INSERT INTO Award VALUES (202, "Miss World", "Beauty Pageant", 2000, 2);
INSERT INTO Award VALUES (203, "Billboard Music Award", "Best Song", 2021, 3);
INSERT INTO Award VALUES (204, "Golden Horse Best Actress", "Best Actress", 2007, 4);
INSERT INTO Award VALUES (205, "Padma Shri", "National Civilian Honor", 2005, 5);
INSERT INTO Award VALUES (206, "National Film Award", "Best Actor", 2017, 6);
INSERT INTO Award VALUES (207, "KBS Drama Award", "Best Actor", 2004, 7);
INSERT INTO Award VALUES (208, "BAFTA Rising Star Nominee", "Rising Star", 2001, 8);
INSERT INTO Award VALUES (209, "Tony Award", "Best Actress in Musical",  1991, 9); --
INSERT INTO Award VALUES (210, "Japan Academy Prize", "Best Actor", 2007, 10);
INSERT INTO Award VALUES (211, "FAMAS Award", "Best Actress", 1983, 11);
INSERT INTO Award VALUES (212, "Filmfare Award", "Best Actor", 2016, 12);
INSERT INTO Award VALUES (213, "Golden Disc Award", "Best Female Artist", 2011, 13);
INSERT INTO Award VALUES (214, "Blue Ribbon Award", "Best Actor", 2009, 14);
INSERT INTO Award VALUES (215, "Sina Music Award", "Best Male Artist", 2018, 15);
INSERT INTO Award VALUES (216, "Filmfare Best Actress", "Best Actress", 2014, 16);
INSERT INTO Award VALUES (217, "Japan Gold Disc Award", "Best Album", 2003, 17);
INSERT INTO Award VALUES (218, "PMPC Star Award", "Best Actor", 2020, 18);
INSERT INTO Award VALUES (219, "Baeksang Arts Award", "Best Actor", 2017, 19);
INSERT INTO Award VALUES (220, "China TV Golden Eagle Award", "Best Actress", 2017, 20);  

-- Selecting all from Award --
SELECT * 
FROM Award;

-- creating table --
CREATE TABLE Country ( Country TEXT, Sub_Continent TEXT, Capital_City TEXT, Official_Language TEXT, Population_Million INT,  Celeb_id INT);

-- Inserting values into Country --
INSERT INTO Country VALUES ("China", "East Asia", "Beiging", "Mandaring", 1412, 1);
INSERT INTO Country VALUES ("India", "South Asia", "New Delhi", "Hindi", 1406, 2);
INSERT INTO Country VALUES ("South Korea", "East Asia", "Seoul", "Korean", 52, 3);
INSERT INTO Country VALUES ("China", "East Asia", "Beiging", "Mandaring", 1412, 4);
INSERT INTO Country VALUES ("India", "South Asia", "New Delhi", "Hindi", 1406, 5);
INSERT INTO Country VALUES ("India", "South Asia", "New Delhi", "Hindi", 1406, 6);
INSERT INTO Country VALUES ("South Korea", "East Asia", "Seoul", "Korean", 52, 7);
INSERT INTO Country VALUES ("China", "East Asia", "Beiging", "Mandaring", 1412, 8);
INSERT INTO Country VALUES ("Philippines", "South East Asia", "Manila", "Filipino", 113, 9);
INSERT INTO Country VALUES ("Japan", "East Asia", "Tokyo", "Japanesse", 125, 10);
INSERT INTO Country VALUES ("Philippines", "South East Asia", "Manila", "Filipino", 113, 11);
INSERT INTO Country VALUES ("India", "South Asia", "New Delhi", "Hindi", 1406, 12);
INSERT INTO Country VALUES ("South Korea", "East Asia", "Seoul", "Korean",52, 13);
INSERT INTO Country VALUES ("Japan", "East Asia", "Tokyo", "Japanesse", 125, 14);
INSERT INTO Country VALUES ("China", "East Asia", "Beiging", "Mandaring", 1412, 15);
INSERT INTO Country VALUES ("India", "South Asia", "New Delhi", "Hindi", 1406, 16);
INSERT INTO Country VALUES ("Japan", "East Asia", "Tokyo", "Japanesse", 125,17);
INSERT INTO Country VALUES ("Philippines", "South East Asia", "Manila", "Filipino", 113, 18);
INSERT INTO Country VALUES ("South Korea", "East Asia", "Seoul", "Korean", 52, 19);
INSERT INTO Country VALUES ("China", "East Asia", "Beiging", "Mandaring", 1412, 20);

-- Selecting all from Country --
SELECT *
FROM Country;


-- Top 5 highest Paid celebrities 
SELECT c.Full_name, p.Primary_Profession, p.Annual_Salary_USD
FROM celebrity c
JOIN profession p ON c.Celeb_id = p.Celeb_id
ORDER BY p.Annual_Salary_USD DESC
LIMIT 5;

-- Celebrities who won an award after 10 years --
SELECT DISTINCT c.Full_name, a.Award_name, a.Year_won
FROM celebrity c
JOIN award a ON c.Celeb_id = a.Celeb_id
WHERE a.Year_won > 2015;


-- Count of Celebrities by Country --
SELECT co.Country, COUNT(DISTINCT c.Celeb_id) AS Num_Celebrities
FROM country co
JOIN celebrity c ON co.Country = c.Country
GROUP BY co.Country
ORDER BY Num_Celebrities DESC;





-- Award winning Celebrities by Award category --
SELECT a.Award_Category, COUNT(DISTINCT c.Celeb_id) AS Num_Celebs
FROM award a
JOIN celebrity c ON a.Celeb_id = c.Celeb_id
GROUP BY a.Award_Category
ORDER BY Num_Celebs DESC;


-- Top 3 Countries with Highest Number of Award-Winning Celebrities --
SELECT co.Country, COUNT(DISTINCT a.Celeb_id) AS Award_Winners
FROM award a
JOIN celebrity c ON a.Celeb_id = c.Celeb_id
JOIN country co ON c.Country = co.Country
GROUP BY co.Country
ORDER BY Award_Winners DESC
LIMIT 3;


-- Gender Distribution by Award --
SELECT c.Gender, COUNT(DISTINCT a.Celeb_id) AS Award_Winner_Count
FROM celebrity c
JOIN award a ON c.Celeb_id = a.Celeb_id
GROUP BY c.Gender;