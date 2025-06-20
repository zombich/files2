SELECT        Id, Title AS ��������, Price AS ����, Price * 0.2 AS ���
FROM            Game
WHERE        (Price < 50) AND (Price > 20)
ORDER BY ��������

SELECT r.Id, g.Title, r.Comment, r.PublicationDate
FROM Game AS g RIGHT JOIN
	Review AS r ON g.Id = r.GameId

SELECT        Game.Title, COUNT(Review.Id) AS CommentsCount, Game.Price
FROM            Review RIGHT OUTER JOIN
                         Game ON Review.GameId = Game.Id
GROUP BY Game.Title, Game.Price
HAVING        (COUNT(Review.Id) = 0)