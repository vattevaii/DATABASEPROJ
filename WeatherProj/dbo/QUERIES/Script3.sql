-- EXPERIMENTS
-- UPDATES
-- ETC

/****** Script for SelectTopNRows command from SSMS  ******/
--SELECT date AS monthes,AVG(temperature) AS avg_temp,AVG(feels_like) AS avg_feels
--FROM dbo.temperature
--GROUP BY date
--ORDER BY monthes;

/* MONTH(date) to get month int */
/* DATEPART(WEEK, date) to get week int (week number)*/
USE WeatherProject;
--EXEC dbo.GetDataForDays @beforedate = '2022-06-14', @fordays = 7, @city ='Fameldrrep'
--SELECT id,* FROM cities
EXEC dbo.GetAverageDataForRegion @fordays = 90, @beforedate = '2022-7-1'

-- Deleting all non-unique indexes (Wanted to make city_id and date the primary key)
--DELETE FROM dbo.temperature WHERE id IN (SELECT a.id AS id FROM dbo.temperature a INNER JOIN dbo.temperature b
--ON a.city_id = b.city_id AND a.date=b.date 
--WHERE a.city_id=b.city_id AND a.date = b.date AND a.id != b.id)

-- Updating all cities with regions on id = id%5;
--WITH cte AS (
--	SELECT name AS new_name,region AS new_region ,id AS new_id FROM cities
--	)
--UPDATE dbo.cities SET Region = cte.new_region
--FROM cte
--WHERE id % 5 = cte.new_id % 5