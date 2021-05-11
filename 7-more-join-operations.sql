-- 1.
SELECT
    id,
    title
FROM movie
WHERE yr = 1962;

-- 2.
SELECT yr
FROM movie
WHERE title = 'Citizen Kane';

-- 3.
SELECT
    id,
    title,
    yr
FROM movie
WHERE title LIKE '%Star Trek%'
ORDER BY yr;

-- 4.
SELECT actor.id
FROM actor
WHERE name = 'Glenn Close';

-- 5.
SELECT movie.id
FROM movie
WHERE title = 'Casablanca';

-- 6.
SELECT name
FROM actor
INNER JOIN casting ON actor.id = casting.actorid
WHERE movieid = (SELECT id FROM movie WHERE title = 'Casablanca');

-- 7.
SELECT name
FROM actor
INNER JOIN casting ON actor.id = casting.actorid
WHERE movieid = (SELECT id FROM movie WHERE title = 'Alien');

-- 8.
SELECT movie.title
FROM movie
INNER JOIN casting ON movie.id = casting.movieid
WHERE casting.actorid = (SELECT id from actor WHERE name = 'Harrison Ford');

-- 9.
-- WHERE casting.ord != 1 -- Movies where Harrison Ford appeared, but not in a leading role.
SELECT movie.title
FROM movie
INNER JOIN casting ON movie.id = casting.movieid
WHERE casting.actorid = (SELECT id from actor WHERE name = 'Harrison Ford') AND casting.ord != 1;

-- 10.
SELECT
    movie.title,
    actor.name
FROM movie
INNER JOIN casting ON movie.id = casting.movieid
INNER JOIN actor ON casting.actorid = actor.id
WHERE movie.yr = 1962 AND casting.ord = 1;