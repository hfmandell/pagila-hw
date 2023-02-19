/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */

SELECT first_name, last_name, sum(amount) AS "sum"
FROM staff, payment
WHERE staff.staff_id = payment.staff_id 
AND payment_date between '2020-01-01 00:00:00' and '2020-01-31 23:59:00' 
GROUP BY first_name, last_name;

