CREATE FUNCTION ReiniciarSecuenciaInt()
RETURNS INT
AS
BEGIN
    DECLARE @MaxValue INT = 5; -- Máximo valor de un INT
    DECLARE @MinValue INT = 1; -- Mínimo valor de un INT
    DECLARE @NewValue INT;

    -- Obtener el máximo valor actual de la secuencia
    SELECT @NewValue = MAX(id) + 1
    FROM demo;

    -- Si se alcanza el máximo valor de INT, reiniciar a @MinValue
    IF @NewValue >= @MaxValue
    BEGIN
        SET @NewValue = @MinValue;
    END

    RETURN @NewValue;
END;

GO

