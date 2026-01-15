/*
====================================================
 Problem   : Average Population of Each Continent
 Platform  : HackerRank
 Domain    : Basic Join
 Difficulty: Easy

 Approach:
 - query the names of all the continents (COUNTRY.Continent) 
 and their respective average city populations (CITY.Population)
 rounded down to the nearest integer.

====================================================
*/

SET NOCOUNT ON;

SELECT COUNTRY.Continent , FLOOR(AVG(CITY.Population))
    FROM COUNTRY INNER JOIN CITY 
    ON  CITY.CountryCode = COUNTRY.Code
    GROUP BY COUNTRY.Continent ; 

go