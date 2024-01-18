-- Connect to MySQL server
-- mysql -hlocalhost -uroot -p your_database_name

-- Use the specified database
USE hbtn_0d_tvshows;

-- Create the genres table if it doesn't exist
CREATE TABLE IF NOT EXISTS genres (
    id INT AUTO_INCREMENT PRIMARY KEY,
    genre VARCHAR(255) NOT NULL
);

-- Insert sample data into the genres table
INSERT INTO genres (genre) VALUES
    ('Drama'),
    ('Comedy'),
    ('Action');

-- List all genres with the number of shows linked to each
SELECT
    genre AS genre,
    COUNT(tv_show_genres.show_id) AS number_of_shows
FROM
    tv_show_genres
JOIN
    genres ON tv_show_genres.genre_id = genres.id
GROUP BY
    genre
ORDER BY
    number_of_shows DESC;

