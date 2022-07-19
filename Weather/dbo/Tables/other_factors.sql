CREATE TABLE [dbo].[other_factors] (
    [last_updated]  DATE           NULL,
    [wind_mph]      NUMERIC (7, 3) NULL,
    [wind_degree]   NUMERIC (4, 1) NULL,
    [wind_dir_id]   NUMERIC (2)    NULL,
    [humidity]      NUMERIC (6, 3) NULL,
    [precipitation] NUMERIC (6, 3) NULL,
    [pressure]      NUMERIC (6, 3) NULL,
    [uv_index]      NUMERIC (3, 1) NULL,
    [id]            INT            NOT NULL,
    CONSTRAINT [PK_other_factors] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_other_factors_temperature] FOREIGN KEY ([id]) REFERENCES [dbo].[temperature] ([id])
);

