--task1
SELECT Book.BookId,
		Book.Title,
		Book.Price,
		Author.[Name],
		Author.Surname
FROM Book JOIN
	Author ON Book.AuthorId = Author.AuthorId;

--task2
SELECT OrderedBook.OrderId,
		Book.BookId,
		Book.Title,
		Author.Surname,
		Author.[Name],
		Book.Price,
		OrderedBook.Quantity,
		Book.Price * OrderedBook.Quantity AS Cost
FROM [OrderedBook] INNER JOIN
	Book ON OrderedBook.BookId = Book.BookId INNER JOIN
	Author ON Book.AuthorId = Author.AuthorId;

--task3
SELECT OrderedBook.OrderId,
		[Order].OrderDatetime,
		SUM(Book.Price * OrderedBook.Quantity) AS Cost
FROM [Order] INNER JOIN
	OrderedBook ON [Order].OrderId = OrderedBook.OrderId INNER JOIN
	Book ON OrderedBook.BookId = Book.BookId
GROUP BY OrderedBook.OrderId,
		[Order].OrderDatetime
ORDER BY [Order].OrderDatetime DESC;

--task4
SELECT Customer.CustomerId,
		Customer.Login,
		COUNT([Order].OrderId) AS OrdersCount
FROM Customer LEFT JOIN
	[Order] ON Customer.CustomerId = [Order].CustomerId
GROUP BY Customer.CustomerId,
		Customer.[Login];

--task5
SELECT *
FROM [Order] 
WHERE OrderId NOT IN (SELECT DISTINCT OrderId 
					FROM OrderedBook);

--task6
SELECT *
FROM Customer 
WHERE CustomerId IN (SELECT DISTINCT CustomerId 
					FROM [Order]);

--task7
SELECT [Name], Surname, 'Покупатель' AS [Type]
FROM Customer
UNION
SELECT [Name], Surname, 'Автор' AS [Type]
FROM Author;