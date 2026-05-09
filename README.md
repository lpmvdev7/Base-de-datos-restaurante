# Base de Datos Restaurante 🍽️

Proyecto de base de datos para la gestión de un restaurante 

## Levantar el proyecto

Ejecutar el siguiente comando para iniciar los contenedores:

```bash
docker compose up -d
```

## Acceder a PostgreSQL

Una vez iniciado el contenedor, acceder a la base de datos con:

```bash
docker exec -it restaurante_db psql -U postgres -d restaurante
```

---

# Registros Totales de la Base de Datos

| Tabla                  | Total Registros |
|-------------------------|----------------|
| Categoria              | 10 |
| Platillo               | 60 |
| Cliente                | 800 |
| Sucursal               | 5 |
| Empleado               | 50 |
| Mesa                   | 80 |
| Pedido                 | 1200 |
| Pago                   | 1204 |
| Proveedor              | 25 |
| Ingredientes           | 81 |
| ProveedorIngrediente   | 297 |
| DetallePedido          | 5348 |
| Receta                 | 350 |
| Inventario             | 500 |

---

# Total General de Registros

**10,010 registros**

