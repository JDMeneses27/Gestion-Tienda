# Descripción del proyecto explicando su propósito y funcionalidad.

En este proyecto lo que hacemos es que creamos diferentes tablas para la tienda TechZone y ademas le agregamos unos datos ficticios para probar creamos tablas como : Clientes, Proveedores, Productos y Ventas.

Ademas de esto, estas tablas las probamos con sus respectivos queries y procedures en los queries lo que hicimos es mostrar los diferentes datos que habiamos proporcionado con su respectiva busqueda como por ejemplo: Listar los productos con stock menor a 5 unidades o por ejemplo identificar clientes que no han comprado en una respectiva cantidad de meses, y en los procedure creamos
## Creación del Contenedor

```bash
docker run -d --name Gestion_container -e POSTGRES_USER=admin -e POSTGRES_PASSWORD=admin -e POSTGRES_DB=Tienda -p 5433:5432 -v pgdata:/var/lib/postgresql/data --restart=unless-stopped postgres:15
```

## Conectar al Contenedor de Docker
```bash
docker exec -it Gestion_container bash
```

## Conectar con PostgreSQL bajo Consola
```bash
psql -h localhost -U admin -d Tienda -W
```

# Descripción de cada script (db.sql, insert.sql, queries.sql, procedure.sql).

### db.sql

Creamos la database basica con sus respectivas 4 tablas y ademas creamos los after table para añadir ls foreign key para que al momento de hacer los otros puntos del examen no haya ningun error.

### insert.sql

Insertamos distintos datos ficticios en las tablas para que se puedan probar los queries y los procedure.

### queries.sql

En este archivo probamos y creamos los distintos puntos que nos pedia el examen , realizamos los siguientes ejercicios:

1️⃣ Listar los productos con stock menor a 5 unidades.

2️⃣ Calcular ventas totales de un mes específico.

3️⃣ Obtener el cliente con más compras realizadas.

4️⃣ Listar los productos más vendidos.

5️⃣ Consultar ventas realizadas en un rango de fechas.

6️⃣ Identificar clientes que no han comprado en los últimos 6 meses.

### procedure.sql

No pudimos realizar ningun procedimiento