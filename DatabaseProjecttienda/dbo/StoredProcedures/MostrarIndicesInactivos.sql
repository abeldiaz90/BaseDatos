CREATE PROCEDURE [dbo].[MostrarIndicesInactivos]
AS

SELECT 
    OBJECT_NAME(object_id) AS TableName,
    name AS IndexName,
    type_desc AS IndexType
FROM 
    sys.indexes
WHERE 
    is_disabled = 1; -- Filtra los índices que están deshabilitados

GO

