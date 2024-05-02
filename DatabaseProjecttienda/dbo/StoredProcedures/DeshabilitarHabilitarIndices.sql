CREATE PROCEDURE [dbo].[DeshabilitarHabilitarIndices]
AS
BEGIN
    DECLARE @TableName NVARCHAR(255)
    DECLARE @IndexName NVARCHAR(255)
    DECLARE @SQL NVARCHAR(MAX)

    -- Cursor para iterar sobre todas las tablas del esquema actual
    DECLARE curTables CURSOR FOR
    SELECT t.name
    FROM sys.tables t

    OPEN curTables
    FETCH NEXT FROM curTables INTO @TableName

    WHILE @@FETCH_STATUS = 0
    BEGIN
        -- Cursor para iterar sobre todos los índices de la tabla actual
        DECLARE curIndexes CURSOR FOR
        SELECT i.name
        FROM sys.indexes i
        WHERE i.object_id = OBJECT_ID(@TableName)

        OPEN curIndexes
        FETCH NEXT FROM curIndexes INTO @IndexName

        WHILE @@FETCH_STATUS = 0
        BEGIN
            -- Construir el comando SQL para deshabilitar el índice
            SET @SQL = 'ALTER INDEX ' + QUOTENAME(@IndexName) + ' ON ' + QUOTENAME(@TableName) + ' DISABLE'
            EXEC(@SQL)
			PRINT(@SQL)
            FETCH NEXT FROM curIndexes INTO @IndexName
        END

        CLOSE curIndexes
        DEALLOCATE curIndexes

        FETCH NEXT FROM curTables INTO @TableName
    END

    CLOSE curTables
    DEALLOCATE curTables
END

GO

