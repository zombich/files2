--task1
SELECT *
FROM Book
WHERE (Genre = N'проза') AND (Price > 500) AND (Price < 1000);

--task2
SELECT [Name],
	Surname,
	Phone
FROM Customer
WHERE Phone IS NOT NULL;

--task3
SELECT *
FROM Book
WHERE Title LIKE '%книга%';

--task4
SELECT Title
FROM Book
WHERE Title LIKE 'с%';

--task5
SELECT Country,
		COUNT(*) AS AuthorsCount
FROM Author
GROUP BY Country
HAVING COUNT(*) > 1;

--task6
SELECT OrderId,
	SUM(Quantity) AS Quanity
FROM OrderedBook
GROUP BY OrderId
HAVING SUM(OrderedBook.Quantity) > 5;

--task7
SELECT AuthorId
	, Title
	, COUNT(*) AS Count
FROM Book
GROUP BY AuthorId, Title
HAVING COUNT(*) > 1;