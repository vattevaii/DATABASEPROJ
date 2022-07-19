CREATE TABLE [dbo].[temperature] (
    [last_updated]    DATETIME       NOT NULL,
    [temperature]     NUMERIC (6, 3) NOT NULL,
    [feels_like]      NUMERIC (6, 3) NULL,
    [weather_cond_id] NUMERIC (2)    NULL,
    [city_id]         INT            NOT NULL,
    [date]            DATE           NOT NULL,
    CONSTRAINT [PK_temperature_1] PRIMARY KEY CLUSTERED ([city_id] ASC, [date] ASC),
    CONSTRAINT [FK_temperature_cities] FOREIGN KEY ([city_id]) REFERENCES [dbo].[cities] ([id])
);

