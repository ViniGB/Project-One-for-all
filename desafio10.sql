SELECT songs.song_name AS 'nome', COUNT(reproduction_qnty.reproducoes) AS 'reproducoes'
FROM SpotifyClone.Songs AS songs
INNER JOIN (
	SELECT history.song_id AS 'reproducoes'
	FROM SpotifyClone.History AS history
	INNER JOIN SpotifyClone.User AS user
	ON history.user_id = user.user_id
	INNER JOIN SpotifyClone.Plan AS plan
	ON user.plan_id = plan.plan_id
	WHERE plan_name = 'gratuito' OR plan_name = 'pessoal'
) AS reproduction_qnty
ON songs.song_id = reproduction_qnty.reproducoes
GROUP BY songs.song_name;