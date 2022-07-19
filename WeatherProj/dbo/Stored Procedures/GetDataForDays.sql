CREATE PROCEDURE [dbo].[GetDataForDays]
	@beforedate date = NULL,
	@fordays int = 1,
	@city nvarchar(50)
AS
	SET @beforedate = ISNULL(@beforedate, GETDATE())
	SELECT t.last_updated,t.date,t.temperature,t.feels_like,t.weather_cond_id,c.Name,c.Region
	FROM dbo.temperature t
	INNER JOIN dbo.cities c ON t.city_id = c.id
	WHERE t.date<=@beforedate AND t.date>DATEADD(DAY, -@fordays,@beforedate)
		AND c.Name = @city
	ORDER BY t.date
RETURN 0