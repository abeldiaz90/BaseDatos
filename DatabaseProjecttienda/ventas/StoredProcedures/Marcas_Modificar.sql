Create procedure ventas.Marcas_Modificar
@Id int,
@Marca varchar(50)
as
begin
UPDATE ventas.Marcas SET Marca=@Marca where IdMarca=@Id
end

GO

