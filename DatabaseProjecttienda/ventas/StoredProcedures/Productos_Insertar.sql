CREATE PROCEDURE ventas.Productos_Insertar
@Descripcion varchar(50),
@PrecioUnitario money,
@IdMarca int
as
begin
insert into ventas.Productos(Descripcion,PrecioUnitario,IdMarca)values(@Descripcion,@PrecioUnitario,@IdMarca)
end

GO

