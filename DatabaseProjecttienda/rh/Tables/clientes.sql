CREATE TABLE [rh].[clientes] (
    [IdCliente]       INT          IDENTITY (1, 1) NOT NULL,
    [PrimerNombre]    VARCHAR (50) NOT NULL,
    [SegundoNombre]   VARCHAR (50) NULL,
    [ApellidoPaterno] VARCHAR (50) NULL,
    [ApellidoMaterno] VARCHAR (50) NULL,
    [FechaNacimiento] DATE         NOT NULL,
    [SalarioBase]     MONEY        NULL,
    PRIMARY KEY CLUSTERED ([IdCliente] ASC)
);


GO

