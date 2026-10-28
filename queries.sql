-- CONSULTA 1: Historial de pedidos y modificaciones

SELECT
   p.id_pedido,
    u.nombre AS Cliente,
    pl.nombre AS Plato,
    dp.cantidad,
    json_extract(dp.modificaciones, '$.opciones[0]') AS Adicion_Solicitada,
    json_extract(p.opciones, '$.observacion') AS Instruccion_Especial
FROM Pedido p
JOIN Usuario u ON p.id_usuario = u.id_usuario
JOIN Detalle_Pedido dp ON p.id_pedido = dp.id_pedido
JOIN Plato pl ON dp.id_plato = pl.id_plato;
 

-- CONSULTA 2: Pedidos y datos del restaurante

SELECT
    p.id_pedido,
    u.nombre AS Cliente,
    r.nombre AS Restaurante,
    p.estado,
    p.total
FROM Pedido p
JOIN Usuario u ON p.id_usuario = u.id_usuario
JOIN Restaurante r ON p.id_restaurante = r.id_restaurante;


-- CONSULTA 3: Platos disponibles por restaurante

SELECT
    pl.id_plato,
    pl.nombre AS Plato,
    r.nombre AS Restaurante,
    pl.precio
FROM Plato pl
JOIN Restaurante r ON pl.id_restaurante = r.id_restaurante
WHERE pl.disponible = 1;