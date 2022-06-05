SELECT main_table.cancao, main_table.reproducoes FROM (
	SELECT songs.song_name AS 'cancao', COUNT(history.song_id) AS 'reproducoes'
	FROM SpotifyClone.Songs AS songs
	INNER JOIN SpotifyClone.History AS history
	ON songs.song_id = history.song_id
	GROUP BY songs.song_name
) AS main_table
ORDER BY main_table.reproducoes DESC, main_table.cancao ASC
LIMIT 2;