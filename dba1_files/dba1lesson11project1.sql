/* Returns only 1 Row */
select Artists.ArtistName as 'Artist', Albums.Title as 'Album Title' FROM Artists JOIN Albums on (Albums.ArtistID = Artists.ArtistID) WHERE MATCH(Albums.Title, Albums.AlbumDescription) AGAINST ('Walk');

/* Returns Multiple Rows */
select Artists.ArtistName as 'Artist', Albums.Title as 'Album Title' FROM Artists JOIN Albums on (Albums.ArtistID = Artists.ArtistID) WHERE MATCH(Albums.Title, Albums.AlbumDescription) AGAINST ('Ghostly');


/* Returns zero rows */
select Artists.ArtistName as 'Artist', Albums.Title as 'Album Title' FROM Artists JOIN Albums on (Albums.ArtistID = Artists.ArtistID) WHERE MATCH(Albums.Title, Albums.AlbumDescription) AGAINST ('Pittsburgh');
