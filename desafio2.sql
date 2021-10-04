CREATE VIEW estatisticas_musicais AS
    SELECT 
        COUNT(c.cancao_id) AS `cancoes`,
        COUNT(ar.artista_id) AS `artistas`,
        COUNT(al.album_id) AS `albuns`
    FROM
        SpotifyClone.cancoes AS c
            INNER JOIN
        SpotifyClone.albuns AS al ON c.album_id = al.album_id
            INNER JOIN
        SpotifyClone.artistas AS ar ON al.artista_id = ar.artista_id;
        
