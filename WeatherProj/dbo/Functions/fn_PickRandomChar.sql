CREATE FUNCTION [dbo].[fn_PickRandomChar]
(
  @rand  FLOAT
)
RETURNS CHAR(1)
AS
BEGIN
  DECLARE @chars VARCHAR(MAX) = 'abcdefghijklmnopqrstuvwxyz';
  DECLARE @result CHAR(1) = NULL;
  DECLARE @resultIndex INT = NULL;
  SET @result = NULL
  BEGIN
    SET @resultIndex = dbo.fn_RandIntBetween(1, LEN(@chars), @rand);
    SET @result = SUBSTRING(@chars, @resultIndex, 1);
  END
  RETURN @result;
END

