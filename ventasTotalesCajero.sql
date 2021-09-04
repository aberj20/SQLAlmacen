SELECT cajeros.Cajero, cajeros.NomApels , sum(productos.precio) as VentaTotal
FROM cajeros, venta, productos
where cajeros.cajero=venta.cajero
and venta.producto=productos.producto
group by cajeros.Cajero