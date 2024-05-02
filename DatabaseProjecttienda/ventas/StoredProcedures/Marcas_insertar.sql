create procedure ventas.Marcas_insertar
@Marca varchar(50)
as
begin
Insert into ventas.Marcas(Marca) values(@Marca)
end

GO

