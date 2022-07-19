CREATE PROCEDURE [dbo].[GetAverageDataForRegion]
	@beforedate date = NULL,
	@fordays int = 1,
	@region nvarchar(50) = 'Vllawtyk'
AS
	SET @beforedate = ISNULL(@beforedate, GETDATE())
	SELECT MIN(date) AS date_from,MAX(date) AS date_to,AVG(t.temperature) AS avg_temperature,AVG(t.feels_like) AS avg_feel,c.Name AS city,c.Region
	FROM dbo.temperature t
	RIGHT JOIN dbo.cities c ON t.city_id = c.id
	WHERE t.date<=@beforedate AND t.date>DATEADD(DAY, -@fordays,@beforedate)
		AND c.Region = @region
	GROUP BY c.Name, c.Region
	ORDER BY c.Name
RETURN 0