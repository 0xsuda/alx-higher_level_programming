-- Connect to MySQL server
-- mysql -u your_mysql_username -p

-- Use the specified database
USE hbtn_0d_usa;

-- Find the state_id for California
SET @california_state_id = (SELECT id FROM states WHERE name = 'California' LIMIT 1);

-- List all cities of California
SELECT cities.id, cities.name
FROM cities
WHERE cities.state_id = @california_state_id
ORDER BY cities.id ASC;
