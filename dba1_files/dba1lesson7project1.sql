select Artists.ArtistName as Artist, Count(*) as Albums FROM Albums JOIN Artists on (Artists.ArtistID = Albums.ArtistID) GROUP BY Artists.ArtistID;
