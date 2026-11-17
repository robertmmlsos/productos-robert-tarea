# API REST - Tienda Perú

API REST desarrollada con Node.js, Express y MySQL para la gestión de productos, clientes y proveedores de la base de datos `tiendaperu`.

## Instalación

1. Clonar el repositorio:
   ```bash
   git clone <URL_DEL_REPOSITORIO>
   cd api-productos
   ```

2. Reconstruir la carpeta `node_modules`:
   ```bash
   npm install
   ```

3. Crear manualmente el archivo `.env` en la raíz del proyecto con las siguientes variables:
   ```env
   # Servidor
   PORT=3000

   # Base de datos MySQL
   DB_HOST=localhost
   DB_PORT=3306
   DB_USER=root
   DB_PASSWORD=
   DB_NAME=tiendaperu
   DB_CONNECTION_LIMIT=10
   ```

4. Ejecutar el script `database/db.sql` en MySQL para crear la base de datos `tiendaperu`, las tablas (`productos`, `clientes`, `proveedores`) y los registros de prueba.

5. Iniciar el servidor:
   ```bash
   npm run dev
   ```

## Rutas disponibles (Endpoints)

- **Productos:** `/api/productos` (`GET`, `GET /:id`, `POST`, `PUT /:id`)
- **Clientes:** `/api/clientes` (`GET`, `GET /:id`, `POST`, `PUT /:id`, `DELETE /:id`)
- **Proveedores:** `/api/proveedores` (`GET`, `GET /:id`, `POST`, `PUT /:id`, `DELETE /:id`)
