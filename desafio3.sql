SELECT user.user_name AS 'usuario', COUNT(history.user_id) AS 'qtde_musicas_ouvidas', ROUND((SUM(songs.song_duration)/60), 2) AS 'total_minutos'
FROM SpotifyClone.User AS user
INNER JOIN SpotifyClone.History AS history
ON user.user_id = history.user_id
INNER JOIN SpotifyClone.Songs AS songs
ON history.song_id = songs.song_id
GROUP BY user.user_name
ORDER BY user.user_name;