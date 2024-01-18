-- Connect to MySQL server
-- mysql -u your_mysql_username -p

-- Create the database if it doesn't exist
CREATE DATABASE IF NOT EXISTS hbtn_0d_usa;

-- Use the specified database
USE hbtn_0d_usa;

-- Create the states table if it doesn't exist
CREATE TABLE IF NOT EXISTS states (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(256) NOT NULL
);

-- Optionally, you may add additional constraints or primary keys as needed.

-- Describe the created table
DESCRIBE states;
