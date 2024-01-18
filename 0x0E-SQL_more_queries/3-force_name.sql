-- Connect to MySQL server
-- mysql -u your_mysql_username -p

-- Use the specified database
USE hbtn_0d_2;

-- Create the force_name table if it doesn't exist
CREATE TABLE IF NOT EXISTS force_name (
    id INT,
    name VARCHAR(256) NOT NULL
);

-- Optionally, you may add additional constraints or primary keys as needed.

-- Describe the created table
DESCRIBE force_name;
