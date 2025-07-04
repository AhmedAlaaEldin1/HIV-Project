-- جدول: art_pediatric
UPDATE art_pediatric
SET [Estimated ART coverage among children (%)_median] = (
    SELECT AVG([Estimated ART coverage among children (%)_median]*1.0)
    FROM art_pediatric
    WHERE [Estimated ART coverage among children (%)_median] IS NOT NULL
)
WHERE [Estimated ART coverage among children (%)_median] IS NULL;

UPDATE art_pediatric
SET [Estimated ART coverage among children (%)_min] = (
    SELECT AVG([Estimated ART coverage among children (%)_min]*1.0)
    FROM art_pediatric
    WHERE [Estimated ART coverage among children (%)_min] IS NOT NULL
)
WHERE [Estimated ART coverage among children (%)_min] IS NULL;

UPDATE art_pediatric
SET [Estimated ART coverage among children (%)_max] = (
    SELECT AVG([Estimated ART coverage among children (%)_max]*1.0)
    FROM art_pediatric
    WHERE [Estimated ART coverage among children (%)_max] IS NOT NULL
)
WHERE [Estimated ART coverage among children (%)_max] IS NULL;

UPDATE art_pediatric
SET [Reported number of children receiving ART] = (
    SELECT AVG([Reported number of children receiving ART]*1.0)
    FROM art_pediatric
    WHERE [Reported number of children receiving ART] IS NOT NULL
)
WHERE [Reported number of children receiving ART] IS NULL;

UPDATE art_pediatric
SET [Estimated number of children needing ART based on WHO methods_median] = (
    SELECT AVG([Estimated number of children needing ART based on WHO methods_median]*1.0)
    FROM art_pediatric
    WHERE [Estimated number of children needing ART based on WHO methods_median] IS NOT NULL
)
WHERE [Estimated number of children needing ART based on WHO methods_median] IS NULL;

UPDATE art_pediatric
SET [Estimated number of children needing ART based on WHO methods_min] = (
    SELECT AVG([Estimated number of children needing ART based on WHO methods_min]*1.0)
    FROM art_pediatric
    WHERE [Estimated number of children needing ART based on WHO methods_min] IS NOT NULL
)
WHERE [Estimated number of children needing ART based on WHO methods_min] IS NULL;

UPDATE art_pediatric
SET [Estimated number of children needing ART based on WHO methods_max] = (
    SELECT AVG([Estimated number of children needing ART based on WHO methods_max]*1.0)
    FROM art_pediatric
    WHERE [Estimated number of children needing ART based on WHO methods_max] IS NOT NULL
)
WHERE [Estimated number of children needing ART based on WHO methods_max] IS NULL;

GO

-- جدول: mother_to_child_transmission
UPDATE mother_to_child_transmission
SET [Needing antiretrovirals_median] = (
    SELECT AVG([Needing antiretrovirals_median]*1.0)
    FROM mother_to_child_transmission
    WHERE [Needing antiretrovirals_median] IS NOT NULL
)
WHERE [Needing antiretrovirals_median] IS NULL;

UPDATE mother_to_child_transmission
SET [Needing antiretrovirals_min] = (
    SELECT AVG([Needing antiretrovirals_min]*1.0)
    FROM mother_to_child_transmission
    WHERE [Needing antiretrovirals_min] IS NOT NULL
)
WHERE [Needing antiretrovirals_min] IS NULL;

UPDATE mother_to_child_transmission
SET [Needing antiretrovirals_max] = (
    SELECT AVG([Needing antiretrovirals_max]*1.0)
    FROM mother_to_child_transmission
    WHERE [Needing antiretrovirals_max] IS NOT NULL
)
WHERE [Needing antiretrovirals_max] IS NULL;

UPDATE mother_to_child_transmission
SET [Received Antiretrovirals] = (
    SELECT AVG([Received Antiretrovirals]*1.0)
    FROM mother_to_child_transmission
    WHERE [Received Antiretrovirals] IS NOT NULL
)
WHERE [Received Antiretrovirals] IS NULL;

UPDATE mother_to_child_transmission
SET [Percentage Recieved] = (
    SELECT AVG([Percentage Recieved]*1.0)
    FROM mother_to_child_transmission
    WHERE [Percentage Recieved] IS NOT NULL
)
WHERE [Percentage Recieved] IS NULL;

GO

-- جدول: no_of_cases_adults_15_49
UPDATE no_of_cases_adults_15_49
SET [Count] = (
    SELECT AVG([Count]*1.0)
    FROM no_of_cases_adults_15_49
    WHERE [Count] IS NOT NULL
)
WHERE [Count] IS NULL;

UPDATE no_of_cases_adults_15_49
SET [Count_min] = (
    SELECT AVG([Count_min]*1.0)
    FROM no_of_cases_adults_15_49
    WHERE [Count_min] IS NOT NULL
)
WHERE [Count_min] IS NULL;

UPDATE no_of_cases_adults_15_49
SET [Count_max] = (
    SELECT AVG([Count_max]*1.0)
    FROM no_of_cases_adults_15_49
    WHERE [Count_max] IS NOT NULL
)
WHERE [Count_max] IS NULL;

GO

-- جدول: no_of_deaths
UPDATE no_of_deaths
SET [Count] = (
    SELECT AVG([Count]*1.0)
    FROM no_of_deaths
    WHERE [Count] IS NOT NULL
)
WHERE [Count] IS NULL;

UPDATE no_of_deaths
SET [Count_min] = (
    SELECT AVG([Count_min]*1.0)
    FROM no_of_deaths
    WHERE [Count_min] IS NOT NULL
)
WHERE [Count_min] IS NULL;

UPDATE no_of_deaths
SET [Count_max] = (
    SELECT AVG([Count_max]*1.0)
    FROM no_of_deaths
    WHERE [Count_max] IS NOT NULL
)
WHERE [Count_max] IS NULL;

GO

-- جدول: no_of_people_living_with_hiv
UPDATE no_of_people_living_with_hiv
SET [Count] = (
    SELECT AVG([Count]*1.0)
    FROM no_of_people_living_with_hiv
    WHERE [Count] IS NOT NULL
)
WHERE [Count] IS NULL;

UPDATE no_of_people_living_with_hiv
SET [Count_min] = (
    SELECT AVG([Count_min]*1.0)
    FROM no_of_people_living_with_hiv
    WHERE [Count_min] IS NOT NULL
)
WHERE [Count_min] IS NULL;

UPDATE no_of_people_living_with_hiv
SET [Count_max] = (
    SELECT AVG([Count_max]*1.0)
    FROM no_of_people_living_with_hiv
    WHERE [Count_max] IS NOT NULL
)
WHERE [Count_max] IS NULL;

GO

