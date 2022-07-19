-- ADD TO TABLE TEMPERATURE
--INFINITE LOOP vayexa tannai data added..
--DELETED EVERYTHING above 1000 id
USE [WeatherProject]
GO
DECLARE @cityId INT 
DECLARE @temperature DECIMAL(4,2) 
DECLARE @feels DECIMAL(4,2) 
DECLARE @today DATE = '2022/07/15' 
DECLARE @day DATE 
DECLARE @count INT = 0;

WHILE @count < 100
BEGIN
SET @cityId = dbo.fn_RandIntBetween(1,20,RAND())
SET @temperature  = RAND() * 70 - 20;
SET @feels = RAND() * 10 - 5 + @temperature;
SET @day = DATEADD(DAY, RAND() * 100 - 100, @today);

INSERT INTO [dbo].[temperature]
           ([last_updated]
           ,[temperature]
           ,[feels_like]
           ,[city_id]
           ,[date])
     VALUES
           (GETDATE()
           ,@temperature
           ,@feels
           ,@cityId
           ,@day)

	SET @count = @count + 1;
END
SELECT * FROM dbo.temperature;
GO
