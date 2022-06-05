SELECT artist.artist_name AS 'artista', albums.album_name AS 'album', new.seguidores
FROM SpotifyClone.Artist AS artist
INNER JOIN SpotifyClone.Albums AS albums
ON artist.artist_id = albums.artist_id
INNER JOIN (
	SELECT artist.artist_name AS 'artista', COUNT(follow.artist_id) AS 'seguidores'
	FROM SpotifyClone.Artist AS artist
	INNER JOIN SpotifyClone.Follow AS follow
	ON artist.artist_id = follow.artist_id
	GROUP BY artist.artist_name
) AS new
ON artist.artist_name = new.artista
ORDER BY new.seguidores DESC, artista ASC, album ASC;