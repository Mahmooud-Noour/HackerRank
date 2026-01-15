/*
====================================================
 Problem   : African Cities
 Platform  : HackerRank
 Domain    : Basic Join
 Difficulty: Easy

 Approach:
 - query the names of all cities where the CONTINENT is 'Africa'.

====================================================
*/

SET NOCOUNT ON;

SELECT city.name 
    FROM city INNER JOIN  Country 
    ON city.countrycode = country.code 
    where country.continent = 'Africa';
    
go