CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        usuario_nome AS `usuario`, cancao_nome AS `nome`
    FROM
        SpotifyClone.usuarios AS u
            INNER JOIN
        SpotifyClone.historico_cancoes AS hc ON u.usuario_id = hc.usuario_id
            INNER JOIN
        SpotifyClone.cancoes AS c ON hc.cancao_id = c.cancao_id
    ORDER BY `usuario` , `nome`;
