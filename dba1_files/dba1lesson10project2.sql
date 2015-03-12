

SELECT A.Title as Album,
SUM(CASE WHEN DATEDIFF(now(), (P.DateOfPurchase)) < 30 THEN 1 ELSE 0 END) AS 'D30',
SUM(CASE WHEN (DATEDIFF(now(), (P.DateOfPurchase)) > 30 AND DATEDIFF(now(), (P.DateOfPurchase)) < 60) THEN 1 ELSE 0 END) AS 'D60',
SUM(CASE WHEN (DATEDIFF(now(), (P.DateOfPurchase)) > 60 AND DATEDIFF(now(), (P.DateOfPurchase)) < 90) THEN 1 ELSE 0 END) AS 'D90'
FROM Purchases as P JOIN Songs as S on (S.SongID = P.SongID) JOIN Albums as A on (A.AlbumID = S.AlbumID) 
GROUP BY A.Title;