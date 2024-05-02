Create procedure ventas.Marcas_Eliminar
@Id int
as
begin
delete from ventas.Marcas where IdMarca=@Id
end

GO

