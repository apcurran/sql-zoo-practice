-- 1.
SELECT yr, subject, winner
FROM nobel
WHERE yr = 1950;

-- 2.
SELECT winner
FROM nobel
WHERE yr = 1962 AND subject = 'Literature';

-- 3.
SELECT yr, subject
FROM nobel
WHERE winner = 'Albert Einstein';

-- 4.
SELECT winner
FROM nobel
WHERE subject = 'Peace' AND yr >= 2000;

-- 5.
SELECT *
FROM nobel
WHERE subject = 'Literature' AND yr BETWEEN 1980 AND 1989;