/* create procedure */
CREATE PROCEDURE AddNewAlbum(
  NameOfArtist varchar(50),
  AlbumName varchar(50)
)
BEGIN
  DECLARE artist_id int;
  
  SELECT ArtistID into artist_id 
  FROM Artists
  WHERE ArtistName = NameOfArtist;
  
  INSERT into Albums (ArtistID, Title) VALUES (artist_id, AlbumName);
END;
//


/* sample CALL Statement */
CALL AddNewAlbum('Girl Talk', 'Night Ripper'); //
