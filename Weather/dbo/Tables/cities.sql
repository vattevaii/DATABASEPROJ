CREATE TABLE [dbo].[cities] (
    [Longitude] DECIMAL (18, 4) NOT NULL,
    [Latitude]  DECIMAL (18, 4) NOT NULL,
    [Name]      NVARCHAR (50)   NOT NULL,
    [Country]   NVARCHAR (50)   NOT NULL,
    [Region]    NVARCHAR (50)   NOT NULL,
    [id]        INT             IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_cities] PRIMARY KEY CLUSTERED ([id] ASC)
);

