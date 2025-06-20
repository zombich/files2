INSERT INTO Game(title,price)
VALUES
('metal gear',40),
('mario',80)

INSERT INTO games(title,publishedYear)
SELECT title, year
FROM movies;

INSERT INTO customer(fullName,[address])
SELECT userName, [address]
FROM [user]
WHERE position IS NULL;

SELECT BookId AS Id, Title
INTO CheapBook
FROM BOOK
WHERE Price < 1000;


