-- Connect to MySQL server
-- mysql -hlocalhost -uroot -p your_database_name

-- Use the specified database
USE hbtn_0d_tvshows_rate;

-- List all genres by their rating sum
SELECT tv_genres.name, SUM(ratings.rating) AS rating_sum
FROM tv_genres
LEFT JOIN tv_show_genres ON tv_genres.id = tv_show_genres.genre_id
LEFT JOIN tv_shows ON tv_show_genres.show_id = tv_shows.id
LEFT JOIN ratings ON tv_shows.id = ratings.show_id
GROUP BY tv_genres.name
ORDER BY rating_sum DESC;

