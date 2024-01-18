-- Connect to MySQL server
-- mysql -hlocalhost -uroot -p hbtn_0d_tvshows

-- Use the specified database
USE hbtn_0d_tvshows;

-- List all shows without a linked genre
SELECT tv_shows.title, tv_show_genres.genre_id
FROM tv_shows
LEFT JOIN tv_show_genres ON tv_shows.id = tv_show_genres.show_id
WHERE tv_show_genres.show_id IS NULL OR tv_show_genres.genre_id IS NULL
ORDER BY tv_shows.title ASC, COALESCE(tv_show_genres.genre_id, 999999) ASC;
