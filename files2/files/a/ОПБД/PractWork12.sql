--task1
SELECT *
FROM Book;

--task2
SELECT Name + ' ' + Surname AS [������� ���]
FROM Author;

--task3
SELECT DISTINCT Country
FROM Author;

--task4
SELECT BookId
	, Title
	, Price * 0.95 AS [���� �� �������]
FROM Book
ORDER BY Price DESC, Title;

--task5
SELECT AuthorId
	, Title
	, COUNT(*) AS ����������
FROM Book
GROUP BY AuthorId, Title;

--task6
SELECT COUNT(*) AS ����������
	, MIN(Price) AS �����������
	, MAX(Price) AS ������������
	, AVG(Price) AS �������
FROM Book;

--task7
SELECT Genre AS ����
	, MAX(Price) AS ������������
	, MIN(Price) AS �����������
	, COUNT(*) AS ����������
FROM Book
GROUP BY Genre;