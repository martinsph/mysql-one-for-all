USE SpotifyClone;
CREATE VIEW estatisticas_musicais AS
    SELECT 
        COUNT(cancao_id) AS `cancoes`,
        (SELECT COUNT(artista_id) AS `artistas` FROM artistas),
        (SELECT COUNT(album_id) AS `albuns` FROM albuns)
    FROM
        cancoes AS c;
