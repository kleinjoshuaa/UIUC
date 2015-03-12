/* Create View BigAlbums */

CREATE VIEW BigAlbums AS SELECT Artists.ArtistName, Albums.Title, Albums.YearReleased, Albums.NumberOfSongs FROM Artists JOIN Albums on (Artists.ArtistID = Albums.ArtistID) WHERE Albums.NumberOfSongs = (select MAX(Albums.NumberOfSongs) FROM Albums);


/* Drop View BigAlbums */

DROP VIEW If Exists BigAlbums;


/* Create View LongAlbums */

CREATE VIEW LongAlbums AS SELECT Artists.ArtistName, Albums.Title, Albums.YearReleased, Albums.NumberOfSongs FROM Artists JOIN Albums on (Artists.ArtistID = Albums.ArtistID) WHERE Albums.NumberOfSongs = (select MAX(Albums.NumberOfSongs) FROM Albums);
