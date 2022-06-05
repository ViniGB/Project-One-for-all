SELECT nome_musica, novo_nome FROM (
	SELECT songs.song_name AS 'nome_musica',
		CASE
			WHEN song_name = 'Dance With Her Own' THEN REPLACE (song_name, 'Her Own', 'Trybe')
			WHEN song_name = 'Let\'s Be Silly' THEN REPLACE (song_name, 'Silly', 'Nice')
			WHEN song_name = 'Magic Circus' THEN REPLACE (song_name, 'Circus', 'Pull Request')
			WHEN song_name = 'Troubles Of My Inner Fire' THEN REPLACE (song_name, 'Inner Fire', 'Project')
			WHEN song_name = 'Without My Streets' THEN REPLACE (song_name, 'Streets', 'Code Review')
			ELSE 'Null'
		END AS 'novo_nome'
	FROM SpotifyClone.Songs AS songs
) AS new_songs
WHERE new_songs.novo_nome != 'Null'
ORDER BY nome_musica;