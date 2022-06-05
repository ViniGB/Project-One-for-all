SELECT COUNT(history.reproduction_id) AS 'quantidade_musicas_no_historico'
FROM SpotifyClone.History AS history
INNER JOIN SpotifyClone.User AS user
ON history.user_id = user.user_id
WHERE user_name = 'Bill';