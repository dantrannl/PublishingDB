CREATE DATABASE Publishing2;
USE Publishing2;

INSERT INTO Author (aID, aName, age, nationality) VALUES
(1, 'Alice Walker', 45, 'USA'),
(2, 'Bob Smith', 30, 'UK'),
(3, 'Cathy Young', 60, 'Canada'),
(4, 'David Jones', 50, 'Australia'),
(5, 'Eleanor Rigby', 35, 'Ireland'),
(6, 'Frank Herbert', 55, 'USA'),
(7, 'Grace Hopper', 28, 'Germany'),
(8, 'Hank Green', 24, 'USA'),
(9, 'Isabel Allende', 45, 'Chile'),
(10, 'John Grisham', 50, 'USA'),
(11, 'Kate Atkinson', 65, 'UK'),
(12, 'Leo Tolstoy', 22, 'Russia'),
(13, 'Margaret Atwood', 83, 'Canada'),
(14, 'Neil Gaiman', 62, 'UK'),
(15, 'Octavia Butler', 58, 'USA'),
(16, 'Philip K. Dick', 54, 'USA'),
(17, 'Quentin Blake', 88, 'UK'),
(18, 'Ray Bradbury', 60, 'USA'),
(19, 'Sophia Loren', 35, 'Italy'),
(20, 'Toni Morrison', 70, 'USA'),
-- Authors with no books or publishers
(21, 'Nguyen Nhat Anh', 27, 'Vietnam'),
(22, 'Calum Price', 24, 'UK');

INSERT INTO Publisher (pID, pName, address) VALUES
(1, 'Penguin Books', 'New York, USA'),
(2, 'HarperCollins', 'London, UK'),
(3, 'Sci-Fi Masters', 'Los Angeles, USA'),
(4, 'Fantasy Worlds', 'Toronto, Canada'),
(5, 'Hachette', 'Paris, France'),
(6, 'Random House', 'Berlin, Germany'),
(7, 'Macmillan', 'Melbourne, Australia'),
(8, 'Simon & Schuster', 'Dublin, Ireland'),
(9, 'Bloomsbury', 'Edinburgh, UK'),
(10, 'Vintage Classics', 'Moscow, Russia'),
-- Publishers with no books or authors
(11, 'Penguin Books', 'Boston, USA'),
(12, 'Collins', 'London, UK');

INSERT INTO PublishesWith (aID, pID, since) VALUES
(1, 1, '2005-01-01'),
(2, 2, '2010-06-15'),
(3, 3, '2000-03-20'),
(4, 4, '2015-11-05'),
(5, 5, '2018-07-10'),
(6, 6, '2008-09-25'),
(7, 7, '2013-02-17'),
(8, 8, '2016-12-01'),
(9, 9, '2019-04-22'),
(10, 10, '2012-10-30'),
(11, 1, '2020-05-05'),
(12, 3, '2001-11-11'),
(13, 4, '1998-06-06'),
(14, 6, '2014-08-08'),
(15, 8, '2009-03-03'),
(16, 9, '2017-07-07'),
(17, 5, '2011-01-01'),
(18, 7, '2006-04-04'),
(19, 2, '2015-09-09'),
(20, 10, '2021-12-12'),
-- Publisher with no authors under 30
(7, 8, '2013-02-17'), (8, 7, '2013-02-17'), (21, 7, '2013-02-17'), (12, 7, '2013-02-17');

INSERT INTO Book (bID, title, genre, bFormat) VALUES
(1, 'Dune', 'sci-fi', 'hardback'),
(2, '1984', 'dystopian', 'paperback'),
(3, 'Harry Potter', 'fantasy', 'digital'),
(4, 'The Hobbit', 'fantasy', 'hardback'),
(5, 'The Road', 'literary fiction', 'softback'),
(6, 'To Kill a Mockingbird', 'literary fiction', 'hardback'),
(7, 'Brave New World', 'sci-fi', 'paperback'),
(8, 'The Martian', 'sci-fi', 'digital'),
(9, 'Game of Thrones', 'fantasy', 'mass market'),
(10, 'Pride and Prejudice', 'romance', 'softback'),
(11, 'Dracula', 'horror', 'hardback'),
(12, 'The Shining', 'horror', 'paperback'),
(13, 'It', 'horror', 'digital'),
(14, 'Good Omens', 'fantasy', 'hardback'),
(15, 'American Gods', 'fantasy', 'digital'),
(16, 'The Great Gatsby', 'literary fiction', 'softback'),
(17, 'War and Peace', 'historical', 'hardback'),
(18, 'Frankenstein', 'horror', 'paperback'),
(19, 'The Catcher in the Rye', 'literary fiction', 'softback'),
(20, 'Slaughterhouse-Five', 'sci-fi', 'digital'),
(21, 'Foundation', 'sci-fi', 'hardback'),
(22, 'The Handmaid’s Tale', 'dystopian', 'paperback'),
(23, 'Neuromancer', 'sci-fi', 'digital'),
(24, 'The Name of the Wind', 'fantasy', 'hardback'),
(25, 'The Witcher', 'fantasy', 'digital');

