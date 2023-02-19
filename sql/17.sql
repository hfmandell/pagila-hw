/*
 * Use a JOIN to order the countries by most profitable,
 * where the profit is the total amount that all customers from that country have payed.
 * Use tables payment, rental, customer, address, city, and country.
 * Order by country alphabetically.
 */

SELECT country, sum(payment.amount) AS profit
FROM payment, rental, customer, address, city, country
WHERE country.country_id = city.country_id AND
      city.city_id = address.city_id AND
      address.address_id = customer.address_id AND
      customer.customer_id = rental.customer_id AND
      rental.rental_id = payment.rental_id
GROUP BY country
ORDER BY country;
