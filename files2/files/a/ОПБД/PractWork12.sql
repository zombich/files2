--task1
SELECT *
FROM Book;

--task2
SELECT Name + ' ' + Surname AS [Фамилия Имя]
FROM Author;

--task3
SELECT DISTINCT Country
FROM Author;

--task4
SELECT BookId
	, Title
	, Price * 0.95 AS [Цена со скидкой]
FROM Book
ORDER BY Price DESC, Title;

--task5
SELECT AuthorId
	, Title
	, COUNT(*) AS Количество
FROM Book
GROUP BY AuthorId, Title;

--task6
SELECT COUNT(*) AS Количество
	, MIN(Price) AS Минимальная
	, MAX(Price) AS Максимальная
	, AVG(Price) AS Средняя
FROM Book;

--task7
SELECT Genre AS Жанр
	, MAX(Price) AS Максимальная
	, MIN(Price) AS Минимальная
	, COUNT(*) AS Количество
FROM Book
GROUP BY Genre;