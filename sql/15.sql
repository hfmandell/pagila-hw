/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */

SELECT category.name, count(*) as "sum"
FROM category, film_category, film, language
WHERE category.category_id = film_category.category_id AND
      film_category.film_id = film.film_id AND
      film.language_id = language.language_id AND
      language.name = 'English'
GROUP BY category.name;
