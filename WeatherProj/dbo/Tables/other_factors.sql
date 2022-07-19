CREATE TABLE [dbo].[other_factors] (
    [last_updated]  DATE           NULL,
    [wind_mph]      NUMERIC (7, 3) NULL,
    [wind_degree]   NUMERIC (4, 1) NULL,
    [wind_dir_id]   NUMERIC (2)    NULL,
    [humidity]      NUMERIC (6, 3) NULL,
    [precipitation] NUMERIC (6, 3) NULL,
    [pressure]      NUMERIC (6, 3) NULL,
    [uv_index]      NUMERIC (3, 1) NULL,
    [city_id]       INT            NOT NULL,
    [date]          DATE           NOT NULL,
    CONSTRAINT [PK_other_factors] PRIMARY KEY CLUSTERED ([city_id] ASC, [date] ASC)
);

