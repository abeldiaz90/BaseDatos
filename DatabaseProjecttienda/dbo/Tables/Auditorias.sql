CREATE TABLE [dbo].[Auditorias] (
    [id]                INT              IDENTITY (1, 1) NOT NULL,
    [PipelineId]        UNIQUEIDENTIFIER NULL,
    [registrosleidos]   INT              NULL,
    [registrosescritos] INT              NULL,
    [fechahora]         DATETIME         NULL
);


GO

CREATE CLUSTERED INDEX [IX_DescripcionIdioma_Id]
    ON [dbo].[Auditorias]([id] ASC);


GO

