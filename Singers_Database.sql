
--Create database of famous singers
CREATE TABLE famous_singers (
    id INTEGER PRIMARY KEY, 
    name TEXT, 
    age INTEGER);
    
CREATE TABLE singers_birthplaces (
    id INTEGER PRIMARY KEY, 
    name TEXT);
    
CREATE TABLE singers_spotify_performance (
    id INTEGER PRIMARY KEY,
    monthly_listeners INTEGER,
    global_rank INTEGER);
    
INSERT INTO famous_singers VALUES 
    (1, "Taylor Swift", 32);
INSERT INTO famous_singers VALUES
    (2, "Lady Gaga", 36); 
INSERT INTO famous_singers VALUES
    (3, "Prince", NULL);
INSERT INTO famous_singers VALUES
    (4, "Harry Styles", 28);
INSERT INTO famous_singers VALUES
    (5, "David Bowie", NULL);
INSERT INTO famous_singers VALUES
    (6, "Freddie Mercury", NULL); 
INSERT INTO famous_singers VALUES
    (7, "Lizzo", 34);
    
INSERT INTO singers_birthplaces VALUES
    (1, "Reading, PA");
INSERT INTO singers_birthplaces VALUES 
    (2, "New York, NY");
INSERT INTO singers_birthplaces VALUES 
    (3, "Minneapolis, MN");
INSERT INTO singers_birthplaces VALUES
    (4, "Redditch, United Kingdom");
INSERT INTO singers_birthplaces VALUES
    (5, "London, United Kingdom");
INSERT INTO singers_birthplaces VALUES
    (6, "London, United Kingdom");
INSERT INTO singers_birthplaces VALUES
    (7, "Detroit, MI");
    
INSERT INTO singers_spotify_performance VALUES
    (1, 56500000, 9);
INSERT INTO singers_spotify_performance VALUES
    (2, 43700000, 34);
INSERT INTO singers_spotify_performance VALUES
    (3, 9650000, 1000);
INSERT INTO singers_spotify_performance VALUES
    (4, 73700000, 4);
INSERT INTO singers_spotify_performance VALUES
    (5, 16200000, 277);
INSERT INTO singers_spotify_performance VALUES
    (6, 39300000, 41);
INSERT INTO singers_spotify_performance VALUES
    (7, 33700000, 61);
    
--Display data from all tables, sorted by Spotify global rank
SELECT singers_spotify_performance.global_rank AS spotify_rank, famous_singers.name, famous_singers.age, singers_birthplaces.name AS birthplace, singers_spotify_performance.monthly_listeners AS spotify_monthly_listeners FROM famous_singers
    JOIN singers_birthplaces
    ON singers_birthplaces.id = famous_singers.id
    JOIN singers_spotify_performance
    ON singers_spotify_performance.id = famous_singers.id
    ORDER BY spotify_rank