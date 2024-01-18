-- Connect to MySQL server
-- mysql -hlocalhost -uroot -p your_database_name

-- Use the specified database
USE hbtn_0d_tvshows;

-- List all shows and their linked genres
SELECT tv_shows.title, GROUP_CONCAT(tv_genres.name ORDER BY tv_genres.name ASC) AS genre_names
FROM tv_shows
LEFT JOIN tv_show_genres ON tv_shows.id = tv_show_genres.show_id
LEFT JOIN tv_genres ON tv_show_genres.genre_id = tv_genres.id
GROUP BY tv_shows.title
ORDER BY tv_shows.title ASC, genre_names ASC;

