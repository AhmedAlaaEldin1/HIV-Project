USE HIV_DB;
GO

CREATE VIEW vw_HIV_Data_Model AS
SELECT 
    c.CountryID,
    c.Country,
    ac.[Coverage_calc_%],
    ac.Treatment_gap,
    ap.[Estimated ART coverage among children (%)_median] AS Pediatric_Coverage,
    mt.[Percentage Recieved_median] AS Mother_To_Child_Coverage,
    nc.[Count_median] AS No_of_Cases,
    nd.[Count_median] AS No_of_Deaths,
    np.[Count_median] AS No_of_People_Living_With_HIV
FROM Countries c
LEFT JOIN art_coverage ac ON c.CountryID = ac.CountryID
LEFT JOIN art_pediatric ap ON c.CountryID = ap.CountryID
LEFT JOIN mother_to_child_transmission mt ON c.CountryID = mt.CountryID
LEFT JOIN no_of_cases_adults_15_49 nc ON c.CountryID = nc.CountryID AND nc.Year = 2018
LEFT JOIN no_of_deaths nd ON c.CountryID = nd.CountryID AND nd.Year = 2018
LEFT JOIN no_of_people_living_with_hiv np ON c.CountryID = np.CountryID AND np.Year = 2018;
GO
