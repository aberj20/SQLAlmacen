SELECT productos.nombre ,count(venta.producto) 
FROM productos left join venta 
on venta.producto=productos.producto
group by venta.producto 
order by count(venta.producto) desc;