-- art_coverage
ALTER TABLE art_coverage
ADD CONSTRAINT FK_art_coverage_country
FOREIGN KEY (CountryID) REFERENCES Countries(CountryID);
GO

-- art_pediatric
ALTER TABLE art_pediatric
ADD CONSTRAINT FK_art_pediatric_country
FOREIGN KEY (CountryID) REFERENCES Countries(CountryID);
GO

-- mother_to_child_transmission
ALTER TABLE mother_to_child_transmission
ADD CONSTRAINT FK_mother_to_child_country
FOREIGN KEY (CountryID) REFERENCES Countries(CountryID);
GO

-- no_of_cases_adults_15_49
ALTER TABLE no_of_cases_adults_15_49
ADD CONSTRAINT FK_cases_country
FOREIGN KEY (CountryID) REFERENCES Countries(CountryID);
GO

-- no_of_deaths
ALTER TABLE no_of_deaths
ADD CONSTRAINT FK_deaths_country
FOREIGN KEY (CountryID) REFERENCES Countries(CountryID);
GO

-- no_of_people_living_with_hiv
ALTER TABLE no_of_people_living_with_hiv
ADD CONSTRAINT FK_people_living_country
FOREIGN KEY (CountryID) REFERENCES Countries(CountryID);
GO
