USE SpotifyClone;
CREATE VIEW top_3_artistas AS
    SELECT 
        a.artista_nome AS `artista`,
		COUNT(s.artista_id) AS `seguidores`
    FROM
		artistas AS a
			INNER JOIN
		seguidos AS s ON a.artista_id = s.artista_id
	GROUP BY a.artista_nome
	ORDER BY `seguidores` DESC, `artista`;

