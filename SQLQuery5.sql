USE HIV_DB;
GO

-- إنشاء جدول Countries يحتوي على الدول فقط بدون تكرار
CREATE TABLE Countries (
    CountryID INT IDENTITY(1,1) PRIMARY KEY,
    Country VARCHAR(255) UNIQUE
);

-- إدراج الدول الفريدة من الجداول الأصلية
INSERT INTO Countries (Country)
SELECT DISTINCT Country FROM art_coverage
UNION
SELECT DISTINCT Country FROM art_pediatric
UNION
SELECT DISTINCT Country FROM mother_to_child_transmission
UNION
SELECT DISTINCT Country FROM no_of_cases_adults_15_49
UNION
SELECT DISTINCT Country FROM no_of_deaths
UNION
SELECT DISTINCT Country FROM no_of_people_living_with_hiv;



ALTER TABLE art_coverage ADD CountryID INT;
UPDATE art_coverage
SET CountryID = c.CountryID
FROM art_coverage a
JOIN Countries c ON a.Country = c.Country;


ALTER TABLE art_coverage DROP COLUMN Country;

ALTER TABLE art_pediatric ADD CountryID INT;

UPDATE art_pediatric
SET CountryID = c.CountryID
FROM art_pediatric a
JOIN Countries c ON a.Country = c.Country;

ALTER TABLE art_pediatric DROP COLUMN Country;



ALTER TABLE mother_to_child_transmission ADD CountryID INT;

UPDATE mother_to_child_transmission
SET CountryID = c.CountryID
FROM mother_to_child_transmission a
JOIN Countries c ON a.Country = c.Country;

ALTER TABLE mother_to_child_transmission DROP COLUMN Country;



ALTER TABLE no_of_cases_adults_15_49 ADD CountryID INT;

UPDATE no_of_cases_adults_15_49
SET CountryID = c.CountryID
FROM no_of_cases_adults_15_49 a
JOIN Countries c ON a.Country = c.Country;

ALTER TABLE no_of_cases_adults_15_49 DROP COLUMN Country;



ALTER TABLE no_of_deaths ADD CountryID INT;

UPDATE no_of_deaths
SET CountryID = c.CountryID
FROM no_of_deaths a
JOIN Countries c ON a.Country = c.Country;

ALTER TABLE no_of_deaths DROP COLUMN Country;




ALTER TABLE no_of_people_living_with_hiv ADD CountryID INT;

UPDATE no_of_people_living_with_hiv
SET CountryID = c.CountryID
FROM no_of_people_living_with_hiv a
JOIN Countries c ON a.Country = c.Country;

ALTER TABLE no_of_people_living_with_hiv DROP COLUMN Country;
