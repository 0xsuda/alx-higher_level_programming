-- Connect to MySQL server
-- mysql -hlocalhost -uroot -p your_database_name

-- Use the specified database
USE hbtn_0d_tvshows;

-- Get the genres linked to Dexter
SELECT tv_genres.name
FROM tv_shows
JOIN tv_show_genres ON tv_shows.id = tv_show_genres.show_id
JOIN tv_genres ON tv_show_genres.genre_id = tv_genres.id
WHERE tv_shows.title = 'Dexter';

-- List all genres not linked to Dexter
SELECT DISTINCT tv_genres.name
FROM tv_genres
WHERE tv_genres.id NOT IN (
    SELECT tv_genres.id
    FROM tv_shows
    JOIN tv_show_genres ON tv_shows.id = tv_show_genres.show_id
    JOIN tv_genres ON tv_show_genres.genre_id = tv_genres.id
    WHERE tv_shows.title = 'Dexter'
)
ORDER BY tv_genres.name ASC;

