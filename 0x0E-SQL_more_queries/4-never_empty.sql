-- Connect to MySQL server
-- mysql -u your_mysql_username -p

-- Use the specified database
USE hbtn_0d_2;

-- Create the id_not_null table if it doesn't exist
CREATE TABLE IF NOT EXISTS id_not_null (
    id INT DEFAULT 1,
    name VARCHAR(256)
);

-- Optionally, you may add additional constraints or primary keys as needed.

-- Describe the created table
DESCRIBE id_not_null;
