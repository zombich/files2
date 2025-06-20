--ALTER TABLE Game
--ADD Rating decimal(2,1) DEFAULT 5 NULL 

--ALTER TABLE Game
--ALTER COLUMN Rating decimal(3,1) NULL 

--ALTER TABLE Game
--DROP COLUMN Rating

--ALTER TABLE Game
--ADD CONSTRAINT CK_Price
--CHECK (price > 0 AND price < 9000)

--ALTER TABLE Game
--ADD CONSTRAINT DF_Category
--DEFAULT 'RPG' FOR Category