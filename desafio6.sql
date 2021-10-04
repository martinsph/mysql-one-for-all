CREATE VIEW faturamento_atual AS
SELECT 
    MIN(plano_valor) AS `faturamento_minimo`,
    MAX(plano_valor) AS `faturamento_maximo`,
    ROUND(AVG(plano_valor), 2) AS `faturamento_medio`,
    ROUND(SUM(plano_valor), 2) AS `faturamento_total`
FROM
    SpotifyClone.planos AS p
        INNER JOIN
    SpotifyClone.usuarios AS u ON p.plano_id = u.plano_id;
