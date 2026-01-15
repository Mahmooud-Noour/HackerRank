/*
====================================================
 Problem   : Population Census
 Platform  : HackerRank
 Domain    : Basic Join
 Difficulty: Easy

 Approach:
 - query the sum of the populations
 of all cities where the CONTINENT is 'Asia'.
 
====================================================
*/

SET NOCOUNT ON;

SELECT SUM(City.population) 
    FROM City INNER JOIN Country
    ON CITY.CountryCode = COUNTRY.Code
    WHERE  Country.continent = 'Asia'; 
go
