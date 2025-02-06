SELECT l.name, COUNT(m.movie_id)
FROM languages l
LEFT JOIN movies m ON m.language_id = l.language_id
GROUP BY l.language_id, l.name;
