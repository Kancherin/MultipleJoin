SELECT
	p.Id
	,p.Nombre
    --,[IdMarca]
	,m.Nombre as Marca
	,pd.Detalle as Detalle
    ,[Precio]
FROM [Productos].[dbo].[Productos] as p
left join Productos.dbo.Marcas as m on p.IdMarca = m.Id
left join Productos.dbo.ProductosDetalles as pd on pd.IdProducto = p.Id