SELECT cajeros.nomapels,productos.nombre,productos.precio,maquinas_registradoras.piso 
FROM cajeros,maquinas_registradoras,productos,venta
where venta.producto=productos.producto 
and cajeros.cajero=venta.cajero 
and maquinas_registradoras.maquina=venta.maquina;