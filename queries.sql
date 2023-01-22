-- Triggers For user:

CREATE TRIGGER `UpdateLog` AFTER UPDATE ON `users` FOR EACH ROW INSERT INTO userlog VALUES(null,NEW.id,'UPDATED',NOW());
CREATE TRIGGER `InsertLog` AFTER UPDATE ON `users` FOR EACH ROW INSERT INTO userlog VALUES(null,NEW.id,'INSERTED',NOW());
CREATE TRIGGER `DeleteLog` BEFORE DELETE ON `users` FOR EACH ROW INSERT INTO userlog VALUES(null,OLD.id,'DELETED',NOW());


-- For Stored Procedures:

-- 1. Albums:  IN
SET @p0='2'; CALL `getAlbums`(@p0);

-- 2.
CREATE PROCEDURE `getAlbumgenre`(IN `albumid` INT, OUT `genre` INT) NOT DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER SELECT genre INTO genre FROM albums WHERE id=albumid;

CREATE PROCEDURE `getAlbums`(IN `albumid` INT) NOT DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER SELECT id,title,artist,genre  FROM albums WHERE id=albumid;



-- 3. Artist
CREATE PROCEDURE `getArtist`(IN `artistid` INT) NOT DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER SELECT id,name FROM artists WHERE id=artistid;


-- 4.genres
CREATE PROCEDURE `getGenre`(IN `genreid` INT) NOT DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER SELECT * FROM genres where id=genreid;

-- 5.songs
CREATE PROCEDURE `getSongArtist`(IN `songid` INT, OUT `artistid` INT) NOT DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER SELECT id,title,artist INTO artistid FROM songs WHERE id=songid;

CREATE PROCEDURE `getSongGenre`(IN `songid` INT, OUT `genreid` INT) NOT DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER SELECT genre INTO genreid FROM songs WHERE id=songid;

CREATE PROCEDURE `getSongAlbum`(IN `songid` INT, OUT `albumid` INT) NOT DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER SELECT album INTO albumid FROM songs WHERE id=songid;