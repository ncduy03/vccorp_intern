-- RANK(), DENSE_RANK(), ROW_NUMBER()
SELECT customer_id, order_id, transaction_date
    , ROW_NUMBER() OVER (PARTITION BY customer_id ORDER BY transaction_date ASC) AS row_nb 
    -- , RANK() OVER (PARTITION BY customer_id ORDER BY transaction_date ASC) AS rank
    -- , DENSE_RANK() OVER (PARTITION BY customer_id ORDER BY transaction_date ASC) AS dense_rank
FROM payment_history_17
ORDER BY customer_id


-- COUNT(), MIN(), MAX(), SUM(), AVG()
WITH table_month AS (
    SELECT customer_id, order_id, final_price, transaction_date
        , MONTH(transaction_date) AS [month]
    FROM payment_history_17
)
SELECT DISTINCT [month]
    , COUNT(order_id) OVER (PARTITION BY [month]) AS number_orders_month
    , SUM(CAST(final_price AS BIGINT)) OVER (PARTITION BY [month]) AS total_money_month
FROM table_month