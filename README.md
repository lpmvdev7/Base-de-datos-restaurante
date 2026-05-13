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
|------------------------|-----------------|
| Categoria              | 10              |
| Platillo               | 60              |
| Cliente                | 800             |
| Sucursal               | 5               |
| Empleado               | 50              |
| Mesa                   | 80              |
| Pedido                 | 1200            |
| Pago                   | 1204            |
| Proveedor              | 25              |
| Ingredientes           | 81              |
| ProveedorIngrediente   | 297             |
| DetallePedido          | 5348            |
| Receta                 | 350             |
| Inventario             | 500             |

---

# Total General de Registros
**10,010 registros**

---

# Glosario de Entidades

Descripción de cada entidad del modelo relacional y sus atributos.

> **Convenciones:** `PK` = Clave primaria · `FK` = Clave foránea

---

## Categoria

| Atributo | Definición |
|---|---|
| `id_categoria` PK | Identificador único autoincremental de la categoría. |
| `nombre` | Nombre descriptivo de la categoría (p. ej. Entradas, Postres, Bebidas). |

---

## Platillo

| Atributo | Definición |
|---|---|
| `id_platillo` PK | Identificador único autoincremental del platillo. |
| `nombre` | Nombre del platillo tal como aparece en el menú. |
| `precio` | Precio de venta del platillo al cliente, con dos decimales. |
| `id_categoria` FK | Referencia a la categoría a la que pertenece el platillo. |
| `descripcion` | Texto libre con detalles adicionales del platillo (ingredientes destacados, presentación, etc.). |

---

## Cliente

| Atributo | Definición |
|---|---|
| `id_cliente` PK | Identificador único autoincremental del cliente. |
| `nombre` | Nombre completo del cliente. |
| `telefono` | Número de teléfono de contacto del cliente. |

---

## Sucursal

| Atributo | Definición |
|---|---|
| `id_sucursal` PK | Identificador único autoincremental de la sucursal. |
| `direccion` | Dirección física completa donde se ubica la sucursal. |
| `telefono` | Número de teléfono de la sucursal. |
| `ciudad` | Ciudad donde está localizada la sucursal. |
| `capacidad` | Número máximo de comensales que puede atender la sucursal al mismo tiempo. |

---

## Empleado

| Atributo | Definición |
|---|---|
| `id_empleado` PK | Identificador único autoincremental del empleado. |
| `nombre` | Nombre completo del empleado. |
| `tipo` | Rol o puesto del empleado dentro del restaurante (p. ej. mesero, cocinero, cajero). |
| `telefono` | Número de teléfono de contacto del empleado. |
| `salario` | Salario del empleado expresado con dos decimales. |
| `turno` | Turno de trabajo asignado al empleado (p. ej. matutino, vespertino, nocturno). |
| `id_sucursal` FK | Referencia a la sucursal donde labora el empleado. |

---

## Mesa

| Atributo | Definición |
|---|---|
| `id_mesa` PK | Identificador único autoincremental de la mesa. |
| `capacidad` | Número de comensales que puede acomodar la mesa. |
| `numero_mesa` | Número visible asignado a la mesa dentro de la sucursal (puede repetirse entre sucursales). |
| `estado` | Estado actual de la mesa (p. ej. disponible, ocupada, reservada). |
| `id_sucursal` FK | Referencia a la sucursal a la que pertenece la mesa. |

---

## Pedido

| Atributo | Definición |
|---|---|
| `id_pedido` PK | Identificador único autoincremental del pedido. |
| `fecha_hora` | Fecha y hora exacta en que se registró el pedido. |
| `estado` | Estado actual del pedido (p. ej. en proceso, entregado, cancelado). |
| `total` | Importe total del pedido, calculado a partir de los detalles. |
| `id_cliente` FK | Referencia al cliente que realizó el pedido. |
| `id_mesa` FK | Referencia a la mesa donde se tomó el pedido. |
| `id_empleado` FK | Referencia al empleado (mesero) que atendió el pedido. |

---

## Pago

| Atributo | Definición |
|---|---|
| `id_pago` PK | Identificador único autoincremental del pago. |
| `monto` | Cantidad monetaria pagada por el cliente. |
| `id_pedido` FK | Referencia al pedido que se está liquidando. |
| `fecha` | Fecha en que se realizó el pago. |
| `metodo_pago` | Medio utilizado para el pago (p. ej. efectivo, tarjeta de crédito, transferencia). |

---

## Proveedor

| Atributo | Definición |
|---|---|
| `id_proveedor` PK | Identificador único autoincremental del proveedor. |
| `nombre` | Nombre o razón social del proveedor. |
| `telefono` | Número de teléfono de contacto del proveedor. |
| `email` | Correo electrónico del proveedor para comunicaciones formales. |
| `direccion` | Dirección física o fiscal del proveedor. |
| `tipo` | Categoría o especialidad del proveedor (p. ej. lácteos, carnes, bebidas). |

---

## Ingredientes

| Atributo | Definición |
|---|---|
| `id_ingrediente` PK | Identificador único autoincremental del ingrediente. |
| `nombre_ingrediente` | Nombre del ingrediente (p. ej. harina, tomate, aceite de oliva). |
| `unidad_medida` | Unidad en que se cuantifica el ingrediente (p. ej. kg, litros, piezas). |

---

## ProveedorIngrediente

Tabla pivote que modela la relación muchos a muchos entre proveedores e ingredientes, incluyendo el precio de compra por combinación.

| Atributo | Definición |
|---|---|
| `id_proveedor` PK · FK | Parte de la clave primaria compuesta; referencia al proveedor que suministra el ingrediente. |
| `id_ingrediente` PK · FK | Parte de la clave primaria compuesta; referencia al ingrediente suministrado. |
| `precio_compra` | Precio al que el restaurante adquiere ese ingrediente de ese proveedor específico. |

---

## DetallePedido

| Atributo | Definición |
|---|---|
| `id_detalle_pedido` PK | Identificador único autoincremental del renglón de detalle. |
| `id_pedido` FK | Referencia al pedido al que pertenece este renglón. |
| `id_platillo` FK | Referencia al platillo ordenado en este renglón. |
| `cantidad` | Número de porciones del platillo solicitadas en este renglón. |
| `precio_unitario` | Precio del platillo al momento de registrar el pedido (puede diferir del precio actual del catálogo). |
| `subtotal` | Resultado de multiplicar la cantidad por el precio unitario para este renglón. |

---

## Receta

| Atributo | Definición |
|---|---|
| `id_receta` PK | Identificador único autoincremental de la línea de receta. |
| `id_platillo` FK | Referencia al platillo al que pertenece esta línea de receta. |
| `id_ingrediente` FK | Referencia al ingrediente utilizado en la preparación del platillo. |
| `cantidad` | Cantidad del ingrediente requerida para preparar una porción del platillo. |
| `unidad_medida` | Unidad en que se expresa la cantidad del ingrediente dentro de la receta. |

---

## Inventario

| Atributo | Definición |
|---|---|
| `id_inventario` PK | Identificador único autoincremental del registro de inventario. |
| `id_ingrediente` FK | Referencia al ingrediente cuyo stock se está registrando. |
| `id_sucursal` FK | Referencia a la sucursal donde se encuentra almacenado el ingrediente. |
| `stock_actual` | Cantidad disponible del ingrediente en esa sucursal en el momento del último registro. |
