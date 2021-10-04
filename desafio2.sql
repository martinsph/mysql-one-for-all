CREATE VIEW estatisticas_musicais AS
    SELECT 
        COUNT(*) AS `cancoes`,
        (SELECT COUNT(*) AS `artistas` FROM SpotifyClone.artistas),
        (SELECT COUNT(*) AS `albuns` FROM SpotifyClone.albuns)
    FROM
        SpotifyClone.cancoes;
