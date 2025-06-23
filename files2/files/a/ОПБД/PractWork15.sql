--task1
UPDATE Book
SET Price = ROUND(Price,-1);

--task2
SELECT YEAR(OrderDatetime) AS Year, 
		MONTH(OrderDatetime) AS Month,
		COUNT(*) AS Count
FROM [Order]
GROUP BY MONTH(OrderDatetime), 
		YEAR(OrderDatetime)
ORDER BY Year DESC, Month DESC;

--task3

--task4
SELECT CustomerId, 
CONCAT(UPPER(Surname),' ',UPPER(SUBSTRING([NAME],1,1)),'.') AS FullName
FROM Customer;

--task5
UPDATE Customer
SET [Login]= REPLACE(TRIM([Login]),' ','_');

--task6
SELECT CustomerId, 
		[Login], 
		Surname, 
		[Name], 
		NULLIF([Address], ''), 
		ISNULL(Phone, '-')
FROM Customer;

--task7
SELECT Author.Name, STRING_AGG(Book.Title, ' ') WITHIN GROUP (ORDER BY Book.Title)
FROM Author
INNER JOIN (SELECT DISTINCT AuthorId, 
			Title
FROM Book) Book
ON Author.AuthorId = Book.AuthorId
GROUP BY Author.Name
ORDER BY STRING_AGG(Book.Title, ' ');

--task8
SELECT OrderedBook.OrderId, 
		STRING_AGG(Book.Title, ' '), 
		Author.Name
FROM Book JOIN
OrderedBook ON Book.BookId = OrderedBook.BookId JOIN
Author ON Book.AuthorId = Author.AuthorId
GROUP BY OrderedBook.OrderId, Author.Name;

--task9
SELECT ROW_NUMBER() OVER(ORDER BY Title) AS Number, *
FROM Book
ORDER BY Title;


--task10
SELECT ROW_NUMBER() OVER(PARTITION BY Genre ORDER BY Genre) AS Number, Title, Genre
FROM Book
ORDER BY Genre;
