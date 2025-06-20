--task1
UPDATE Book
SET Price = ROUND(Price,-1);

--task2
SELECT        YEAR(OrderDatetime) AS Year, MONTH(OrderDatetime) AS Month, COUNT(*) AS Count
FROM            [Order]
GROUP BY MONTH(OrderDatetime), YEAR(OrderDatetime)
ORDER BY Year DESC, Month DESC;

--task3
UPDATE Book
SET Price = Book.Price * 0.9;

--task4
SELECT CustomerId, CONCAT(UPPER(Surname),' ',UPPER(SUBSTRING([NAME],1,1)),'.') AS FullName
FROM Customer;

--task5


--task6


--task7


--task8


--task9


--task10