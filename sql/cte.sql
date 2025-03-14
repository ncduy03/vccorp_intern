WITH table_union AS ( 
    SELECT customer_id, order_id, product_id, transaction_date
    FROM payment_history_17
    WHERE MONTH(transaction_date) = 1   
    UNION 
    SELECT customer_id, order_id, product_id, transaction_date
    FROM payment_history_18
    WHERE MONTH(transaction_date) = 5  
)
, table_join AS (  
    SELECT *   
    FROM table_union
    LEFT JOIN product AS PRO
        ON table_union.product_id = pro.product_number
    WHERE product_group = 'payment'
)
SELECT *
FROM table_join
WHERE online_offline = 'online'