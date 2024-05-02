CREATE TABLE [dbo].[demo] (
    [id]     INT          IDENTITY (1, 1) NOT NULL,
    [nombre] VARCHAR (30) NULL
);


GO

CREATE TRIGGER ReiniciarIdTrigger
ON demo
AFTER INSERT
AS
BEGIN
    DECLARE @MaxValue INT;
    SELECT @MaxValue = MAX(Id) FROM demo;

    IF @MaxValue >= 2147483647  -- valor maximo para un INT
	--IF @MaxValue >= 9223372036854775807  -- valor maximo para un BIGINT
    BEGIN
        DECLARE @fechaHora NVARCHAR(100)
        SET @fechaHora = REPLACE(REPLACE(CONVERT(NVARCHAR(19), GETDATE(), 120), '-', ''), ':', '')

        DECLARE @nombreTabla NVARCHAR(100)
        SET @nombreTabla = 'demo_' +  REPLACE(@fechaHora,' ','_')

        DECLARE @sql NVARCHAR(MAX)
        SET @sql = 'SELECT *
                   INTO ' + QUOTENAME(@nombreTabla) + 'FROM demo;'

        EXEC(@sql)

        TRUNCATE TABLE DEMO
        DBCC CHECKIDENT ('demo', RESEED, 1);
    END;
END;

GO

