CREATE VIEW cancoes_premium AS
    SELECT 
        c.cancao_nome AS `nome`,
        COUNT(hc.usuario_id) AS `reproducoes`
    FROM
        SpotifyClone.historico_cancoes AS hc
            INNER JOIN
        SpotifyClone.usuarios AS u ON hc.usuario_id = u.usuario_id
            INNER JOIN
        SpotifyClone.cancoes AS c ON hc.cancao_id = c.cancao_id
    WHERE
        plano_id IN (2 , 3)
    GROUP BY c.cancao_nome
    ORDER BY `nome`;
