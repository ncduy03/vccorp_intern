-- (INNER) JOIN: Returns records that have matching values in both tables
-- LEFT (OUTER) JOIN: Returns all records from the left table, and the matched records from the right table
-- RIGHT (OUTER) JOIN: Returns all records from the right table, and the matched records from the left table
-- FULL (OUTER) JOIN: Returns all records when there is a match in either left or right table

SELECT * FROM payment_history_17 AS his_17
UNION ALL 
SELECT * FROM payment_history_18 AS his_18

SELECT *
FROM payment_history_17 as his
JOIN table_message as msg
    ON his.message_id = msg.message_id

SELECT *
FROM payment_history_17 as his
LEFT JOIN table_message as msg
    ON his.message_id = msg.message_id

SELECT *
FROM payment_history_17 as his
FULL OUTER JOIN table_message as msg
    ON his.message_id = msg.message_id