CREATE TABLE [ventas].[Ventas] (
    [IdVenta]    INT      IDENTITY (1, 1) NOT NULL,
    [IdCliente]  INT      NOT NULL,
    [Idproducto] INT      NOT NULL,
    [Cantidad]   INT      NOT NULL,
    [FechaVenta] DATETIME NULL,
    PRIMARY KEY CLUSTERED ([IdVenta] ASC)
);


GO

