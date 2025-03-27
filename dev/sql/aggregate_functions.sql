-- MIN() - returns the smallest value within the selected column
-- MAX() - returns the largest value within the selected column
-- COUNT() - returns the number of rows in a set
-- SUM() - returns the total sum of a numerical column
-- AVG() - returns the average value of a numerical column

SELECT MIN(final_price) AS min_price, MAX(final_price) AS max_price
FROM payment_history_17

SELECT COUNT(DISTINCT customer_id)
FROM payment_history_17

SELECT customer_id, SUM(final_price) AS [final_price]
FROM payment_history_17 
GROUP BY customer_id

SELECT AVG(final_price)
FROM payment_history_17

