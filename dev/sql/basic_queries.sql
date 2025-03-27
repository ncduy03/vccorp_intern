SELECT * FROM payment_history_17

SELECT order_id, customer_id FROM payment_history_17

SELECT DISTINCT customer_id FROM payment_history_17

SELECT COUNT(DISTINCT customer_id) FROM payment_history_17

SELECT * FROM payment_history_17
WHERE message_id = 1

SELECT order_id FROM payment_history_17
ORDER BY order_id

SELECT * FROM product
WHERE sub_category LIKE 'R%' OR sub_category LIKE 'M%'

SELECT * FROM payment_history_17
WHERE promotion_id IS NOT NULL

SELECT TOP 5 * FROM payment_history_17
