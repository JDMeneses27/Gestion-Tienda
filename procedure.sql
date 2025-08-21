-- Active: 1755775934370@@127.0.0.1@5433@Tienda

-- Un procedimiento almacenado para registrar una venta.

-- - Implementación de validaciones haciendo uso de RAISE para:

-- - Validar que el cliente exista.

SELECT EXISTS (SELECT 1 FROM clientes WHERE id = p_cliente_id) INTO v_exists
IF NOT v_exists THEN
    RAISE EXCEPTION 'Cliente no encontrado', p_cliente_id
END IF;

-- - Verificar que el stock sea suficiente antes de procesar la venta.

-- - Si no hay stock suficiente, se hace un RAISE para notificar y cancelar la venta.