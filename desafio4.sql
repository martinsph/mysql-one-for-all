CREATE VIEW top_3_artistas AS
    SELECT 
        a.artista_nome AS `artista`,
        COUNT(s.artista_id) AS `seguidores`
    FROM
        SpotifyClone.artistas AS a
            INNER JOIN
        SpotifyClone.seguidos AS s ON a.artista_id = s.artista_id
    GROUP BY a.artista_nome
    ORDER BY `seguidores` DESC , `artista`
	  LIMIT 3;
