USE sakila;

-- EXERCISE 1

SELECT last_name, COUNT(*) FROM actor
GROUP BY last_name
HAVING COUNT(*) = 1;

-- EXERCISE 2

SELECT last_name, COUNT(*) FROM actor
GROUP BY last_name
HAVING COUNT(*) > 1;

-- EXERCISE 3

SELECT staff_id, COUNT(*) FROM rental
GROUP BY staff_id;

-- EXERCISE 4

SELECT release_year, COUNT(*) FROM film
GROUP BY release_year;

-- EXERCISE 5

SELECT rating, COUNT(*) FROM film
GROUP BY rating;

-- EXERCISE 6

SELECT rating, ROUND(AVG(length), 2) FROM film
GROUP BY rating;

-- EXERCISE 7

SELECT rating, ROUND(AVG(length), 2) FROM film
GROUP BY rating
HAVING ROUND(AVG(length), 2) > 120;

-- EXERCISE 8

SELECT title, length,

CASE
    WHEN length > 100 THEN 'long'
    WHEN length > 60 THEN 'medium'
    ELSE 'short'
END AS length_rank

FROM film

WHERE length IS NOT NULL AND length <> 0
ORDER BY length DESC;

-- BONUS

SELECT

CASE
    WHEN length > 100 THEN 'long'
    WHEN length > 60 THEN 'medium'
    ELSE 'short'
END AS length_rank,

ROUND(AVG(length), 2) AS length_avg

FROM film

GROUP BY length_rank;