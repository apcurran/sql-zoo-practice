-- 1.
SELECT COUNT (stops.name)
FROM stops;

-- 2.
SELECT stops.id
FROM stops
WHERE name = 'Craiglockhart';

-- 3.
SELECT
    stops.id,
    stops.name
FROM stops
INNER JOIN route ON route.stop = stops.id
WHERE company = 'LRT' AND num = '4';