USE SpotifyClone;
CREATE VIEW historico_reproducao_usuarios AS
    SELECT 
        usuario_nome AS `usuario`, cancao_nome AS `nome`
    FROM
        usuarios AS u
            INNER JOIN
        historico_cancoes AS hc ON u.usuario_id = hc.usuario_id
            INNER JOIN
        cancoes AS c ON hc.cancao_id = c.cancao_id
    ORDER BY `usuario` , `nome`;

