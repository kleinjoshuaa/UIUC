/* I use 1 here when a song that is sold hits one of the case statements. At this point then the SUM() should work correctly */

SELECT A.Title as Album,
SUM(CASE WHEN (Quarter(P.DateOfPurchase)=1 AND Year(P.DateOfPurchase)=2011) THEN 1 ELSE 0 END) AS '2011-Q1',
SUM(CASE WHEN (Quarter(P.DateOfPurchase)=2 AND Year(P.DateOfPurchase)=2011) THEN 1 ELSE 0 END) AS '2011-Q2',
SUM(CASE WHEN (Quarter(P.DateOfPurchase)=3 AND Year(P.DateOfPurchase)=2011) THEN 1 ELSE 0 END) AS '2011-Q3',
SUM(CASE WHEN (Quarter(P.DateOfPurchase)=4 AND Year(P.DateOfPurchase)=2011) THEN 1 ELSE 0 END) AS '2011-Q4',
SUM(CASE WHEN (Quarter(P.DateOfPurchase)=1 AND Year(P.DateOfPurchase)=2012) THEN 1 ELSE 0 END) AS '2012-Q1',
SUM(CASE WHEN (Quarter(P.DateOfPurchase)=2 AND Year(P.DateOfPurchase)=2012) THEN 1 ELSE 0 END) AS '2012-Q2',
SUM(CASE WHEN (Quarter(P.DateOfPurchase)=3 AND Year(P.DateOfPurchase)=2012) THEN 1 ELSE 0 END) AS '2012-Q3',
SUM(CASE WHEN (Quarter(P.DateOfPurchase)=4 AND Year(P.DateOfPurchase)=2012) THEN 1 ELSE 0 END) AS '2012-Q4'
FROM Purchases as P JOIN Songs as S on (S.SongID = P.SongID) JOIN Albums as A on (A.AlbumID = S.AlbumID) 
GROUP BY A.Title;
