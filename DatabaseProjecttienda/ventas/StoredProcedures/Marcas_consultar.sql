Create procedure ventas.Marcas_consultar
@Id int
as
begin
select * from ventas.Marcas where IdMarca=@Id
end

GO

