CREATE TABLE [ventas].[Productos] (
    [IdProducto]     INT          IDENTITY (1, 1) NOT NULL,
    [Descripcion]    VARCHAR (50) NULL,
    [PrecioUnitario] MONEY        NULL,
    [IdMarca]        INT          NULL,
    [activo]         BIT          NULL,
    PRIMARY KEY CLUSTERED ([IdProducto] ASC)
);


GO