INSERT INTO AuthoredBy (aID, bID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20);

DELETE FROM Sells;
INSERT INTO Sells (pID, bID, copiesAvailable, copiesSold) VALUES
-- Publishers 1 and 2 sell all "fantasy" books
(1, 3, 100, 50),  -- Harry Potter (fantasy)
(1, 4, 80, 40),   -- The Hobbit (fantasy)
(1, 9, 110, 90),  -- Game of Thrones (fantasy)
(1, 14, 75, 35),  -- Good Omens (fantasy)
(1, 15, 85, 45),  -- American Gods (fantasy)
(1, 24, 90, 80),  -- The Name of the Wind (fantasy)
(1, 25, 120, 100),-- The Witcher (fantasy)

(2, 3, 120, 60),  -- Harry Potter (fantasy)
(2, 4, 90, 70),   -- The Hobbit (fantasy)
(2, 9, 100, 80),  -- Game of Thrones (fantasy)
(2, 14, 80, 40),  -- Good Omens (fantasy)
(2, 15, 70, 50),  -- American Gods (fantasy)
(2, 24, 95, 85),  -- The Name of the Wind (fantasy)
(2, 25, 110, 90), -- The Witcher (fantasy)

-- Publishers that all sci-fi books
(1, 1, 100, 50),
(1, 7, 80, 40),  
(1, 8, 110, 90), 
(1, 20, 75, 35),  
(1, 21, 85, 45),
(1, 23, 90, 80),  

(2, 1, 120, 60),  
(2, 7, 90, 70),   
(2, 8, 100, 80),  
(2, 20, 80, 40),  
(2, 21, 70, 50),  
(2, 22, 95, 85),  

-- Publishers 3 and 4 sell all "literary fiction" books
(3, 5, 60, 30),   -- The Road (literary fiction)
(3, 6, 50, 20),   -- To Kill a Mockingbird (literary fiction)
(3, 16, 70, 40),  -- The Great Gatsby (literary fiction)
(3, 19, 90, 50),  -- The Catcher in the Rye (literary fiction)

(4, 5, 75, 50),   -- The Road (literary fiction)
(4, 6, 85, 60),   -- To Kill a Mockingbird (literary fiction)
(4, 16, 65, 45),  -- The Great Gatsby (literary fiction)
(4, 19, 100, 80), -- The Catcher in the Rye (literary fiction)

-- Other books for testing various relationships
(5, 1, 70, 40),   -- Dune (sci-fi)
(5, 7, 85, 55),   -- Brave New World (sci-fi)
(5, 8, 65, 45),   -- The Martian (sci-fi)
(6, 11, 95, 70),  -- Dracula (horror)
(6, 12, 90, 80),  -- The Shining (horror)
(7, 13, 120, 100),-- It (horror)
(7, 18, 110, 90), -- Frankenstein (horror)
(8, 21, 75, 50),  -- Foundation (sci-fi)
(8, 22, 85, 60),  -- The Handmaid's Tale (dystopian)
(9, 23, 65, 45),  -- Neuromancer (sci-fi)
(10, 10, 60, 20), -- Pride and Prejudice (romance)
(10, 17, 100, 90);-- War and Peace (historical)

INSERT INTO Sells (pID, bID, copiesAvailable, copiesSold) VALUES
(9, 14, 80, 40),  -- Good Omens (fantasy)
(8, 15, 70, 50);  -- American Gods (fantasy)

INSERT INTO Sells (pID, bID, copiesAvailable, copiesSold) VALUES
(9, 1, 8, 40), (9, 2, 80, 200), (9, 3, 80, 40), (9, 5, 38, 40),
(9, 10, 180, 140), (10, 1, 80, 40), (10, 2, 80, 40), (10, 3, 80, 40),
(10, 5, 820, 140);

INSERT INTO Sells (pID, bID, copiesAvailable, copiesSold) VALUES
(11, 1, 80, 0), (11, 2, 80, 40), (11, 3, 80, 40),(11, 5, 820, 0);

-- Update the age of Bob Smith (aID = 2)
UPDATE Author
SET age = 29
WHERE aID = 3;

-- Update the age of Cathy Young (aID = 3)
UPDATE Author
SET age = 28
WHERE aID = 12;

