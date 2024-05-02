alter procedure insertarAuditoria
@PipelineId UNIQUEIDENTIFIER,
@registrosleidos INT,
@registrosescritos INT,
@fechahora DATETIME
AS
BEGIN
INSERT INTO Auditorias(PipelineId,registrosleidos,registrosescritos,fechahora)
values(
@PipelineId,
@registrosleidos,
@registrosescritos,
@fechahora
)
END

GO

