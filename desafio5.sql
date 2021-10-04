CREATE VIEW top_2_hits_do_momento AS
    SELECT 
        c.cancao_nome AS `cancao`,
        COUNT(hc.usuario_id) AS `reproducoes`
    FROM
        SpotifyClone.historico_cancoes AS hc
            INNER JOIN
        SpotifyClone.usuarios AS u ON hc.usuario_id = u.usuario_id
			INNER JOIN
		SpotifyClone.cancoes AS c ON hc.cancao_id = c.cancao_id
    GROUP BY hc.cancao_id
    ORDER BY `reproducoes` DESC , `cancao`
	  LIMIT 2;