-- QUESTION 1
CREATE TABLE Author(
	aID 			VARCHAR(5) NOT NULL,
    aName 			VARCHAR(300) NOT NULL,
    age				SMALLINT,
    nationality 	VARCHAR(60),
    PRIMARY KEY(aID)
);

CREATE TABLE Publisher(
	pID				VARCHAR(5) NOT NULL,
    pName			VARCHAR(50) NOT NULL,
    address			VARCHAR(50),
    PRIMARY KEY(pID)
);

CREATE TABLE PublishesWith(
	aID				VARCHAR(5) NOT NULL,
    pID				VARCHAR(5) NOT NULL,
    since			DATE,
    PRIMARY KEY(aID, pID),
    FOREIGN KEY(aID) REFERENCES Author(aID)
    ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY(pID) REFERENCES Publisher(pID)
    ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Book(
	bID				VARCHAR(5) NOT NULL,
    title			VARCHAR(70) NOT NULL,
    genre			VARCHAR(50),
    bFormat			VARCHAR(20),
    PRIMARY KEY(bID)
);

CREATE TABLE AuthoredBy(
	aID				VARCHAR(5) NOT NULL,
    bID				VARCHAR(5) NOT NULL,
    PRIMARY KEY(aID,bID),
    FOREIGN KEY(aID) REFERENCES Author(aID)
    ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY(bID) REFERENCES Book(bID)
    ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Sells(
	pID					VARCHAR(5) NOT NULL,
    bID					VARCHAR(5) NOT NULL,
    copiesAvailable		INT DEFAULT 0,
    copiesSold			INT DEFAULT 0,
    PRIMARY KEY(pID, bID),
    FOREIGN KEY(pID) REFERENCES Publisher(pID)
    ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY(bID) REFERENCES Book(bID)
    ON DELETE CASCADE ON UPDATE CASCADE
);

-- QUESTION 2

-- Find the names of publishers that sell 'hardback' books
SELECT P.pName
FROM Publisher P
WHERE EXISTS(
		SELECT S.pID
        FROM Sells S NATURAL JOIN Book B
		WHERE B.bFormat = "hardback"
        AND S.pID = P.pID
);

-- Find the names of publishers that sell both “fantasy” books and “sci-fi” books
SELECT P.pName
FROM Publisher P
WHERE EXISTS(
		SELECT S1.pID
        FROM Sells S1 NATURAL JOIN Book B1
        WHERE B1.genre = 'sci-fi'
        AND P.pID = S1.pID
        AND EXISTS(
				SELECT S2.pID
                FROM Sells S2 NATURAL JOIN Book B2
				WHERE B2.genre = 'fantasy'
				AND P.pID = S2.pID));

-- Find the names of publishers where one can find all “fantasy” books (i.e. copies of all those books should be available in stock). 
SELECT P.pName
FROM Publisher P
WHERE NOT EXISTS(
		SELECT B.bID
		FROM Book B
		WHERE B.genre = 'fantasy'
		AND NOT EXISTS(
				SELECT S.pID
				FROM Sells S
				WHERE S.pID = P.pID 
				AND S.bID = B.bID
				AND S.copiesAvailable > 0));

-- Find the ids of publishers which sell “literary fiction” books, and which do not have any authors older than 30.
SELECT P.pID
FROM Publisher P
NATURAL JOIN PublishesWith PW
NATURAL JOIN Author A
WHERE A.age < 30 
AND EXISTS(
		SELECT S.bID
        FROM Sells S NATURAL JOIN Book B
        WHERE B.genre = 'literary fiction' 
        AND S.pID = P.pID
);

-- For each publisher report the publisherID and the age of the oldest authors who publish with it.
SELECT P.pID, MAX(A.age)
FROM Publisher P
NATURAL JOIN PublishesWith PW
NATURAL JOIN Author A
GROUP BY P.pID;

-- Find the names of authors who are older than at least one other author who publishes with the publisher “Sci-Fi Masters”.
SELECT A1.aName
FROM Author A1
NATURAL JOIN PublishesWith PW
NATURAL JOIN Publisher P
WHERE P.pName = 'Sci-Fi Masters'
AND A1.age > (
		SELECT MIN(A2.age)
        FROM Author A2 NATURAL JOIN PublishesWith PW2
		WHERE PW2.pID = P.pID AND A2.aID != A1.aID
);

-- Find the names of authors who publish with publishers which have sold at least five genres of books.
SELECT A.aName
FROM Author A
NATURAL JOIN PublishesWith PW
NATURAL JOIN Publisher P
WHERE EXISTS(
		SELECT COUNT(DISTINCT B.genre)
		FROM Book B NATURAL JOIN Sells S
		WHERE S.copiesSold > 0
        AND P.pID = S.pID
		GROUP BY S.pID
		HAVING COUNT(DISTINCT B.genre) >= 5);


