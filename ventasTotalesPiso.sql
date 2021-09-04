select maquinas_registradoras.piso, sum(productos.precio) as ventaTotal 
from maquinas_registradoras, venta, productos
where venta.maquina=maquinas_registradoras.maquina
and venta.producto=productos.producto
group by maquinas_registradoras.piso;