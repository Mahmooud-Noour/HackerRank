/*
====================================================
 Problem   :  all American cities
 Platform  : HackerRank
 Domain    : Basic Select
 Difficulty: Easy

 Approach:
 - Query all columns for all American cities 
 in the CITY table with populations larger than 100000.

====================================================
*/

SET NOCOUNT ON;
SELECT * FROM city
	WHERE countrycode = 'USA' and population > 100000 ; 
go