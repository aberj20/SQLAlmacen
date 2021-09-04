
SELECT cajeros.cajero, cajeros.NomApels
from cajeros
where cajeros.cajero in(
SELECT venta.cajero
from venta
where venta.maquina in(
SELECT maquinas_registradoras.maquina 
from maquinas_registradoras 
where maquinas_registradoras.piso in(
SELECT maquinas_registradoras.piso
FROM maquinas_registradoras,productos,venta
where venta.producto=productos.producto
and venta.maquina=maquinas_registradoras.maquina
group by maquinas_registradoras.piso
having sum(productos.precio)<5000
)
)
)