
CREATE PROCEDURE [dbo].[CreateRandomString]
  @minLength INT = 5,
  @maxLength INT = 20,
  @randomString VARCHAR(MAX) = NULL OUTPUT
AS
BEGIN
  -- prevents done in procedure msg (message is passed to the one which calls this thing after every statement)
  SET NOCOUNT ON;

  -- Get the length of our string.
  DECLARE @stringLength INT = dbo.fn_RandIntBetween(@minLength, @maxLength, RAND());
  -- Set our random string to an empty string.
  SET @randomString = UPPER(dbo.fn_PickRandomChar(RAND()));
  -- If our string is not yet the appropriate length, add another character to the string.
  WHILE LEN(@randomString) < @stringLength
  BEGIN
    SET @randomString = @randomString + [dbo].[fn_PickRandomChar](RAND());
  END

END