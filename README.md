Daniel Alejandro Torres, Valerie Taliana Suarique

# Clasificación de las entidades

En nuestro proyecto de AppDeliveryDB, las entidades se dividen en tres dominios según la función que cumplen dentro de la aplicación.

# 1. Dominio de actores
Son las entidades que representan a las personas que participan en el servicio.

- Usuario: persona que realiza los pedidos.
- Repartidor: persona encargada de entregar los pedidos.

# 2. Dominio de catálogo
Son las entidades que contienen la información de los restaurantes y los platos disponibles.

- Restaurante: contiene la información de los restaurantes registrados.
- Plato: representa los platos que ofrecen los restaurantes, junto con sus precios y disponibilidad.

# 3. Dominio transaccional
Son las entidades que registran las compras y sus detalles.

- Pedido: almacena la información de cada pedido realizado, como su fecha, estado y valor total.
- Detalle_Pedido: registra los platos incluidos en cada pedido, su cantidad, precio y modificaciones solicitadas.

# Conclusión
Esta clasificación nos permite organizar mejor la base de datos, identificar la función de cada entidad y comprender cómo se relacionan dentro de nuestra aplicación.