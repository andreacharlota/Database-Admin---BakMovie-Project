CREATE DATABASE BakMovie
USE BakMovie

CREATE TABLE [User](
	userID VARCHAR(255) PRIMARY KEY CHECK(userID LIKE 'USR[0-9][0-9][0-9]'),
	userNickname VARCHAR(255) CHECK (LEN (userNickname) >= 5) NOT NULL,
	userFullname VARCHAR(255),
	userEmail VARCHAR(255) CHECK (userEmail LIKE '%@%'),
	userCity VARCHAR(255),
	userDesciption VARCHAR(255),
)
SELECT * FROM [User]
CREATE TABLE Genre(
	GenreID VARCHAR(255) PRIMARY KEY CHECK(GenreID LIKE 'GEN[0-9][0-9][0-9]'),
	genreName VARCHAR(255)
)
SELECT * FROM Genre
CREATE TABLE Director(
	directorID VARCHAR(255) PRIMARY KEY CHECK(directorID LIKE 'DIR[0-9][0-9][0-9]'),
	directorName VARCHAR(255),
	directorEmail VARCHAR(255) CHECK (directorEmail LIKE '%@%'),
	directorCity VARCHAR(255),
	directorAddress VARCHAR(255),
	directorPhone NUMERIC(19,0)
)
SELECT * FROM Director
CREATE TABLE Publisher(
	publisherID VARCHAR(255) PRIMARY KEY CHECK(publisherID LIKE 'PUB[0-9][0-9][0-9]'),
	publisherName VARCHAR(255),
	publisherEmail VARCHAR(255),
	publisherCity VARCHAR(255),
	publisherAddress VARCHAR(255) CHECK (LEN (publisherAddress) >= 15) NOT NULL,
	publisherPhone NUMERIC(19,0)
)
SELECT * FROM Publisher
CREATE TABLE Movie(
	movieID VARCHAR(255) PRIMARY KEY CHECK(MovieID LIKE 'MOV[0-9][0-9][0-9]'),
	directorID VARCHAR(255) FOREIGN KEY REFERENCES Director(directorID),
	genreID VARCHAR(255) FOREIGN KEY REFERENCES Genre(genreID),
	publisherID VARCHAR(255) FOREIGN KEY REFERENCES Publisher(publisherID),
	movieTitle VARCHAR(255),
	movieDescription VARCHAR(255) CHECK (LEN (movieDescription) > 20) NOT NULL,
	movieReleaseDate INT CHECK (movieReleaseDate BETWEEN 2000 AND 2016),
	moviePrice VARCHAR(255)
)
SELECT * FROM Movie
CREATE TABLE Review(
	userID VARCHAR(255) FOREIGN KEY REFERENCES [User](userID),
	movieID VARCHAR(255) FOREIGN KEY REFERENCES Movie(movieID),
	recommendationStatus VARCHAR(255) CHECK (recommendationStatus IN ('Recommended', 'Not Recommended')),
	reviewContent VARCHAR(255) CHECK (LEN (reviewContent) > 20) NOT NULL,
	reviewDate DATE
)

CREATE TABLE SalesTransaction(
	salesTransactionID VARCHAR(255) PRIMARY KEY CHECK(salesTransactionID LIKE 'SAL[0-9][0-9][0-9]'),
	userID VARCHAR(255) FOREIGN KEY REFERENCES [User] (userID),
	transactionDate DATE
)

CREATE TABLE TransactionDetail(
	salesTransactionID VARCHAR(255) FOREIGN KEY REFERENCES SalesTransaction(salesTransactionID),
	movieID VARCHAR(255) FOREIGN KEY REFERENCES Movie(movieID),
	quantity INTEGER
)
