--Case 1
SELECT m.movieID,
       movieTitle,
	   movieDescription,
	   (SELECT CAST(COUNT(*)AS VARCHAR) + ' review(s)'
	   FROM Review v WHERE v.Review_Recommendation_Status LIKE 'Not Recommended') AS [Review Movie]
FROM Movie m JOIN Review v ON m.movieID = v.movieID JOIN [User] x ON v.userID = x.userID
WHERE v.recommendationStatus LIKE 'Not Recommended' OR x.userCity LIKE 'Bandung'
GROUP BY m.movieID, m.movieTitle, m.movieDescription

--Case 2
SELECT g.genreID,
       g.genreName,
	   (SELECT CAST(COUNT(*) AS VARCHAR)
	    FROM Movie) AS [Total Movie]	 
FROM Genre g JOIN Movie m ON g.genreID = m.genreID
WHERE m.DirectorID BETWEEN 'DIR004' AND 'DIR008' AND MONTH(m.releaseDate) = '02'
GROUP BY g.genreID, g.genreName

--Case 3
SELECT d.directorID, 
       d.directorName, 
	   REPLACE(d.directorPhone, '0%', '+62') AS [Local Phone], 
	   SUM(CAST(td.quantity AS INTEGER)) AS [Movie Sold], 
	   (SELECT COUNT(*) FROM SalesTransaction) AS [Total Transaction]
FROM Director d JOIN Movie m ON d.directorID = m.directorID JOIN TransactionDetail td ON td.movieID = m.movieID
WHERE d.DirectorID BETWEEN 'DIR003' AND 'DIR009' AND quantity > '20'
GROUP BY d.directorID, d.directorName, d.directorPhone

--Case 4
SELECT	u.userNickName,
	UPPER(u.userCity) AS [User City],
	(SELECT SUM(CAST(td.quantity AS INTEGER)) FROM TransactionDetail td) AS [Total Movie Purchased],
	(SELECT COUNT(td.movieID) FROM TransactionDetail td) AS [Movie Owned]
FROM [User] u JOIN SalesTransaction st ON st.userID = u.userID
WHERE (u.userID = 'USR002' OR u.userID = 'USR003') AND MONTH(st.transactionDate) %2 = 1
GROUP BY u.userNickName,u.userCity

--Case 5
SELECT RIGHT(u.userID,3) AS [Numeric User Id],
       UPPER(u.userNickName) AS [User Nickname],
	   userCity
FROM [User] u, 
	 SalesTransaction st, 
	 TransactionDetail td, 
		(SELECT Average_Movie = AVG(CONVERT(int,quantity)) FROM TransactionDetail ) AS avg_movie
WHERE u.userID = st.userID AND st.SalesTransactionID = td.SalesTransactionID AND 
	TD.quantity > avg_movie.Average_Movie AND u.userNickName LIKE '%1%'
GROUP BY u.userID,u.userNickName,u.userCity

--Case 6
SELECT m.movieID,
       movieTitle,
	   publisherName,
	   SUBSTRING(p.publisherEmail, 1, CHARINDEX('@',p.publisherEmail,1)-1) AS 'Publisher Email'
FROM Movie m, publisher p,TransactionDetail td,salesTransaction st,
     (SELECT Max_Q = MAX(CONVERT(int,quantity))
	  FROM TransactionDetail) AS Max_Sold
WHERE m.publisherID = p.publisherID AND m.movieID = td.movieID AND td.SalesTransactionID = st.SalesTransactionID 
	AND DAY(st.transactionDate) = '22' AND td.quantity > Max_Sold.Max_Q

--Case 7
SELECT d.directorID,
       directorName,
	   LOWER(movieTitle) AS [Movie Title],
	   (SELECT CAST(Count (*)AS varchar) + ' genre(s)' FROM Genre ) AS [Total Genre]
			FROM Director d, Movie m,
				(SELECT Max_Release = MAX(releaseDate)
				FROM Movie
	  WHERE MONTH(m.releaseDate) = '09') AS Max_Date
WHERE d.directorID = m.directorID AND m.releaseDate > Max_Date.Max_Release

--Case 8
SELECT u.userNickName,
       SUBSTRING(u.userFullName,1,CHARINDEX(' ',u.userFullName,1)) AS [User First Name]
       (SELECT  SUM(CAST(quantity AS int))
	    FROM TransactionDetail) AS [Total Quantity]

FROM [User] u,salesTransaction st,
    (SELECT Max_Quantity = MAX(CONVERT(INT,quantity))
	 FROM TransactionDetail) AS  Max_Total
WHERE u.userID = st.userID
  AND  TransactionDetail.Quantity >= Max_Total.Max_Quantity
  AND DAY(st.User_Transaction_Date) = '20'
GROUP BY u.userNickName

--Case 9
BEGIN TRAN
GO
CREATE VIEW [CustomUserViewer]
AS
SELECT u.userID,
       u.userNickName,
	   (SELECT MAX(CONVERT(INT,quantity))
	    FROM TransactionDetail) AS [Maximum Quantity],
       (SELECT MIN(CONVERT(INT,quantity))
	    FROM TransactionDetail) AS [Minimum Quantity]
FROM [User] u,salesTransaction st
WHERE u.userID = st.userID
  AND DAY(st.transaction_Date) = '19'
  AND u.userNickName LIKE '%h%'
GO

--Case 10
BEGIN TRAN
GO
CREATE VIEW [CustomPublisherViewer]
AS
SELECT p.publisherName,
       m.movieTitle,

FROM Publisher p, Movie m
WHERE p.publisherID = m.publisherID
