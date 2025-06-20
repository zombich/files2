--task1
INSERT INTO BOOK(Title,AuthorId)
VALUES
('книга1','3'),
('книга2','1');

--task2
DELETE
FROM Customer
WHERE Phone IS NULL;

--task3
UPDATE Book
SET Price-=100
WHERE Title LIKE '%Сказки%';

--task4
SELECT Book.Title, Book.Price, Book.PublicationYear, Author.[Name], Author.Surname
INTO Prose
FROM Book
	JOIN Author ON Book.AuthorId = Author.AuthorId
WHERE Book.Genre ='проза';

--task5
DELETE 
FROM [Order]
WHERE OrderId NOT IN (SELECT DISTINCT OrderId
					  FROM OrderedBook);

--task6
UPDATE Book
SET Price += 100
FROM Book
	JOIN Author ON Book.AuthorId = Author.AuthorId
WHERE Author.Country='Россия';

--task7
UPDATE Book 
CASE Book.Genre 
WHEN 'проза' THEN Book.Price = Book.Price * 1.1
WHEN 'поэзия' THEN Book.Price += 100
ELSE Book.Price
END
