SELECT COUNT(song_name) AS 'cancoes', 
(SELECT COUNT(artist_name) FROM SpotifyClone.Artist) AS 'artistas',
(SELECT COUNT(album_name)  FROM SpotifyClone.Albums) AS 'albuns'
FROM SpotifyClone.Songs;