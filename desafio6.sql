SELECT
	MIN(value_table.plan_value) AS 'faturamento_minimo',
  MAX(value_table.plan_value) AS 'faturamento_maximo',
  ROUND(AVG(value_table.plan_value), 2) AS 'faturamento_medio',
  ROUND(SUM(value_table.plan_value), 2) AS 'faturamento_total'
  FROM (
	SELECT plan.plan_value
	FROM SpotifyClone.Plan AS plan
	INNER JOIN SpotifyClone.User AS user
  ON plan.plan_id = user.plan_id
) AS value_table;