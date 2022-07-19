--ADD TO CITIES

USE [WeatherProject]
DECLARE @latitude DECIMAL(5,2)
DECLARE @longitude DECIMAL(5,2)
DECLARE @name NVARCHAR(20)
DECLARE @country NVARCHAR(20)
DECLARE @region NVARCHAR(20)

DECLARE @count INT = 1

WHILE @count < 20
BEGIN
	SET @latitude = RAND()*1000
	SET @longitude = RAND()*1000
	EXEC dbo.CreateRandomString @randomString = @name OUTPUT
	EXEC dbo.CreateRandomString @randomString = @country OUTPUT
	EXEC dbo.CreateRandomString @randomString = @region OUTPUT
	
	INSERT INTO dbo.cities (latitude,longitude,name,country,region)
	Values (@latitude,@longitude,@name,@country,@region)
	
   SET @count = @count + 1
END;
/*SELECT RAND()

INSERT INTO dbo.cities (latitude,longitude,name,country,region)
Values (321.03,152.45,'hustin','Seroflo','Mid-West');
SELECT dbo.fn_PickRandomChar(RAND())
*/

GO