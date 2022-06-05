SELECT artist.artist_name AS 'artista', albums.album_name AS 'album'
FROM SpotifyClone.Artist AS artist
INNER JOIN SpotifyClone.Albums AS albums
ON artist.artist_id = albums.artist_id
WHERE artist_name = 'Walter Phoenix';