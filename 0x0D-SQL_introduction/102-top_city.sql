-- Display the top 3 cities with the highest temperatures during July and August
SELECT city, MAX(temperature) AS max_temperature
FROM temperatures
WHERE MONTH(date) IN (7, 8)
GROUP BY city
ORDER BY max_temperature DESC
LIMIT 3;
