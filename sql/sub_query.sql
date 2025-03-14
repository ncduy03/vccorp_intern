SELECT table_union.*
FROM (
    SELECT * FROM payment_history_17
    UNION
    SELECT * FROM payment_history_18 
) AS table_union

SELECT table_union.*
FROM (
    SELECT * FROM payment_history_17
    UNION
    SELECT * FROM payment_history_18 
) AS table_union
WHERE customer_id NOT IN (SELECT DISTINCT customer_id FROM payment_history_17
                          WHERE MONTH(transaction_date) = 2)

SELECT customer_id, order_id, final_price
    , ( SELECT MAX(final_price)
        FROM payment_history_17
        WHERE MONTH(transaction_date) = 1) AS max_price_17
    , ( SELECT MAX(final_price)
        FROM payment_history_18
        WHERE MONTH(transaction_date) = 1) AS max_price_18
FROM payment_history_17
WHERE MONTH(transaction_date) = 1

