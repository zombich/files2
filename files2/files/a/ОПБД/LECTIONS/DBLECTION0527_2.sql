UPDATE Game
SET Price+=0.01



select * 
from game

UPDATE Game
SET Price = CASE PublicationYear
			WHEN 2020 THEN 2000
			WHEN 2015 THEN 0
			ELSE Price -- ��� ���� ����� NULL
			END

IF EXISTS(select * 
from game
WHERE Title='Cyberpunk 2077')
PRINT find

IF EXISTS(select * 
from game
WHERE Title='Cyberpunk 2077')
UPDATE Game
SET Price=1000
WHERE Title='Cyberpunk 2077'
ELSE
	INSERT INTO Game(title,price)
	VALUES('Cyberpunk 2077',1000)

	IF EXISTS(select * 
from game
WHERE Title='Cyberpunk 2077')
UPDATE Game
SET Price=1000,PublicationYear=2025
WHERE Title='Cyberpunk 2077'
ELSE
	INSERT INTO Game(title,price,PublicationYear)
	VALUES('Cyberpunk 2077',1000,2025)

	DELETE
	FROM �������
	WHERE ������� ������ ��������� ����� -- ������������� �� ��� ���� ������ ��� ������

	DELETE GameDescription IS NULL

