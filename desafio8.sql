DELIMITER $$
CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON usuarios
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.historico_cancoes 
WHERE
    usuario_id = OLD.usuario_id;
DELETE FROM SpotifyClone.seguidos 
WHERE
    usuario_id = OLD.usuario_id;
END
$$ DELIMITER ;
