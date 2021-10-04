CREATE VIEW perfil_artistas AS
SELECT 
    a.artista_nome AS `artista`,
    al.album_nome AS `album`,
    COUNT(s.artista_id) AS `seguidores`
FROM
    SpotifyClone.artistas AS a
        INNER JOIN
    SpotifyClone.albuns AS al ON a.artista_id = al.artista_id
        INNER JOIN
    SpotifyClone.seguidos AS s ON a.artista_id = s.artista_id
GROUP BY `artista` , `album`
ORDER BY `seguidores` DESC , `artista` , `album`;
