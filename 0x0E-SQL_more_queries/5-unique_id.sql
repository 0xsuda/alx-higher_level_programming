-- Connect to MySQL server
-- mysql -u your_mysql_username -p

-- Use the specified database
USE hbtn_0d_2;

-- Create the unique_id table if it doesn't exist
CREATE TABLE IF NOT EXISTS unique_id (
    id INT DEFAULT 1 UNIQUE,
    name VARCHAR(256)
);

-- Optionally, you may add additional constraints or primary keys as needed.

-- Describe the created table
DESCRIBE unique_id;
