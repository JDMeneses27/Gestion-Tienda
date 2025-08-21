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