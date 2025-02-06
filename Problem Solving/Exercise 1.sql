USE moviesdb;
select * from movies;
select * from movies ORDER BY (release_year) DESC;
select * from movies WHERE release_year= "2022";
select * from movies WHERE release_year > "2020";
select * from movies WHERE release_year > "2020" AND imdb_rating> "8";
select * from movies WHERE studio in ("Marvel studios","Hombale films");
select title, release_year from movies where title like "%Thor%" order by (release_year) ASC;
select * from movies where studio not like "%Marvel%";