CREATE VIEW ventas.reporteVentas
as
select a.IdCliente,b.PrimerNombre,
b.SegundoNombre,b.ApellidoPaterno,b.ApellidoMaterno,c.Descripcion,d.Marca,
c.PrecioUnitario,a.Cantidad,
FORMAT((c.PrecioUnitario * a.Cantidad),'C2') as subtotal,
FORMAT(((c.PrecioUnitario * a.Cantidad) * 0.16),'C2')as iva,
FORMAT(((c.PrecioUnitario * a.Cantidad) + (((c.PrecioUnitario * a.Cantidad) * 0.16))),'C2') as total
from [ventas].[Ventas] a 
left join [rh].[clientes] b on a.IdCliente=b.IdCliente
left join [ventas].[Productos] c on c.IdProducto=a.Idproducto
left join [ventas].[Marcas] d on d.IdMarca=c.IdProducto;

GO

