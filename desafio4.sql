SELECT user.user_name AS 'usuario', IF((MAX(YEAR(history.reproduction_date))) = 2021, 'Usuário ativo', 'Usuário inativo') AS 'condicao_usuario'
FROM SpotifyClone.User AS user
INNER JOIN SpotifyClone.History AS history
ON user.user_id = history.user_id
GROUP BY user.user_name;