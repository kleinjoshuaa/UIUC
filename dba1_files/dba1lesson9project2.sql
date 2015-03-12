/* create procedure */
CREATE PROCEDURE AddAlbum(
  NameOfArtist varchar(50),
  AlbumName varchar(50)
)
BEGIN
  DECLARE artist_id int;
  DECLARE artist_count int;
  
  select COUNT(*) into artist_count FROM Artists WHERE ArtistName = NameOfArtist;
  IF artist_count = 0 THEN
	INSERT  INTO Artists (ArtistName) VALUES (NameOfArtist);
	SELECT LAST_INSERT_ID() into artist_id;
  ELSEIF artist_count = 1 THEN
	SELECT ArtistID into artist_id 
	FROM Artists
	WHERE ArtistName = NameOfArtist;	
  END IF;
  INSERT into Albums (ArtistID, Title) VALUES (artist_id, AlbumName);
END;
//


/* Sample CALL Statement */
CALL AddAlbum('Sufjan Stevens', 'BQE'); //
